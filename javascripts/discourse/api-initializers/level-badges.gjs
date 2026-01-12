import Component from "@glimmer/component";
import { apiInitializer } from "discourse/lib/api";

export default apiInitializer("1.0", (api) => {
  // Add level badges to usernames based on trust level
  api.renderAfterWrapperOutlet(
    "post-meta-data-poster-name",
    class extends Component {
      static shouldRender(args) {
        // Only render if we have a post with user data
        return args.post?.user?.trust_level !== undefined;
      }

      get level() {
        return this.args.post?.user?.trust_level ?? 0;
      }

      <template>
        <span class="user-level-badge level-{{this.level}}">LVL {{this.level}}</span>
      </template>
    }
  );
});
