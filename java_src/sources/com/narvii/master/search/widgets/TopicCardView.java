package com.narvii.master.search.widgets;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.model.story.StoryTopic;
import com.narvii.topic.widgets.TopicCardCoverView;
import com.narvii.util.Utils;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes9.dex */
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

    public void setTopic(StoryTopic storyTopic, boolean z6) {
        setTopic(storyTopic, z6, false);
    }

    public TopicCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.corner = context.getResources().getDimension(R.dimen.topic_card_corner);
        View.inflate(context, R.layout.item_cell_topic_card, this);
    }

    public Drawable getDrawable(int i10) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        float f = this.corner;
        float[] fArr = {f, f, 0.0f, 0.0f, 0.0f, 0.0f, f, f};
        if (Utils.isRtl()) {
            float f6 = this.corner;
            fArr = new float[]{0.0f, 0.0f, f6, f6, f6, f6, 0.0f, 0.0f};
        }
        gradientDrawable.setCornerRadii(fArr);
        gradientDrawable.setColor(i10);
        return gradientDrawable;
    }

    public void setTopic(StoryTopic storyTopic, boolean z6, boolean z10) {
        setTopic(storyTopic, z6, z10, false);
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

    public void setTopic(StoryTopic storyTopic, boolean z6, boolean z10, boolean z11) {
        int i10;
        StoryTopic.Style style;
        if (storyTopic == null || (style = storyTopic.style) == null) {
            i10 = -1;
        } else {
            i10 = style.backgroundColor;
            if (z11) {
                this.coverView.showSubscribeTag();
            } else {
                this.coverView.hideSubscribeTag();
            }
            this.coverView.setTopic(storyTopic);
        }
        this.indicator2.setTintColor(i10);
        String string = "";
        this.tvTitle.setText(storyTopic == null ? "" : storyTopic.name);
        this.bookmarkIndicator.setVisibility((storyTopic.isBookmarked && z6) ? 0 : 4);
        View view = this.rightChevron;
        if (view != null) {
            view.setVisibility(z10 ? 0 : 4);
        }
        int i11 = storyTopic.storyCount;
        if (i11 == 0) {
            int i12 = storyTopic.communityCount;
            if (i12 != 0) {
                if (i12 == 1) {
                    string = "" + getContext().getString(R.string.communities_1);
                } else {
                    string = "" + getContext().getString(R.string.communities_n, Integer.valueOf(storyTopic.communityCount));
                }
            }
        } else if (i11 == 1) {
            int i13 = storyTopic.communityCount;
            if (i13 == 0) {
                string = "" + getContext().getString(R.string.sotry_count_1);
            } else if (i13 == 1) {
                string = "" + getContext().getString(R.string.one_story_1_community);
            } else {
                string = "" + getContext().getString(R.string.one_story_n_community, Integer.valueOf(storyTopic.communityCount));
            }
        } else if (i11 > 1) {
            int i14 = storyTopic.communityCount;
            if (i14 == 0) {
                StringBuilder sb = new StringBuilder();
                sb.append("");
                sb.append(getContext().getString(R.string.sotry_count_n, "" + storyTopic.storyCount));
                string = sb.toString();
            } else if (i14 == 1) {
                string = "" + getContext().getString(R.string.n_story_1_community, Integer.valueOf(storyTopic.storyCount));
            } else {
                string = "" + getContext().getString(R.string.n_story_n_community, Integer.valueOf(storyTopic.storyCount), Integer.valueOf(storyTopic.communityCount));
            }
        }
        this.tvDetail.setText(string);
        this.tvDetail.setVisibility(8);
    }
}
