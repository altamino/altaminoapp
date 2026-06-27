package com.narvii.model.story;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.NVObject;
import com.narvii.model.StrategyObject;
import com.narvii.util.JacksonUtils;
import com.narvii.util.text.TextUtils;
import java.util.List;

/* loaded from: classes3.dex */
public class StoryTopic extends NVObject implements StrategyObject {
    public static final int SUBSCRIPTION_STATUS_NONE = 0;
    public static final int SUBSCRIPTION_STATUS_SUBSCRIBED = 1;
    public ActiveInfo activeInfo;
    public int communityCount;
    public boolean invalid;
    public boolean isBookmarked;
    public String landingTab;
    public String name;
    public String originalName;
    public int storyCount;
    public String strategyInfo;
    public Style style;

    @JsonDeserialize(contentAs = StoryTopic.class)
    public List<StoryTopic> subTopicList;
    public int subscriptionStatus;

    @JsonDeserialize(contentAs = StoryTopicTab.class)
    public List<StoryTopicTab> tabList;
    public int topicId;

    public static class ActiveInfo {
        public int memberCount;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 128;
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

    @Override // com.narvii.model.StrategyObject
    public String getStrategyInfo() {
        return this.strategyInfo;
    }

    @Override // com.narvii.model.StrategyObject
    public void setStrategyInfo(String str) {
        this.strategyInfo = str;
    }

    public boolean isNotified() {
        return this.subscriptionStatus == 1;
    }

    /* loaded from: classes.dex */
    public static class Style {

        @JsonDeserialize(using = JacksonUtils.ColorDeserializer.class)
        @JsonSerialize(using = JacksonUtils.ColorSerializer.class)
        public int backgroundColor;
        public String backgroundImage;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || Style.class != obj.getClass()) {
                return false;
            }
            Style style = (Style) obj;
            if (this.backgroundColor != style.backgroundColor) {
                return false;
            }
            String str = this.backgroundImage;
            String str2 = style.backgroundImage;
            return str != null ? str.equals(str2) : str2 == null;
        }

        public int hashCode() {
            int i = this.backgroundColor * 31;
            String str = this.backgroundImage;
            return i + (str != null ? str.hashCode() : 0);
        }
    }

    public String getDisplayName() {
        if (!TextUtils.isEmpty(this.originalName)) {
            return this.originalName;
        }
        return this.name;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        StoryTopic storyTopic = (StoryTopic) obj;
        if (this.topicId != storyTopic.topicId) {
            return false;
        }
        String str = this.name;
        if (str == null ? storyTopic.name != null : !str.equals(storyTopic.name)) {
            return false;
        }
        Style style = this.style;
        if (style == null ? storyTopic.style != null : !style.equals(storyTopic.style)) {
            return false;
        }
        String str2 = this.originalName;
        String str3 = storyTopic.originalName;
        return str2 == null ? str3 == null : str2.equals(str3);
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return "" + this.topicId;
    }

    @Override // com.narvii.model.NVObject
    public int hashCode() {
        int i = this.topicId * 31;
        String str = this.name;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        Style style = this.style;
        int iHashCode2 = (iHashCode + (style != null ? style.hashCode() : 0)) * 31;
        String str2 = this.originalName;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }
}
