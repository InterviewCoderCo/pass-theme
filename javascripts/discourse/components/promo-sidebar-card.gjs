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
          <div class="promo-sidebar-card__logo"></div>
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
