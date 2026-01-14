import { apiInitializer } from "discourse/lib/api";

export default apiInitializer((api) => {
  // SVG icons in svg-icons/ folder are auto-registered by Discourse
  // Replace the default "layer-group" icon used for Topics with our custom one
  api.replaceIcon("layer-group", "custom-topics");
});
