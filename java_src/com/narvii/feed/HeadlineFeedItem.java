package com.narvii.feed;

import android.content.Context;
import android.util.AttributeSet;
import com.narvii.model.Feed;

/* loaded from: classes2.dex */
public class HeadlineFeedItem extends FeedListItem {
    public HeadlineFeedItem(Context context) {
        super(context);
    }

    public HeadlineFeedItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.narvii.feed.FeedListItem
    public void setFeed(Feed feed) {
        super.setFeed(feed);
    }

    @Override // com.narvii.feed.FeedListItem
    public void setFeed(Feed feed, boolean z) {
        super.setFeed(feed, z);
    }
}
