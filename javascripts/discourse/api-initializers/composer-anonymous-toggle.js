import { apiInitializer } from "discourse/lib/api";
import ComposerAnonymousToggle from "../components/composer-anonymous-toggle";

export default apiInitializer((api) => {
  // Render the anonymous toggle button after title/category/tags row
  api.renderInOutlet("after-title-and-category", ComposerAnonymousToggle);
});
