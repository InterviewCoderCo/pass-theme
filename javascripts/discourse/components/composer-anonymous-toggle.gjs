import Component from "@glimmer/component";
import { tracked } from "@glimmer/tracking";
import { action } from "@ember/object";
import { service } from "@ember/service";
import { ajax } from "discourse/lib/ajax";
import { userPath } from "discourse/lib/url";
import DButton from "discourse/components/d-button";

export default class ComposerAnonymousToggle extends Component {
  @service currentUser;
  @service siteSettings;
  @service dialog;

  @tracked isToggling = false;

  get canPostAnonymously() {
    return this.currentUser?.can_post_anonymously;
  }

  get isAnonymous() {
    return this.currentUser?.is_anonymous;
  }

  get buttonLabel() {
    return this.isAnonymous ? "Posting Anonymously ✓" : "Post Anonymously";
  }

  get buttonIcon() {
    return "user-secret";
  }

  get buttonClass() {
    let classes = "btn btn-default composer-anonymous-toggle";
    if (this.isAnonymous) {
      classes += " --is-anonymous";
    }
    return classes;
  }

  get buttonTitle() {
    return this.isAnonymous 
      ? "You're posting anonymously. Click to switch back." 
      : "Click to switch to anonymous mode";
  }

  @action
  async toggleAnonymousMode() {
    if (this.isToggling) return;

    this.isToggling = true;

    try {
      if (this.isAnonymous) {
        this.dialog.confirm({
          title: "Switch Back to Regular Account?",
          message: "You'll return to posting as your regular account.",
          didConfirm: async () => {
            await this.performToggle();
          },
        });
      } else {
        this.dialog.confirm({
          title: "Switch to Anonymous Mode?",
          message: "You'll be switched to your anonymous account. Your post will appear with a random anonymous username. You can switch back anytime.",
          didConfirm: async () => {
            await this.performToggle();
          },
        });
      }
    } finally {
      this.isToggling = false;
    }
  }

  async performToggle() {
    try {
      await ajax(userPath("toggle-anon"), { type: "POST" });
      window.location.reload();
    } catch (error) {
      this.dialog.alert({
        title: "Unable to Switch",
        message: "There was an error switching your account mode. Please try again.",
      });
    }
  }

  <template>
    {{#if this.canPostAnonymously}}
      <DButton
        @action={{this.toggleAnonymousMode}}
        @icon={{this.buttonIcon}}
        @translatedLabel={{this.buttonLabel}}
        @disabled={{this.isToggling}}
        @translatedTitle={{this.buttonTitle}}
        class={{this.buttonClass}}
      />
    {{/if}}
  </template>
}
