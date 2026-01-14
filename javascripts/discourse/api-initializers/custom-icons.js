import { apiInitializer } from "discourse/lib/api";

export default apiInitializer((api) => {
  // Replace sidebar icons with custom ones from icons-sprite.svg
  api.replaceIcon("layer-group", "custom-topics");   // Topics
  api.replaceIcon("inbox", "custom-messages");       // My Messages
  api.replaceIcon("user", "custom-my-posts");        // My Posts

  // Replace topic footer button icons with outline versions
  api.replaceIcon("bookmark", "far-bookmark");       // Bookmark
  api.replaceIcon("flag", "far-flag");               // Flag
  api.replaceIcon("bell", "far-bell");               // Tracking/Notifications
});
