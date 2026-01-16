import { apiInitializer } from "discourse/lib/api";

export default apiInitializer((api) => {
  // Replace sidebar icons with custom filled ones
  api.replaceIcon("layer-group", "custom-topics");   // Topics
  api.replaceIcon("inbox", "custom-messages");       // My Messages
  api.replaceIcon("user", "custom-my-posts");        // My Posts
  api.replaceIcon("flag", "custom-review");          // Review
  api.replaceIcon("wrench", "custom-admin");         // Admin
  api.replaceIcon("paper-plane", "custom-invite");   // Invite

  // Replace topic footer button icons with outline versions
  api.replaceIcon("bookmark", "far-bookmark");       // Bookmark
  api.replaceIcon("bell", "far-bell");               // Tracking/Notifications
});
