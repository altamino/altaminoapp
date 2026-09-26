package com.narvii.community.widget;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.model.Community;
import com.narvii.model.Feed;
import com.narvii.util.DateTimeFormatter;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes7.dex */
public class CommunitySummaryInfoLayout extends LinearLayout {
    DateTimeFormatter dateTimeFormatter;
    NVImageView imgIcon;
    TextView tvCommunityMemberNumber;
    TextView tvFeedTime;
    TextView tvName;

    public CommunitySummaryInfoLayout(Context context) {
        this(context, null);
    }

    public CommunitySummaryInfoLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.dateTimeFormatter = DateTimeFormatter.getInstance(context);
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

    public void setDarkTheme(boolean z6) {
        TextView textView = this.tvName;
        if (textView != null) {
            textView.setTextColor(z6 ? -1 : -4013374);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.imgIcon = (NVImageView) findViewById(R.id.community_icon);
        this.tvName = (TextView) findViewById(R.id.community_name);
        this.tvFeedTime = (TextView) findViewById(R.id.feed_date_time);
    }
}
