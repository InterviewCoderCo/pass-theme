import { apiInitializer } from "discourse/lib/api";
import HeaderNavLinks from "../components/header-nav-links";

export default apiInitializer((api) => {
  // Render custom nav links in header - wrapping the logo outlet to keep logo and add nav
  api.renderInOutlet("home-logo-contents", HeaderNavLinks);
});
