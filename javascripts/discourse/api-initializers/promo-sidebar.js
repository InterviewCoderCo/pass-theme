import { apiInitializer } from "discourse/lib/api";
import PromoSidebarCard from "../components/promo-sidebar-card";

export default apiInitializer("1.0.0", (api) => {
  api.renderInOutlet("above-main-container", PromoSidebarCard);
});
