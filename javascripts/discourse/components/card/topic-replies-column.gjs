import icon from "discourse/helpers/d-icon";
import number from "discourse/helpers/number";

const TopicRepliesColumn = <template>
  <div class="topic-stats-row">
    <span class="topic-stat topic-replies">
      {{icon "comment"}}
      <span class="stat-number">{{number @topic.posts_count}}</span>
    </span>
    <span class="topic-stat topic-likes">
      {{icon "heart"}}
      <span class="stat-number">{{number @topic.like_count}}</span>
    </span>
    <span class="topic-stat topic-views">
      {{icon "chart-bar"}}
      <span class="stat-number">{{number @topic.views}}</span>
    </span>
    <button type="button" class="topic-share-btn">
      {{icon "share"}}
      <span>Share</span>
    </button>
  </div>
</template>;

export default TopicRepliesColumn;
