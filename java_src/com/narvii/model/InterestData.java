package com.narvii.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.narvii.model.story.StoryTopic;
import com.narvii.util.JacksonUtils;
import com.narvii.util.text.TextUtils;
import java.util.List;

/* loaded from: classes3.dex */
public class InterestData extends NVObject implements StrategyObject {
    public String displayName;

    @JsonDeserialize(contentAs = StoryTopic.class)
    public List<StoryTopic> foldedTopicList;
    public String interestId;
    public boolean isSelected;
    public String name;
    public String strategyInfo;
    public Style style;

    @JsonDeserialize(contentAs = StoryTopic.class)
    public List<StoryTopic> topicList;

    @JsonDeserialize(contentAs = StoryTopic.class)
    public List<StoryTopic> visibleTopicList;

    /* loaded from: classes.dex */
    public static class Style {

        @JsonDeserialize(using = JacksonUtils.ColorDeserializer.class)
        @JsonSerialize(using = JacksonUtils.ColorSerializer.class)
        public int backgroundColor;
        public String backgroundImage;
    }

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 126;
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

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.interestId;
    }

    @Override // com.narvii.model.StrategyObject
    public String getStrategyInfo() {
        return this.strategyInfo;
    }

    @Override // com.narvii.model.StrategyObject
    public void setStrategyInfo(String str) {
        this.strategyInfo = str;
    }

    public String getDisplayName() {
        if (!TextUtils.isEmpty(this.displayName)) {
            return this.displayName;
        }
        return this.name;
    }
}
