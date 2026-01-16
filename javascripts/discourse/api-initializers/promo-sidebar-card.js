import { apiInitializer } from "discourse/lib/api";
import PromoBanner from "../components/promo-banner";

export default apiInitializer((api) => {
  // Render full-width promo banner directly below header
  api.renderInOutlet("below-site-header", PromoBanner);
});
