package com.narvii.topic.model.discover;

import androidx.annotation.Nullable;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.model.NVObject;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TextUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ContentModule extends NVObject {
    public static final String STYLE_BANNER_SIZE_MEDIUM = "BannerSizeMedium";
    public static final String STYLE_BANNER_SIZE_TOP = "BannerSizeTop";
    public static final String STYLE_COMMUNITY_THUMBNAIL_LINE = "CommunityThumbnailLine";
    public static final String STYLE_CREATE_COMMUNITY_BUTTON = "CreateCommunityButton";
    public static final String STYLE_DISCOVER_TOPICS_BUTTON = "DiscoverTopicsButton";
    public static final String STYLE_GENERAL_CHAT_CARD = "GeneralChatCard";
    public static final String STYLE_GENERAL_COMMUNITY_CARD = "GeneralCommunityCard";
    public static final String STYLE_GENERAL_TOPIC_CARD = "GeneralTopicCard";
    public static final String STYLE_GRID_COMMUNITY_CARD = "GridCommunityCard";
    public static final String STYLE_GRID_TOPIC_CARD = "GridTopicCard";
    public static final String STYLE_HEADERLINE_POST = "HeadlinePost";
    public static final String TYPE_BOOKMARKED_TOPICS = "BookmarkedTopics";
    public static final String TYPE_CUSTOMIZED_BANNER_ADS = "CustomizedBannerAds";
    public static final String TYPE_CUSTOMIZED_POST_FEED = "CustomizedPostFeed";
    public static final String TYPE_FEATURE_TOPIC = "FeaturedTopics";
    public static final String TYPE_INTEREST_BASED_POPULAR_STORIES = "InterestBasedPopularStories";
    public static final String TYPE_INTEREST_RECOMMENDED_QUIZZES = "InterestRecommendedQuizzes";
    public static final String TYPE_POPULAR_STORIES = "PopularStories";
    public static final String TYPE_RECENT_POPULAR_STORIES = "RecentPopularStories";
    public static final String TYPE_RECOMMENDED_COMMUNITIES = "RecommendedCommunities";
    public static final String TYPE_RECOMMENDED_STORIES = "RecommendedStories";
    public static final String TYPE_TOPIC_BASED_LATEST_STORIES = "TopicBasedLatestStories";
    public static final String TYPE_TOPIC_BASED_POPULAR_STORIES = "TopicBasedPopularStories";
    public static final String TYPE_TOPIC_BASED_RECOMMENDED_COMMUNITIES = "TopicBasedRecommendedCommunities";
    public static final String TYPE_TOPIC_BASED_RECOMMENDED_POLL_STORIES = "TopicBasedRecommendedPollStories";
    public static final String TYPE_TOPIC_BASED_RECOMMENDED_QUIZ_STORIES = "TopicBasedRecommendedQuizStories";
    public static final String TYPE_TOPIC_BASED_RECOMMENDED_STORIES = "TopicBasedRecommendedStories";
    public static final String TYPE_TOPIC_BASED_TRENDING_TOPICS = "TopicBasedTrendingTopics";
    public static final String TYPE_TRENDING_TOPIC = "TrendingTopic";
    public static final List<String> supportedStyle;
    public int contentObjectSubtype;
    public int contentObjectType;
    public int contentVariety;
    public String dataUrl;
    public String displayName;
    public ObjectNode extensions;

    @JsonIgnoreProperties
    private String interestName;

    @JsonIgnoreProperties
    private String linkedId;

    @JsonIgnoreProperties
    private int linkedIntId = -1;
    public ObjectNode linkedObject;
    public int linkedObjectType;
    public String moduleId;
    public String moduleType;
    public String style;
    public boolean topicLocked;
    public boolean userRemovable;

    @Retention(RetentionPolicy.SOURCE)
    public @interface STYLE {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface TYPE {
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null || obj.hashCode() != hashCode()) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ContentModule)) {
            return super.equals(obj);
        }
        ContentModule contentModule = (ContentModule) obj;
        return Utils.isEqualsNotNull(this.moduleId, contentModule.moduleId) && Utils.isEqualsNotNull(this.style, contentModule.style) && Utils.isEqualsNotNull(this.moduleType, contentModule.moduleType) && Utils.isEqualsNotNull(this.dataUrl, contentModule.dataUrl) && Utils.isEqualsNotNull(this.displayName, contentModule.displayName) && this.userRemovable == contentModule.userRemovable;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.moduleId;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return -1;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        return 0;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        return null;
    }

    static {
        ArrayList arrayList = new ArrayList();
        supportedStyle = arrayList;
        arrayList.add(STYLE_GENERAL_TOPIC_CARD);
        arrayList.add(STYLE_GRID_TOPIC_CARD);
        arrayList.add(STYLE_GENERAL_COMMUNITY_CARD);
        arrayList.add(STYLE_GENERAL_CHAT_CARD);
        arrayList.add(STYLE_BANNER_SIZE_MEDIUM);
        arrayList.add(STYLE_BANNER_SIZE_TOP);
        arrayList.add(STYLE_DISCOVER_TOPICS_BUTTON);
        arrayList.add(STYLE_HEADERLINE_POST);
        arrayList.add(STYLE_COMMUNITY_THUMBNAIL_LINE);
        arrayList.add(STYLE_CREATE_COMMUNITY_BUTTON);
    }

    public String getDisplayStyle() {
        String str = this.style;
        if (str != null && supportedStyle.contains(str)) {
            return this.style;
        }
        int i10 = this.contentObjectType;
        if (i10 == 16) {
            return STYLE_GENERAL_COMMUNITY_CARD;
        }
        if (i10 == 128) {
            return STYLE_GENERAL_TOPIC_CARD;
        }
        if (i10 == 12) {
            return STYLE_GENERAL_CHAT_CARD;
        }
        return null;
    }

    public String getInterestId() {
        if (!TextUtils.isEmpty(this.linkedId)) {
            return this.linkedId;
        }
        String strNodeString = JacksonUtils.nodeString(this.linkedObject, "interestId");
        this.linkedId = strNodeString;
        return strNodeString;
    }

    public String getInterestName() {
        if (!TextUtils.isEmpty(this.interestName)) {
            return this.interestName;
        }
        String strNodeString = JacksonUtils.nodeString(this.linkedObject, "name");
        this.interestName = strNodeString;
        return strNodeString;
    }

    @Nullable
    public ApiRequest.Builder getRequestFromModule() {
        return Utils.getApiRequestFromPath(this.dataUrl);
    }

    public int getTopicId() {
        int i10 = this.linkedIntId;
        if (i10 != -1) {
            return i10;
        }
        int iNodeInt = JacksonUtils.nodeInt(this.linkedObject, -1, "topicId");
        this.linkedIntId = iNodeInt;
        return iNodeInt;
    }

    public boolean isJoinedCommunity() {
        return JacksonUtils.nodeBoolean(this.extensions, "contentTypeJoinedCommunities");
    }

    public boolean isRecommendModule() {
        return Utils.isEquals(this.moduleType, TYPE_RECOMMENDED_STORIES) || Utils.isEquals(this.moduleType, TYPE_TOPIC_BASED_LATEST_STORIES);
    }
}
