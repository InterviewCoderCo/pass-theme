import { apiInitializer } from "discourse/lib/api";
import PromoSidebarCard from "../components/promo-sidebar-card";

export default apiInitializer((api) => {
  // Render in the left sidebar, after the navigation sections
  api.renderInOutlet("after-sidebar-sections", PromoSidebarCard);
});
