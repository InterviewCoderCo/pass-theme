import { apiInitializer } from "discourse/lib/api";
import PromoSidebarCard from "../components/promo-sidebar-card";

export default apiInitializer((api) => {
  // Render in the topic list area for right-side positioning
  api.renderInOutlet("before-topic-list-body", PromoSidebarCard);
});
