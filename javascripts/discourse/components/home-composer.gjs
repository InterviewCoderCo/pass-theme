import Component from "@glimmer/component";
import { action } from "@ember/object";
import { service } from "@ember/service";
import { on } from "@ember/modifier";
import icon from "discourse/helpers/d-icon";
import concatClass from "discourse/helpers/concat-class";

export default class HomeComposer extends Component {
  @service currentUser;
  @service composer;
  @service router;

  get avatarUrl() {
    if (!this.currentUser) return "";
    // avatar_template is like "/user_avatar/domain/{username}/{size}/123_2.png"
    // We need to replace {size} with actual size
    return this.currentUser.avatar_template?.replace("{size}", "40") || "";
  }

  get displayName() {
    return this.currentUser?.name || this.currentUser?.username || "Your Name";
  }

  @action
  openComposer() {
    this.composer.open({
      action: "createTopic",
      draftKey: "new_topic",
    });
  }

  <template>
    {{#if this.currentUser}}
      <div class="home-composer-wrapper">
        <div class="home-composer">
          {{! Header with user info }}
          <div class="home-composer__header">
            <div class="home-composer__user">
              <img
                src={{this.avatarUrl}}
                alt={{this.currentUser.username}}
                class="home-composer__avatar"
                width="40"
                height="40"
              />
              <div class="home-composer__user-info">
                <span class="home-composer__name">{{this.displayName}}</span>
                <span class="home-composer__username">@{{this.currentUser.username}}</span>
              </div>
            </div>
            <span class="home-composer__draft-badge">Draft</span>
          </div>

          {{! Text input area }}
          <div
            class="home-composer__input"
            role="button"
            {{on "click" this.openComposer}}
          >
            <span class="home-composer__placeholder">
              Type here. Use the toolbar or Markdown for formatting. Drag or paste images.
            </span>
          </div>

          {{! Footer with actions }}
          <div class="home-composer__footer">
            <div class="home-composer__options">
              <button
                type="button"
                class="home-composer__category-btn"
                {{on "click" this.openComposer}}
              >
                <span class="category-badge" style="background-color: #f7941d;"></span>
                General
                {{icon "chevron-down"}}
              </button>

              <button
                type="button"
                class="home-composer__tags-btn"
                {{on "click" this.openComposer}}
              >
                Optional tags
                {{icon "plus"}}
              </button>
            </div>

            <div class="home-composer__actions">
              <button
                type="button"
                class="home-composer__template-btn"
                {{on "click" this.openComposer}}
              >
                {{icon "file-alt"}}
                Template
              </button>

              <button
                type="button"
                class="home-composer__express-btn"
                {{on "click" this.openComposer}}
              >
                {{icon "bolt"}}
                Express
              </button>

              <button
                type="button"
                class="home-composer__submit-btn"
                {{on "click" this.openComposer}}
              >
                Create Topic
                {{icon "plus"}}
              </button>
            </div>
          </div>
        </div>
      </div>
    {{/if}}
  </template>
}
