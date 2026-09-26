package com.narvii.model;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.model.story.StoryTopic;
import com.narvii.util.FeedBriefContent;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class Blog extends Feed implements RefHost, FeedBriefContent {
    public static final String KEY_DEFAULT_STORY_TOPIC = "default_story_topic";
    public static final int TYPE_CROSSPOST = 1;
    public static final int TYPE_EXTERNAL_POST = 8;
    public static final int TYPE_IMAGE = 7;
    public static final int TYPE_LINK = 5;
    public static final int TYPE_NORMAL = 0;
    public static final int TYPE_POLL = 4;
    public static final int TYPE_QA = 3;
    public static final int TYPE_QUIZ = 6;
    public static final int TYPE_REPOST = 2;
    public String blogId;
    public String credits;

    @JsonIgnore
    public int currentWindowIndex;

    @JsonDeserialize(using = JacksonUtils.DateDeserializer.class)
    @JsonSerialize(using = JacksonUtils.DateSerializer.class)
    public Date endTime;

    @JsonDeserialize(contentAs = ExternalSource.class)
    public ExternalSource externalSource;
    public boolean isGlobalAnnouncement;

    @JsonDeserialize(contentAs = PollOption.class)
    public List<PollOption> polloptList;
    public StoryTopic promotedTopic;
    public int publishToGlobal;

    @JsonDeserialize(contentAs = QuizQuestion.class)
    public List<QuizQuestion> quizQuestionList;
    public CurrentQuizzesResult quizResultOfCurrentUser;

    @JsonDeserialize(using = Feed.FeedDeserializer.class)
    public Feed refObject;
    public String refObjectId;
    public int refObjectType;

    @JsonDeserialize(contentAs = Scene.class)
    public List<Scene> sceneList;
    public String title;
    public int totalPollVoteCount;
    public int totalQuizPlayCount;
    public int type;

    @JsonDeserialize(contentAs = StoryTopic.class)
    public List<StoryTopic> userAddedTopicList;
    public int widgetDisplayInterval;

    public static class BlogDeserializer extends JsonDeserializer<Blog> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Blog deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            JsonNode jsonNode = (JsonNode) jsonParser.readValueAsTree();
            if (jsonNode.hasNonNull("blogId")) {
                return (Blog) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNode, Blog.class);
            }
            Log.e("Unknown type: " + jsonNode);
            return null;
        }
    }

    public boolean containsPollOrQuiz() {
        return false;
    }

    public boolean containsScenePoll() {
        return false;
    }

    public boolean containsSceneQuiz() {
        return false;
    }

    @Override // com.narvii.model.Feed
    public String content() {
        return this.content;
    }

    public StoryTopic getPromotedTopic() {
        return this.promotedTopic;
    }

    public int getStoryPollCount() {
        return 0;
    }

    public int getStoryQuizCount() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.blogId;
    }

    public boolean isGlobalAnnouncement() {
        return this.isGlobalAnnouncement;
    }

    public boolean isPollEnded() {
        return this.endTime == null;
    }

    public boolean isknownType() {
        return this.type <= 8;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return this.isGlobalAnnouncement ? 131 : 1;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
    }

    @Override // com.narvii.model.Feed
    public String title() {
        return this.title;
    }

    private JsonNode pageSnippet() {
        ObjectNode objectNode;
        int i10 = this.type;
        if ((i10 == 5 || i10 == 8) && (objectNode = this.extensions) != null) {
            return objectNode.get("pageSnippet");
        }
        return null;
    }

    @Override // com.narvii.util.FeedBriefContent
    public Feed getBriefContent() {
        Blog blog = new Blog();
        blog.ndcId = this.ndcId;
        blog.blogId = this.blogId;
        blog.title = this.title;
        blog.content = this.content;
        User user = this.author;
        blog.author = user == null ? null : (User) user.m1622clone();
        blog.type = this.type;
        return blog;
    }

    public String getCommunityBlogId() {
        Feed feed = this.refObject;
        return feed instanceof Blog ? ((Blog) feed).blogId : this.blogId;
    }

    public String getDisplayNickname(Context context) {
        ExternalSource externalSource;
        if (this.type == 8 && (externalSource = this.externalSource) != null) {
            return externalSource.getFeedShowTitle(context);
        }
        User user = this.author;
        if (user == null) {
            return null;
        }
        return user.nickname();
    }

    public Drawable getExternalOriginDrawable(Context context) {
        ExternalSource externalSource;
        if (this.type != 8 || (externalSource = this.externalSource) == null) {
            return null;
        }
        return externalSource.getOriginDrawable(context);
    }

    public Media getExtraCoverMedia() {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "style", "coverMediaList");
        if (jsonNodeNodePath != null && jsonNodeNodePath.isArray()) {
            try {
                Media[] mediaArr = (Media[]) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, Media[].class);
                if (mediaArr != null && mediaArr.length > 0) {
                    return mediaArr[0];
                }
            } catch (JsonProcessingException e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public String getLinkedBlogId() {
        ObjectNode objectNode = this.extensions;
        if (objectNode == null) {
            return null;
        }
        JsonNode jsonNode = objectNode.get("promotedTo");
        return jsonNode != null ? jsonNode.asText() : "";
    }

    public int getPrivilegeOfCommentOnPost() {
        return JacksonUtils.nodeInt(this.extensions, "privilegeOfCommentOnPost");
    }

    public int getPublishNdcId() {
        Feed feed = this.refObject;
        return feed != null ? feed.ndcId : getNdcId();
    }

    public int getQuizPlayedTimes() {
        return JacksonUtils.nodeInt(this.extensions, "quizPlayedTimes");
    }

    public int getQuizQuestionCount() {
        return JacksonUtils.nodeInt(this.extensions, "quizTotalQuestionCount");
    }

    @Override // com.narvii.model.Feed
    public Feed getRealFeed() {
        Feed feed = this.refObject;
        return feed != null ? feed : super.getRealFeed();
    }

    public String getShowContent() {
        if (this.type == 5 && this.extensions != null && getLinkSummary() != null && !TextUtils.isEmpty(getLinkSummary().getBody()) && !TextUtils.isEmpty(getLinkSummary().getBody().trim())) {
            return getLinkSummary().getBody();
        }
        if (!TextUtils.isEmpty(compactContent()) && !TextUtils.isEmpty(compactContent().trim())) {
            return compactContent();
        }
        if (getLinkSummary() != null) {
            return getLinkSummary().getLink();
        }
        return null;
    }

    @Override // com.narvii.model.Feed
    public String getShowTitle() {
        return (!TextUtils.isEmpty(this.title) || this.type != 5 || this.extensions == null || getLinkSummary() == null || TextUtils.isEmpty(getLinkSummary().getTitle())) ? super.getShowTitle() : getLinkSummary().getTitle();
    }

    public LinkSummary getStoryLinkSummary() {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, "pageSnippet");
        if (jsonNodeNodePath == null) {
            return null;
        }
        try {
            return (LinkSummary) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNodeNodePath, LinkSummary.class);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.narvii.model.Feed, com.narvii.model.StrategyObject
    public String getStrategyInfo() {
        String str;
        Feed feed = this.refObject;
        return (!(feed instanceof StrategyObject) || (str = feed.strategyInfo) == null) ? super.getStrategyInfo() : str;
    }

    @Override // com.narvii.model.NVObject
    public boolean invisibleBecauseOfClosed() {
        Feed feed = this.refObject;
        if (feed != null) {
            return feed.status == 3;
        }
        return this.status == 3;
    }

    @Override // com.narvii.model.NVObject
    public boolean invisibleBecauseOfDeleted() {
        Feed feed;
        int i10 = this.type;
        if (i10 == 1 && (feed = this.refObject) != null) {
            return feed.invisibleBecauseOfDeleted();
        }
        if (i10 == 2 && this.refObject != null) {
            return super.invisibleBecauseOfDeleted() || this.refObject.invisibleBecauseOfDeleted();
        }
        if (i10 != 8 || this.externalSource == null) {
            return super.invisibleBecauseOfDeleted();
        }
        return super.invisibleBecauseOfDeleted() || this.externalSource.invisibleBecauseOfDeleted();
    }

    public boolean isAccessibleByUserIgnoreRefObject(User user) {
        if (this.type != 8 || this.externalSource == null) {
            return super.isAccessibleByUser(user);
        }
        return super.isAccessibleByUser(user) && this.externalSource.isAccessibleByUser(user);
    }

    public boolean isInBestQuiz() {
        return JacksonUtils.nodeBoolean(this.extensions, "quizInBestQuizzes");
    }

    public boolean isPollVoted() {
        List<PollOption> list = this.polloptList;
        if (list == null) {
            return false;
        }
        Iterator<PollOption> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().votedValue > 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.narvii.model.Feed, com.narvii.model.NVObject
    public boolean isiModeDisableForUser(User user) {
        Feed feed;
        return (this.type != 1 || (feed = this.refObject) == null) ? super.isiModeDisableForUser(user) : feed.isiModeDisableForUser(user);
    }

    @Override // com.narvii.model.RefHost
    public String refId() {
        Feed feed = this.refObject;
        return feed != null ? feed.id() : id();
    }

    public boolean shouldShowWebPreview() {
        User user;
        int i10 = this.type;
        if (i10 == 8) {
            return true;
        }
        return i10 == 5 && (user = this.author) != null && Utils.isEqualsNotNull(user.nickname(), "News Feed");
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        User user = this.author;
        if (user == null) {
            return null;
        }
        return user.uid;
    }

    public void updatePollOptions(PollOption pollOption, boolean z6) {
        if (pollOption == null) {
            return;
        }
        if (this.polloptList == null) {
            this.polloptList = new ArrayList();
        }
        int i10 = 0;
        while (true) {
            if (i10 >= this.polloptList.size()) {
                i10 = -1;
                break;
            }
            PollOption pollOption2 = this.polloptList.get(i10);
            if (pollOption2 != null && TextUtils.equals(pollOption2.polloptId, pollOption.polloptId)) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 >= 0) {
            this.polloptList.remove(i10);
        }
        if (z6) {
            if (i10 >= 0) {
                this.polloptList.add(i10, pollOption);
            } else {
                this.polloptList.add(pollOption);
            }
        }
    }

    @Override // com.narvii.model.Feed
    public Media firstMedia() {
        Feed feed;
        Media mediaFirstMedia = super.firstMedia();
        Media linkSummaryMedia = getLinkSummaryMedia();
        if (mediaFirstMedia == null && linkSummaryMedia != null) {
            return linkSummaryMedia;
        }
        if (mediaFirstMedia == null && (feed = this.refObject) != null) {
            return feed.firstMedia();
        }
        return mediaFirstMedia;
    }

    public Media firstMediaIncludePromote() {
        List<Media> list;
        PromoteInfo promoteInfo = getPromoteInfo();
        if (promoteInfo != null && (list = promoteInfo.mediaList) != null && list.size() != 0) {
            return promoteInfo.mediaList.get(0);
        }
        return firstMedia();
    }

    @Override // com.narvii.model.Feed
    public List<Media> getFeedPreviewMediaList() {
        return super.getFeedPreviewMediaList();
    }

    public LinkSummary getLinkSummary() {
        JsonNode jsonNodePageSnippet = pageSnippet();
        if (jsonNodePageSnippet == null) {
            return null;
        }
        return (LinkSummary) JacksonUtils.readAs(jsonNodePageSnippet.toString(), LinkSummary.class);
    }

    public Media getLinkSummaryMedia() {
        List<Media> list;
        LinkSummary linkSummary = getLinkSummary();
        if (linkSummary != null && (list = linkSummary.mediaList) != null && !list.isEmpty()) {
            return linkSummary.mediaList.get(0);
        }
        return null;
    }

    @Override // com.narvii.model.Feed
    public List<Media> getPreviewVideoList(boolean z6) {
        return super.getPreviewVideoList(z6);
    }

    @Override // com.narvii.model.Feed
    public List<Media> getSortedMediaList() {
        LinkSummary linkSummary;
        List<Media> list;
        List<Media> sortedMediaList = super.getSortedMediaList();
        if (sortedMediaList != null && sortedMediaList.size() > 0) {
            return sortedMediaList;
        }
        ArrayList arrayList = new ArrayList();
        if (this.type == 5 && this.extensions != null && (linkSummary = getLinkSummary()) != null && (list = linkSummary.mediaList) != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    @Override // com.narvii.model.Feed
    public int getTotalCommentsCount() {
        return super.getTotalCommentsCount();
    }

    @Override // com.narvii.model.Feed
    public int getTotalVotesCount() {
        return super.getTotalVotesCount();
    }

    @Override // com.narvii.model.NVObject
    public boolean isAccessibleByUser(User user) {
        Feed feed;
        if (invisibleBecauseOfClosed()) {
            return false;
        }
        int i10 = this.type;
        if (i10 == 1 && (feed = this.refObject) != null) {
            return feed.isAccessibleByUser(user);
        }
        if (i10 == 2 && this.refObject != null) {
            if (user != null && Utils.isEqualsNotNull(uid(), user.uid)) {
                if (!super.isAccessibleByUser(user) || this.refObject.invisibleBecauseOfDeleted()) {
                    return false;
                }
                return true;
            }
            if (!super.isAccessibleByUser(user) || !this.refObject.isAccessibleByUser(user)) {
                return false;
            }
            return true;
        }
        if (i10 == 8 && this.externalSource != null) {
            if (!super.isAccessibleByUser(user) || !this.externalSource.isAccessibleByUser(user)) {
                return false;
            }
            return true;
        }
        return super.isAccessibleByUser(user);
    }

    public void setLinkedBlogId(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.extensions == null) {
            this.extensions = JacksonUtils.createObjectNode();
        }
        this.extensions.put("promotedTo", str);
    }

    @Override // com.narvii.model.Feed, com.narvii.model.StrategyObject
    public void setStrategyInfo(String str) {
        super.setStrategyInfo(str);
        Feed feed = this.refObject;
        if (feed != null) {
            feed.setStrategyInfo(str);
        }
    }
}
