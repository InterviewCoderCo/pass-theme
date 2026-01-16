import Component from "@glimmer/component";
import avatar from "discourse/helpers/avatar";

export default class TopicCreatorColumn extends Component {
  get topicCreator() {
    return {
      user: this.args.topic.creator,
      class: "--topic-creator",
    };
  }

  get username() {
    return this.args.topic.creator?.username || "";
  }

  get userLevel() {
    // Calculate level based on trust level or post count
    const trustLevel = this.args.topic.creator?.trust_level || 0;
    // Map trust level to display level (1-10 range for visual appeal)
    const levelMap = { 0: 1, 1: 3, 2: 5, 3: 7, 4: 9 };
    return levelMap[trustLevel] || trustLevel + 1;
  }

  <template>
    <div class="topic-creator-info">
      <div class={{this.topicCreator.class}}>
        {{avatar this.topicCreator.user imageSize="medium"}}
      </div>
      <div class="topic-creator-meta">
        <span class="topic-creator-username">@{{this.username}}</span>
        <span class="topic-creator-level">LVL {{this.userLevel}}</span>
      </div>
    </div>
  </template>
}
