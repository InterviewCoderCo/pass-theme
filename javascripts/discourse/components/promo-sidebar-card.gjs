import Component from "@glimmer/component";
import { service } from "@ember/service";

export default class PromoSidebarCard extends Component {
  @service router;

  get shouldRender() {
    // Only show on discovery pages (topic list)
    return this.router.currentRouteName?.startsWith("discovery");
  }

  <template>
    {{#if this.shouldRender}}
      <div class="promo-sidebar-card">
        <div class="promo-sidebar-card__header">
          Get <span class="highlight">10%</span> off on
        </div>

        <div class="promo-sidebar-card__brand">
          <div class="promo-sidebar-card__logo-wrapper">
            <svg width="40" height="40" viewBox="0 0 40 40" fill="none">
              <circle cx="20" cy="20" r="20" fill="#F59E0B"/>
              <path d="M12 28L20 12L28 28H12Z" fill="#1E293B"/>
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
    {{/if}}
  </template>
}
