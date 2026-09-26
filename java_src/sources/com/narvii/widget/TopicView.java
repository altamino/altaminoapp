package com.narvii.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.lib.R;
import com.narvii.model.story.StoryTopic;

/* JADX INFO: loaded from: classes.dex */
public class TopicView extends TagRoundView {
    private StoryTopic topic;

    @Override // com.narvii.widget.TagRoundView
    protected int getAutoBackgroundColor() {
        StoryTopic.Style style;
        StoryTopic storyTopic = this.topic;
        if (storyTopic == null || (style = storyTopic.style) == null) {
            return 0;
        }
        return style.backgroundColor;
    }

    @Override // com.narvii.widget.TagRoundView
    protected String getName() {
        StoryTopic storyTopic = this.topic;
        if (storyTopic == null) {
            return null;
        }
        return storyTopic.getDisplayName();
    }

    public void setTopic(StoryTopic storyTopic) {
        this.topic = storyTopic;
        updateView();
    }

    public TopicView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, R.layout.lib_story_topic_view, this);
    }

    @Override // com.narvii.widget.TagRoundView, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }
}
