import Component from "@glimmer/component";
import { service } from "@ember/service";

export default class PromoSidebarCard extends Component {
  @service router;

  get shouldRender() {
    const route = this.router.currentRouteName;
    // Show on discovery pages (latest, top, etc.), tag pages, and tags listing
    return route && (
      route.startsWith("discovery") ||
      route.startsWith("tag") ||
      route.startsWith("tags")
    );
  }

  <template>
    {{#if this.shouldRender}}
      <div class="promo-sidebar-card">
        <div class="promo-sidebar-card__header">
          Get <span class="highlight">10%</span> off on
        </div>
        <div class="promo-sidebar-card__brand">
          <div class="promo-sidebar-card__logo-wrapper">
            {{! Wing logo - golden feathers }}
            <svg width="64" height="64" viewBox="0 0 64 64" fill="none" xmlns="http://www.w3.org/2000/svg">
              <rect width="64" height="64" rx="14" fill="url(#gold-gradient)"/>
              <g transform="translate(12, 14)">
                {{! Wing feathers }}
                <path d="M8 36C8 36 12 28 20 24C28 20 38 18 38 18" stroke="#1E293B" stroke-width="3" stroke-linecap="round"/>
                <path d="M6 30C6 30 12 22 22 18C32 14 40 14 40 14" stroke="#1E293B" stroke-width="3" stroke-linecap="round"/>
                <path d="M6 24C6 24 14 16 26 12C38 8 40 10 40 10" stroke="#1E293B" stroke-width="3" stroke-linecap="round"/>
                <path d="M8 18C8 18 18 10 30 8C40 6 40 6 40 6" stroke="#1E293B" stroke-width="3" stroke-linecap="round"/>
                <path d="M12 12C12 12 22 6 34 4" stroke="#1E293B" stroke-width="3" stroke-linecap="round"/>
              </g>
              <defs>
                <linearGradient id="gold-gradient" x1="0" y1="0" x2="64" y2="64" gradientUnits="userSpaceOnUse">
                  <stop offset="0%" stop-color="#F7D94C"/>
                  <stop offset="50%" stop-color="#E5A81D"/>
                  <stop offset="100%" stop-color="#C69214"/>
                </linearGradient>
              </defs>
            </svg>
          </div>
          <div class="promo-sidebar-card__title">Pass Any Interview</div>
        </div>
        <div class="promo-sidebar-card__features">
          <div class="promo-sidebar-card__feature">
            <div class="promo-sidebar-card__feature-icon">
              {{! Eye with slash - undetectable }}
              <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M17.94 17.94A10.07 10.07 0 0 1 12 20c-7 0-11-8-11-8a18.45 18.45 0 0 1 5.06-5.94M9.9 4.24A9.12 9.12 0 0 1 12 4c7 0 11 8 11 8a18.5 18.5 0 0 1-2.16 3.19m-6.72-1.07a3 3 0 1 1-4.24-4.24"/>
                <line x1="1" y1="1" x2="23" y2="23"/>
              </svg>
            </div>
            <div class="promo-sidebar-card__feature-content">
              <div class="promo-sidebar-card__feature-title">Undetectable Assistant</div>
              <div class="promo-sidebar-card__feature-desc">Listening and seeing all type of questions</div>
            </div>
          </div>
          <div class="promo-sidebar-card__feature">
            <div class="promo-sidebar-card__feature-icon">
              {{! Nodes/connections - real-time }}
              <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <circle cx="12" cy="5" r="3"/>
                <circle cx="5" cy="19" r="3"/>
                <circle cx="19" cy="19" r="3"/>
                <line x1="12" y1="8" x2="5" y2="16"/>
                <line x1="12" y1="8" x2="19" y2="16"/>
              </svg>
            </div>
            <div class="promo-sidebar-card__feature-content">
              <div class="promo-sidebar-card__feature-title">Real-time answers</div>
              <div class="promo-sidebar-card__feature-desc">Instant AI-powered responses</div>
            </div>
          </div>
        </div>
        <a href="https://www.interviewcoder.co" target="_blank" rel="noopener" class="promo-sidebar-card__cta">
          <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor">
            <path d="M13 3L4 14h7v7l9-11h-7V3z"/>
          </svg>
          Get Lifetime package
        </a>
      </div>
    {{/if}}
  </template>
}
