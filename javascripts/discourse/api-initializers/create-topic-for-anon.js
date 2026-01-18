import { apiInitializer } from "discourse/lib/api";

export default apiInitializer("0.8", (api) => {
  const currentUser = api.getCurrentUser();

  // Only for anonymous users
  if (currentUser) {
    return;
  }

  // Add a "New Topic" button for anonymous users that redirects to login
  api.onPageChange(() => {
    const navigationControls = document.querySelector(".navigation-controls");
    if (!navigationControls) {
      return;
    }

    // Check if we already added the button
    if (navigationControls.querySelector(".anon-create-topic")) {
      return;
    }

    // Create the button
    const button = document.createElement("button");
    button.className = "btn btn-icon-text btn-default anon-create-topic";
    button.id = "create-topic";
    button.innerHTML = `
      <svg class="fa d-icon d-icon-plus svg-icon svg-string" xmlns="http://www.w3.org/2000/svg"><use href="#plus"></use></svg>
      <span class="d-button-label">New Topic</span>
    `;

    button.addEventListener("click", (e) => {
      e.preventDefault();
      const router = api.container.lookup("service:router");
      router.transitionTo("login");
    });

    navigationControls.prepend(button);
  });
});
