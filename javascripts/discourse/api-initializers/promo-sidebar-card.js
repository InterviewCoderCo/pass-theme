import { apiInitializer } from "discourse/lib/api";

const cardHTML = `
  <div class="promo-sidebar-card">
    <div class="promo-sidebar-card__header">
      Get <span class="highlight">10%</span> off on
    </div>
    <div class="promo-sidebar-card__brand">
      <div class="promo-sidebar-card__logo-wrapper">
        <svg width="48" height="48" viewBox="0 0 48 48" fill="none">
          <circle cx="24" cy="24" r="24" fill="#F59E0B"/>
          <path d="M14 34L24 14L34 34H14Z" fill="#1E293B"/>
        </svg>
      </div>
      <div class="promo-sidebar-card__title">Pass Any Interview</div>
    </div>
    <div class="promo-sidebar-card__features">
      <div class="promo-sidebar-card__feature">
        <div class="promo-sidebar-card__feature-icon">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
            <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"/>
            <circle cx="12" cy="12" r="3"/>
          </svg>
        </div>
        <div class="promo-sidebar-card__feature-content">
          <div class="promo-sidebar-card__feature-title">Undetectable Assistant</div>
          <div class="promo-sidebar-card__feature-desc">Listening and seeing all type of questions</div>
        </div>
      </div>
      <div class="promo-sidebar-card__feature">
        <div class="promo-sidebar-card__feature-icon">
          <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
            <circle cx="12" cy="12" r="10"/>
            <polyline points="12,6 12,12 16,14"/>
          </svg>
        </div>
        <div class="promo-sidebar-card__feature-content">
          <div class="promo-sidebar-card__feature-title">Real-time answers</div>
          <div class="promo-sidebar-card__feature-desc">Hours</div>
        </div>
      </div>
    </div>
    <a href="https://www.interviewcoder.co" target="_blank" rel="noopener" class="promo-sidebar-card__cta">
      <svg width="14" height="14" viewBox="0 0 24 24" fill="currentColor">
        <path d="M13 3L4 14h7v7l9-11h-7V3z"/>
      </svg>
      Get Lifetime package
    </a>
  </div>
`;

export default apiInitializer("1.0.0", (api) => {
  api.onPageChange(() => {
    const router = api.container.lookup("service:router");
    const route = router.currentRouteName;
    const isDiscovery = route && route.startsWith("discovery");

    // Remove existing card if any
    const existingCard = document.querySelector(".promo-sidebar-card");
    if (existingCard) {
      existingCard.remove();
    }

    // Only add on discovery pages
    if (!isDiscovery) {
      return;
    }

    // Insert into body
    document.body.insertAdjacentHTML("beforeend", cardHTML);
  });
});
