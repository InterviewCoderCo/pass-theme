import { apiInitializer } from "discourse/lib/api";
import PromoSidebarCard from "../components/promo-sidebar-card";

export default apiInitializer((api) => {
  // Render outside main content for right-side positioning
  api.renderInOutlet("above-main-container", PromoSidebarCard);
});
