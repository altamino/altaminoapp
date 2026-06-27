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
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.narvii.model.Feed;
import com.narvii.model.story.StoryTopic;
import com.narvii.util.FeedBriefContent;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

/* loaded from: classes.dex */
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
    public static final int TYPE_STORY = 9;
    public static final int TYPE_STORY_CROSSPOST = 10;
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

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.Feed
    public Media firstMedia() {
        Feed feed;
        Media extraCoverMedia;
        if (this.type == 9 && (extraCoverMedia = getExtraCoverMedia()) != null) {
            return extraCoverMedia;
        }
        Media mediaFirstMedia = super.firstMedia();
        Media linkSummaryMedia = getLinkSummaryMedia();
        return (mediaFirstMedia != null || linkSummaryMedia == null) ? (mediaFirstMedia != null || (feed = this.refObject) == null) ? mediaFirstMedia : feed.firstMedia() : linkSummaryMedia;
    }

    public StoryTopic getPromotedTopic() {
        return this.promotedTopic;
    }

    public Media firstMediaIncludePromote() {
        List<Media> list;
        PromoteInfo promoteInfo = getPromoteInfo();
        if (promoteInfo == null || (list = promoteInfo.mediaList) == null || list.size() == 0) {
            return firstMedia();
        }
        return promoteInfo.mediaList.get(0);
    }

    private JsonNode pageSnippet() {
        ObjectNode objectNode;
        int i = this.type;
        if ((i == 5 || i == 8) && (objectNode = this.extensions) != null) {
            return objectNode.get("pageSnippet");
        }
        return null;
    }

    public int getPrivilegeOfCommentOnPost() {
        return JacksonUtils.nodeInt(this.extensions, "privilegeOfCommentOnPost");
    }

    public String getLinkedBlogId() {
        ObjectNode objectNode = this.extensions;
        if (objectNode == null) {
            return null;
        }
        JsonNode jsonNode = objectNode.get("promotedTo");
        return jsonNode != null ? jsonNode.asText() : "";
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

    public LinkSummary getLinkSummary() {
        JsonNode jsonNodePageSnippet = pageSnippet();
        if (jsonNodePageSnippet == null) {
            return null;
        }
        return (LinkSummary) JacksonUtils.readAs(jsonNodePageSnippet.toString(), LinkSummary.class);
    }

    public int getQuizPlayedTimes() {
        return JacksonUtils.nodeInt(this.extensions, "quizPlayedTimes");
    }

    public boolean isInBestQuiz() {
        return JacksonUtils.nodeBoolean(this.extensions, "quizInBestQuizzes");
    }

    public boolean isPollEnded() {
        return this.endTime == null;
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

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.blogId;
    }

    @Override // com.narvii.model.Feed
    public String title() {
        return this.title;
    }

    @Override // com.narvii.model.Feed
    public String content() {
        return this.content;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return this.isGlobalAnnouncement ? 131 : 1;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        User user = this.author;
        if (user == null) {
            return null;
        }
        return user.uid;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return this.status;
    }

    @Override // com.narvii.model.NVObject
    public boolean isAccessibleByUser(User user) {
        Feed feed;
        if (invisibleBecauseOfClosed()) {
            return false;
        }
        if (this.type == 1 && (feed = this.refObject) != null) {
            return feed.isAccessibleByUser(user);
        }
        if (this.type == 2 && this.refObject != null) {
            return (user == null || !Utils.isEqualsNotNull(uid(), user.uid)) ? super.isAccessibleByUser(user) && this.refObject.isAccessibleByUser(user) : super.isAccessibleByUser(user) && !this.refObject.invisibleBecauseOfDeleted();
        }
        if (this.type != 8 || this.externalSource == null) {
            return super.isAccessibleByUser(user);
        }
        return super.isAccessibleByUser(user) && this.externalSource.isAccessibleByUser(user);
    }

    public boolean isAccessibleByUserIgnoreRefObject(User user) {
        if (this.type != 8 || this.externalSource == null) {
            return super.isAccessibleByUser(user);
        }
        return super.isAccessibleByUser(user) && this.externalSource.isAccessibleByUser(user);
    }

    @Override // com.narvii.model.NVObject
    public boolean invisibleBecauseOfDeleted() {
        Feed feed;
        if (this.type == 1 && (feed = this.refObject) != null) {
            return feed.invisibleBecauseOfDeleted();
        }
        if (this.type == 2 && this.refObject != null) {
            return super.invisibleBecauseOfDeleted() || this.refObject.invisibleBecauseOfDeleted();
        }
        if (this.type != 8 || this.externalSource == null) {
            return super.invisibleBecauseOfDeleted();
        }
        return super.invisibleBecauseOfDeleted() || this.externalSource.invisibleBecauseOfDeleted();
    }

    @Override // com.narvii.model.NVObject
    public boolean invisibleBecauseOfClosed() {
        Feed feed = this.refObject;
        return feed != null ? feed.status == 3 : this.status == 3;
    }

    @Override // com.narvii.model.Feed
    public String getShowTitle() {
        if (TextUtils.isEmpty(this.title) && this.type == 5 && this.extensions != null && getLinkSummary() != null && !TextUtils.isEmpty(getLinkSummary().getTitle())) {
            return getLinkSummary().getTitle();
        }
        return super.getShowTitle();
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

    public void updatePollOptions(PollOption pollOption, boolean z) {
        if (pollOption == null) {
            return;
        }
        if (this.polloptList == null) {
            this.polloptList = new ArrayList();
        }
        int i = -1;
        int i2 = 0;
        while (true) {
            if (i2 < this.polloptList.size()) {
                PollOption pollOption2 = this.polloptList.get(i2);
                if (pollOption2 != null && TextUtils.equals(pollOption2.polloptId, pollOption.polloptId)) {
                    i = i2;
                    break;
                }
                i2++;
            } else {
                break;
            }
        }
        if (i >= 0) {
            this.polloptList.remove(i);
        }
        if (z) {
            if (i >= 0) {
                this.polloptList.add(i, pollOption);
            } else {
                this.polloptList.add(pollOption);
            }
        }
    }

    @Override // com.narvii.model.Feed, com.narvii.model.NVObject
    public boolean isiModeDisableForUser(User user) {
        Feed feed;
        if (this.type == 1 && (feed = this.refObject) != null) {
            return feed.isiModeDisableForUser(user);
        }
        return super.isiModeDisableForUser(user);
    }

    public int getQuizQuestionCount() {
        return JacksonUtils.nodeInt(this.extensions, "quizTotalQuestionCount");
    }

    public Media getExtraCoverMedia() {
        JsonNode jsonNodeNodePath = JacksonUtils.nodePath(this.extensions, TtmlNode.TAG_STYLE, "coverMediaList");
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

    public boolean shouldShowWebPreview() {
        User user;
        int i = this.type;
        if (i == 8) {
            return true;
        }
        return i == 5 && (user = this.author) != null && Utils.isEqualsNotNull(user.nickname(), "News Feed");
    }

    public boolean isStory() {
        return this.type == 9;
    }

    public Media getLinkSummaryMedia() {
        List<Media> list;
        LinkSummary linkSummary = getLinkSummary();
        if (linkSummary == null || (list = linkSummary.mediaList) == null || list.isEmpty()) {
            return null;
        }
        return linkSummary.mediaList.get(0);
    }

    @Override // com.narvii.model.Feed
    public Feed getRealFeed() {
        Feed feed = this.refObject;
        return feed != null ? feed : super.getRealFeed();
    }

    @Override // com.narvii.model.Feed
    public List<Media> getFeedPreviewMediaList() {
        if (this.type == 9) {
            if (getExtraCoverMedia() != null) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(getExtraCoverMedia());
                return arrayList;
            }
            ArrayList arrayList2 = new ArrayList();
            List<Scene> list = this.sceneList;
            if (list != null && list.size() > 0 && this.sceneList.get(0).media != null) {
                arrayList2.add(this.sceneList.get(0).media);
            }
            return arrayList2;
        }
        return super.getFeedPreviewMediaList();
    }

    @Override // com.narvii.model.Feed
    public List<Media> getPreviewVideoList(boolean z) {
        if (this.type == 9 && this.sceneList != null) {
            ArrayList arrayList = new ArrayList();
            Iterator<Scene> it = this.sceneList.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().media);
            }
            return arrayList;
        }
        return super.getPreviewVideoList(z);
    }

    public boolean containsPollOrQuiz() {
        List<Scene> list;
        if (!isStory() || (list = this.sceneList) == null) {
            return false;
        }
        Iterator<Scene> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().containsPollOrQuiz()) {
                return true;
            }
        }
        return false;
    }

    public int getStoryPollCount() {
        List<Scene> list;
        int i = 0;
        if (isStory() && (list = this.sceneList) != null) {
            Iterator<Scene> it = list.iterator();
            while (it.hasNext()) {
                if (it.next().getPoll() != null) {
                    i++;
                }
            }
        }
        return i;
    }

    public int getStoryQuizCount() {
        List<Scene> list;
        int i = 0;
        if (isStory() && (list = this.sceneList) != null) {
            Iterator<Scene> it = list.iterator();
            while (it.hasNext()) {
                if (it.next().getQuizQuestion() != null) {
                    i++;
                }
            }
        }
        return i;
    }

    public boolean containsScenePoll() {
        List<Scene> list;
        if (!isStory() || (list = this.sceneList) == null) {
            return false;
        }
        Iterator<Scene> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().getPoll() != null) {
                return true;
            }
        }
        return false;
    }

    public boolean containsSceneQuiz() {
        List<Scene> list;
        if (!isStory() || (list = this.sceneList) == null) {
            return false;
        }
        Iterator<Scene> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().getQuizQuestion() != null) {
                return true;
            }
        }
        return false;
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
        int i = this.type;
        if (i == 5) {
            if (this.extensions != null && (linkSummary = getLinkSummary()) != null && (list = linkSummary.mediaList) != null) {
                arrayList.addAll(list);
            }
        } else if (i == 9) {
            arrayList.addAll(getFeedPreviewMediaList());
        }
        return arrayList;
    }

    public boolean isknownType() {
        return this.type <= 9;
    }

    public boolean isGlobalAnnouncement() {
        return this.isGlobalAnnouncement;
    }

    public int getPublishNdcId() {
        Feed feed = this.refObject;
        return feed != null ? feed.ndcId : getNdcId();
    }

    public String getCommunityBlogId() {
        Feed feed = this.refObject;
        return feed instanceof Blog ? ((Blog) feed).blogId : this.blogId;
    }

    @Override // com.narvii.model.RefHost
    public String refId() {
        Feed feed = this.refObject;
        return feed != null ? feed.id() : id();
    }

    /* loaded from: classes3.dex */
    public static class BlogDeserializer extends JsonDeserializer<Blog> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Blog deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            JsonNode jsonNode = (JsonNode) jsonParser.readValueAsTree();
            if (jsonNode.hasNonNull("blogId")) {
                Blog blog = (Blog) JacksonUtils.DEFAULT_MAPPER.treeToValue(jsonNode, Blog.class);
                return blog.type == 10 ? Blog.deserilizeStory(blog) : blog;
            }
            Log.e("Unknown type: " + jsonNode);
            return null;
        }
    }

    public static Blog deserilizeStory(Blog blog) {
        Feed feed = blog.refObject;
        if (feed == null) {
            return blog;
        }
        Blog blog2 = (Blog) feed.m46clone();
        if (blog2.type != 9) {
            return blog;
        }
        blog2.ndcId = blog.ndcId;
        blog2.blogId = blog.blogId;
        blog2.author = blog.author;
        blog2.refObject = blog.refObject;
        blog2.tipInfo = blog.tipInfo;
        return blog2;
    }

    @Override // com.narvii.model.Feed
    public int getTotalVotesCount() {
        if (this.type == 9) {
            if (getPublishNdcId() == 0) {
                return this.globalVotesCount;
            }
            return this.votesCount + this.globalVotesCount;
        }
        return super.getTotalVotesCount();
    }

    public void shuffleSceneQuizOptions() {
        List<Scene> list;
        List<QuizOption> listQuizOptions;
        if (!isStory() || (list = this.sceneList) == null) {
            return;
        }
        Iterator<Scene> it = list.iterator();
        while (it.hasNext()) {
            QuizQuestion quizQuestion = it.next().getQuizQuestion();
            if (quizQuestion != null && (listQuizOptions = quizQuestion.quizOptions()) != null) {
                Collections.shuffle(listQuizOptions, new Random(System.currentTimeMillis()));
                quizQuestion.setQuizOptions(listQuizOptions);
            }
        }
    }

    @Override // com.narvii.model.Feed, com.narvii.model.StrategyObject
    public String getStrategyInfo() {
        String str;
        Feed feed = this.refObject;
        return (!(feed instanceof StrategyObject) || (str = feed.strategyInfo) == null) ? super.getStrategyInfo() : str;
    }

    @Override // com.narvii.model.Feed, com.narvii.model.StrategyObject
    public void setStrategyInfo(String str) {
        super.setStrategyInfo(str);
        Feed feed = this.refObject;
        if (feed != null) {
            feed.setStrategyInfo(str);
        }
    }

    @Override // com.narvii.model.Feed
    public int getTotalCommentsCount() {
        if (this.type == 9) {
            if (getPublishNdcId() == 0) {
                return this.globalCommentsCount;
            }
            return this.commentsCount + this.globalCommentsCount;
        }
        return super.getTotalCommentsCount();
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

    @Override // com.narvii.util.FeedBriefContent
    public Feed getBriefContent() {
        Blog blog = new Blog();
        blog.ndcId = this.ndcId;
        blog.blogId = this.blogId;
        blog.title = this.title;
        blog.content = this.content;
        User user = this.author;
        blog.author = user == null ? null : (User) user.m46clone();
        blog.type = this.type;
        if (blog.type == 9) {
            blog.sceneList = JacksonUtils.readListAs(JacksonUtils.writeAsString(this.sceneList), Scene.class);
        }
        return blog;
    }
}
