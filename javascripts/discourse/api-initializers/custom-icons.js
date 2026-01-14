import { apiInitializer } from "discourse/lib/api";

export default apiInitializer((api) => {
  // Register custom SVG icons
  api.registerSvgIcon("custom-topics");

  // Replace the default "layer-group" icon used for Topics with our custom one
  api.replaceIcon("layer-group", "custom-topics");
});
