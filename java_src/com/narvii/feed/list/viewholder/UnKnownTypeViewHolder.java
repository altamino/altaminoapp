package com.narvii.feed.list.viewholder;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.feed.FeedListItem;
import com.narvii.model.Blog;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UnKnownTypeViewHolder.kt */
/* loaded from: classes2.dex */
public final class UnKnownTypeViewHolder extends RecyclerView.ViewHolder {
    private FeedListItem feedListItemView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UnKnownTypeViewHolder(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, View itemView) {
        super(itemView);
        Intrinsics.checkParameterIsNotNull(itemView, "itemView");
        this.feedListItemView = (FeedListItem) itemView.findViewById(R.id.feed_item);
    }

    public final FeedListItem getFeedListItemView() {
        return this.feedListItemView;
    }

    public final void setFeedListItemView(FeedListItem feedListItem) {
        this.feedListItemView = feedListItem;
    }

    public static /* synthetic */ void bindBlog$default(UnKnownTypeViewHolder unKnownTypeViewHolder, boolean z, Blog blog, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        unKnownTypeViewHolder.bindBlog(z, blog);
    }

    public final void bindBlog(boolean z, Blog blog) {
        FeedListItem feedListItem = this.feedListItemView;
        if (feedListItem != null) {
            feedListItem.setDarkTheme(z, -1);
        }
        FeedListItem feedListItem2 = this.feedListItemView;
        if (feedListItem2 != null) {
            feedListItem2.setFeed(blog);
        }
    }
}
