import { apiInitializer } from "discourse/lib/api";
import HomeComposer from "../components/home-composer";

export default apiInitializer("1.0", (api) => {
  api.renderInOutlet("discovery-above", HomeComposer);
});
