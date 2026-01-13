import { apiInitializer } from "discourse/lib/api";
import PromoSidebarCard from "../components/promo-sidebar-card";

export default apiInitializer((api) => {
  api.renderInOutlet("above-main-container", PromoSidebarCard);
});
