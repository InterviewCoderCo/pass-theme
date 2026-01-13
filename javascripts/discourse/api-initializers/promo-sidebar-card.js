import { apiInitializer } from "discourse/lib/api";
import PromoSidebarCard from "../components/promo-sidebar-card";

export default apiInitializer((api) => {
  // Render in sidebar for proper responsive behavior
  api.renderInOutlet("after-sidebar-sections", PromoSidebarCard);
});
