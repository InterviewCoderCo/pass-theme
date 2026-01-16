import Component from "@glimmer/component";
import { service } from "@ember/service";

export default class PromoBanner extends Component {
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
      <div class="promo-banner">
        <div class="promo-banner__content">
          <div class="promo-banner__left">
            <div class="promo-banner__logo"></div>
            <div class="promo-banner__text">
              <span class="promo-banner__title">Pass Any Interview</span>
              <span class="promo-banner__subtitle">Undetectable AI assistant for coding interviews</span>
            </div>
          </div>
          <div class="promo-banner__right">
            <div class="promo-banner__features">
              <span class="promo-banner__feature">
                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                  <path d="M17.94 17.94A10.07 10.07 0 0 1 12 20c-7 0-11-8-11-8a18.45 18.45 0 0 1 5.06-5.94M9.9 4.24A9.12 9.12 0 0 1 12 4c7 0 11 8 11 8a18.5 18.5 0 0 1-2.16 3.19m-6.72-1.07a3 3 0 1 1-4.24-4.24"/>
                  <line x1="1" y1="1" x2="23" y2="23"/>
                </svg>
                Undetectable
              </span>
              <span class="promo-banner__feature">
                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                  <circle cx="12" cy="5" r="3"/>
                  <circle cx="5" cy="19" r="3"/>
                  <circle cx="19" cy="19" r="3"/>
                  <line x1="12" y1="8" x2="5" y2="16"/>
                  <line x1="12" y1="8" x2="19" y2="16"/>
                </svg>
                Real-time AI
              </span>
            </div>
            <div class="promo-banner__badge">10% OFF</div>
            <a href="https://www.interviewcoder.co" target="_blank" rel="noopener" class="promo-banner__cta">
              Get Lifetime Access
              <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"/>
                <polyline points="12 5 19 12 12 19"/>
              </svg>
            </a>
          </div>
        </div>
      </div>
    {{/if}}
  </template>
}
