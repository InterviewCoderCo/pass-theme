import Component from "@glimmer/component";

export default class HeaderNavLinks extends Component {
  <template>
    {{! Yield the original logo content first }}
    {{yield}}
    <div class="header-nav-links">
      <a href="https://www.interviewcoder.co" target="_blank" rel="noopener" class="header-nav-link header-nav-badge">
        <span class="header-nav-badge__icon"></span>
        <span class="header-nav-badge__text">Pass Any Interview</span>
      </a>
    </div>
  </template>
}
