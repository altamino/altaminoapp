package com.narvii.topic;

import com.narvii.model.NVObject;
import com.narvii.model.story.StoryTopic;

/* loaded from: classes3.dex */
public class TopicNotificationStub extends NVObject {
    public static final String ACTION_BOOKMARK_STATE_CHANGE = "bookmark_state_change";
    public String action;
    public Object attachObj;
    public String id;
    public StoryTopic topic;

    @Override // com.narvii.model.NVObject
    public int objectType() {
        return 128;
    }

    @Override // com.narvii.model.NVObject
    public String parentId() {
        return null;
    }

    @Override // com.narvii.model.NVObject
    public String id() {
        return this.id;
    }

    @Override // com.narvii.model.NVObject
    public String uid() {
        StoryTopic storyTopic = this.topic;
        if (storyTopic == null) {
            return null;
        }
        return storyTopic.uid();
    }

    @Override // com.narvii.model.NVObject
    public int status() {
        StoryTopic storyTopic = this.topic;
        if (storyTopic == null) {
            return 0;
        }
        return storyTopic.status();
    }
}
