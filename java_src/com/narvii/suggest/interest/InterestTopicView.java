package com.narvii.suggest.interest;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.model.story.StoryTopic;
import com.narvii.util.Utils;
import com.narvii.widget.TagRoundView;

/* loaded from: classes3.dex */
public class InterestTopicView extends TagRoundView {
    private boolean isChecked;
    View moreView;
    private StoryTopic topic;

    public static class MoreTopicMock extends StoryTopic {
    }

    public InterestTopicView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.narvii.widget.TagRoundView, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.moreView = findViewById(R.id.more);
    }

    public StoryTopic getTopicData() {
        return this.topic;
    }

    public void setTopicData(StoryTopic storyTopic) {
        this.topic = storyTopic;
        updateView();
    }

    public boolean isChecked() {
        return this.isChecked;
    }

    public void setChecked(boolean z) {
        this.isChecked = z;
        updateBackground();
    }

    @Override // com.narvii.widget.TagRoundView
    protected void updateView() {
        super.updateView();
        if (this.topic instanceof MoreTopicMock) {
            this.topicText.setVisibility(8);
            View view = this.moreView;
            if (view != null) {
                view.setVisibility(0);
                return;
            }
            return;
        }
        this.topicText.setVisibility(0);
        View view2 = this.moreView;
        if (view2 != null) {
            view2.setVisibility(8);
        }
    }

    @Override // com.narvii.widget.TagRoundView
    protected void updateBackground() {
        super.updateBackground();
        GradientDrawable backgroundDrawable = getBackgroundDrawable();
        if (!this.isChecked) {
            backgroundDrawable.setColor(436207615);
            backgroundDrawable.setStroke((int) Utils.dpToPx(getContext(), 1.0f), 1291845631, (int) Utils.dpToPx(getContext(), 1.0f), (int) Utils.dpToPx(getContext(), 3.0f));
            this.topicText.setTextColor(-1291845633);
        } else {
            backgroundDrawable.setColor(getAutoBackgroundColor());
            this.topicText.setTextColor(-1);
        }
        setBackground(backgroundDrawable);
    }

    @Override // com.narvii.widget.TagRoundView
    protected String getName() {
        StoryTopic storyTopic = this.topic;
        if (storyTopic == null) {
            return null;
        }
        return storyTopic.getDisplayName();
    }

    @Override // com.narvii.widget.TagRoundView
    protected int getAutoBackgroundColor() {
        StoryTopic.Style style;
        StoryTopic storyTopic = this.topic;
        if (storyTopic == null || (style = storyTopic.style) == null) {
            return -9973422;
        }
        return style.backgroundColor;
    }
}
