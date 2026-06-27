package com.narvii.master.search.widgets;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.story.StoryTopic;
import com.narvii.topic.widgets.TopicCardCoverView;
import com.narvii.util.Utils;
import com.narvii.widget.TintButton;

/* loaded from: classes3.dex */
public class TopicCardView extends FrameLayout {
    View bookmarkIndicator;
    float corner;
    private TopicCardCoverView coverView;
    TintButton indicator2;
    View rightChevron;
    TextView tvDetail;
    TextView tvTitle;

    public TopicCardView(Context context) {
        this(context, null);
    }

    public TopicCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.corner = context.getResources().getDimension(R.dimen.topic_card_corner);
        FrameLayout.inflate(context, R.layout.item_cell_topic_card, this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.tvTitle = (TextView) findViewById(R.id.topic_title);
        this.tvDetail = (TextView) findViewById(R.id.detail_info);
        this.indicator2 = (TintButton) findViewById(R.id.indicator_2);
        this.coverView = (TopicCardCoverView) findViewById(R.id.img_container);
        this.bookmarkIndicator = findViewById(R.id.bookmark_indicator);
        this.rightChevron = findViewById(R.id.right_chevron);
    }

    public void setTopic(StoryTopic storyTopic, boolean z) {
        setTopic(storyTopic, z, false);
    }

    public void setTopic(StoryTopic storyTopic, boolean z, boolean z2) {
        setTopic(storyTopic, z, z2, false);
    }

    public void setTopic(StoryTopic storyTopic, boolean z, boolean z2, boolean z3) {
        int i;
        StoryTopic.Style style;
        if (storyTopic == null || (style = storyTopic.style) == null) {
            i = -1;
        } else {
            i = style.backgroundColor;
            if (z3) {
                this.coverView.showSubscribeTag();
            } else {
                this.coverView.hideSubscribeTag();
            }
            this.coverView.setTopic(storyTopic);
        }
        this.indicator2.setTintColor(i);
        String string = "";
        this.tvTitle.setText(storyTopic == null ? "" : storyTopic.name);
        this.bookmarkIndicator.setVisibility((storyTopic.isBookmarked && z) ? 0 : 4);
        View view = this.rightChevron;
        if (view != null) {
            view.setVisibility(z2 ? 0 : 4);
        }
        if (storyTopic != null) {
            int i2 = storyTopic.storyCount;
            if (i2 == 0) {
                int i3 = storyTopic.communityCount;
                if (i3 != 0) {
                    if (i3 == 1) {
                        string = "" + getContext().getString(R.string.communities_1);
                    } else {
                        string = "" + getContext().getString(R.string.communities_n, Integer.valueOf(storyTopic.communityCount));
                    }
                }
            } else if (i2 == 1) {
                int i4 = storyTopic.communityCount;
                if (i4 == 0) {
                    string = "" + getContext().getString(R.string.sotry_count_1);
                } else if (i4 == 1) {
                    string = "" + getContext().getString(R.string.one_story_1_community);
                } else {
                    string = "" + getContext().getString(R.string.one_story_n_community, Integer.valueOf(storyTopic.communityCount));
                }
            } else if (i2 > 1) {
                int i5 = storyTopic.communityCount;
                if (i5 == 0) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("");
                    sb.append(getContext().getString(R.string.sotry_count_n, "" + storyTopic.storyCount));
                    string = sb.toString();
                } else if (i5 == 1) {
                    string = "" + getContext().getString(R.string.n_story_1_community, Integer.valueOf(storyTopic.storyCount));
                } else {
                    string = "" + getContext().getString(R.string.n_story_n_community, Integer.valueOf(storyTopic.storyCount), Integer.valueOf(storyTopic.communityCount));
                }
            }
        }
        this.tvDetail.setText(string);
        this.tvDetail.setVisibility(8);
    }

    public Drawable getDrawable(int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        float f = this.corner;
        float[] fArr = {f, f, 0.0f, 0.0f, 0.0f, 0.0f, f, f};
        if (Utils.isRtl()) {
            float f2 = this.corner;
            fArr = new float[]{0.0f, 0.0f, f2, f2, f2, f2, 0.0f, 0.0f};
        }
        gradientDrawable.setCornerRadii(fArr);
        gradientDrawable.setColor(i);
        return gradientDrawable;
    }
}
