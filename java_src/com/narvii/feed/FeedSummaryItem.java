package com.narvii.feed;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.widget.CardView;
import com.narvii.widget.NVImageView;

/* loaded from: classes2.dex */
public class FeedSummaryItem extends LinearLayout {
    CardView itemCardView;
    NVImageView thumbImage;
    TextView tvContent;
    TextView tvTitle;

    public FeedSummaryItem(Context context) {
        super(context);
    }

    public FeedSummaryItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public FeedSummaryItem(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.thumbImage = (NVImageView) findViewById(R.id.image);
        this.tvTitle = (TextView) findViewById(R.id.feed_title);
        this.tvContent = (TextView) findViewById(R.id.feed_content);
        if (findViewById(R.id.item_card) != null) {
            this.itemCardView = (CardView) findViewById(R.id.item_card);
        }
    }

    public void setFeed(Feed feed) {
        CardView cardView;
        if (feed == null) {
            return;
        }
        if (this.thumbImage != null) {
            if (feed.firstMedia() != null) {
                this.thumbImage.setImageMedia(feed.firstMedia());
                this.thumbImage.setVisibility(0);
            } else {
                this.thumbImage.setVisibility(8);
            }
        }
        if (this.tvTitle != null) {
            String strTitle = feed.title();
            if (!TextUtils.isEmpty(strTitle)) {
                this.tvTitle.setText(strTitle);
            } else {
                this.tvTitle.setVisibility(8);
            }
        }
        if (this.tvContent != null) {
            String strCompactContent = feed.compactContent();
            if (!TextUtils.isEmpty(strCompactContent)) {
                this.tvContent.setText(strCompactContent);
            } else {
                this.tvContent.setVisibility(8);
            }
        }
        if (!(feed instanceof Item) || (cardView = this.itemCardView) == null) {
            return;
        }
        cardView.setItem((Item) feed);
        this.itemCardView.findViewById(R.id.title).setVisibility(4);
    }
}
