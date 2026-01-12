import { apiInitializer } from "discourse/lib/api";

export default apiInitializer("1.0", (api) => {
  // Add promo sidebar to the page
  api.onPageChange(() => {
    // Only add on main topic list pages
    const mainOutlet = document.querySelector("#main-outlet-wrapper");
    if (!mainOutlet) return;

    // Check if promo sidebar already exists
    if (document.querySelector(".promo-sidebar")) return;

    // Don't show on admin, user pages, etc.
    const body = document.body;
    if (body.classList.contains("admin-page") ||
        body.classList.contains("user-page") ||
        body.classList.contains("search-page") ||
        body.classList.contains("static-faq") ||
        body.classList.contains("static-tos") ||
        body.classList.contains("static-privacy")) {
      return;
    }

    // Create promo sidebar
    const promoSidebar = document.createElement("aside");
    promoSidebar.className = "promo-sidebar";
    promoSidebar.innerHTML = `
      <div class="promo-label">Get 10% off on</div>
      <div class="promo-card">
        <div class="promo-icon">🎯</div>
        <div class="promo-title">Pass Any Interview</div>
        <div class="promo-feature">
          <div class="feature-title">✓ Undetectable Assistant</div>
          <div class="feature-desc">Listening and seeing all type of questions</div>
        </div>
        <div class="promo-feature">
          <div class="feature-title">✓ Real-time answers</div>
          <div class="feature-desc">Hours</div>
        </div>
        <a href="/pricing" class="promo-cta">⚡ Get Lifetime package</a>
      </div>
    `;

    // Append to main outlet wrapper
    mainOutlet.appendChild(promoSidebar);
    body.classList.add("has-promo-sidebar");
  });
});
