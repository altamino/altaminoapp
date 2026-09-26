package com.narvii.model.api;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.story.StoryTopic;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
public class TopicSuggestResponse extends ApiResponse {
    public String language;

    @JsonDeserialize(contentAs = StoryTopic.class)
    public List<StoryTopic> topicList;
}
