import { apiInitializer } from "discourse/lib/api";

export default apiInitializer((api) => {
  // Replace sidebar icons with custom ones from icons-sprite.svg
  api.replaceIcon("layer-group", "custom-topics");   // Topics
  api.replaceIcon("envelope", "custom-messages");    // Messages
});
