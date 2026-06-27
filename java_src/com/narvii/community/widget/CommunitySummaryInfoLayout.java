package com.narvii.community.widget;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.Community;
import com.narvii.model.Feed;
import com.narvii.util.DateTimeFormatter;
import com.narvii.widget.NVImageView;

/* loaded from: classes2.dex */
public class CommunitySummaryInfoLayout extends LinearLayout {
    DateTimeFormatter dateTimeFormatter;
    NVImageView imgIcon;
    TextView tvCommunityMemberNumber;
    TextView tvFeedTime;
    TextView tvName;

    public CommunitySummaryInfoLayout(Context context) {
        this(context, null);
    }

    public CommunitySummaryInfoLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.dateTimeFormatter = DateTimeFormatter.getInstance(context);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.imgIcon = (NVImageView) findViewById(R.id.community_icon);
        this.tvName = (TextView) findViewById(R.id.community_name);
        this.tvFeedTime = (TextView) findViewById(R.id.feed_date_time);
    }

    public void setCommunity(Community community, Feed feed, Typeface typeface) {
        if (community == null) {
            return;
        }
        NVImageView nVImageView = this.imgIcon;
        if (nVImageView != null) {
            nVImageView.setImageUrl(community.icon);
        }
        TextView textView = this.tvName;
        if (textView != null) {
            textView.setText(community.name);
            if (typeface != null) {
                this.tvName.setTypeface(typeface);
            }
        }
        TextView textView2 = this.tvFeedTime;
        if (textView2 == null || feed == null) {
            return;
        }
        textView2.setText("• " + this.dateTimeFormatter.formatHeadlineFeedTime(feed.createdTime));
        this.tvFeedTime.setVisibility((feed.getHeadlineStyle() == null || !feed.getHeadlineStyle().displayTimeIndicator) ? 8 : 0);
    }

    public void setDarkTheme(boolean z) {
        TextView textView = this.tvName;
        if (textView != null) {
            textView.setTextColor(z ? -1 : -4013374);
        }
    }
}
