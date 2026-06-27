package com.narvii.model.story;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.narvii.model.api.ListResponse;
import java.util.List;

/* loaded from: classes3.dex */
public class StoryTopicListResponse extends ListResponse<StoryTopic> {
    public int allItemCount;
    public String language;

    @JsonDeserialize(contentAs = StoryTopic.class)
    public List<StoryTopic> topicList;

    @Override // com.narvii.model.api.ListResponse
    public List<StoryTopic> list() {
        return this.topicList;
    }
}
