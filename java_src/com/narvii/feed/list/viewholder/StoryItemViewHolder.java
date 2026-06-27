package com.narvii.feed.list.viewholder;

import android.support.v7.widget.RecyclerView;
import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.feed.FeedListItem;
import com.narvii.model.Blog;
import com.narvii.paging.adapter.NVRecyclerViewBaseAdapter;
import java.util.HashSet;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StoryItemViewHolder.kt */
/* loaded from: classes2.dex */
public final class StoryItemViewHolder extends RecyclerView.ViewHolder {
    private final View btnComment;
    private final View btnImg;
    private final View btnMore;
    private final View btnUserHeader;
    private final View btnVote;
    private FeedListItem feedListItemView;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoryItemViewHolder(NVRecyclerViewBaseAdapter nVRecyclerViewBaseAdapter, View itemView) {
        super(itemView);
        Intrinsics.checkParameterIsNotNull(itemView, "itemView");
        this.feedListItemView = (FeedListItem) itemView.findViewById(R.id.feed_item);
        this.btnUserHeader = itemView.findViewById(R.id.user_click);
        this.btnImg = itemView.findViewById(R.id.image);
        this.btnVote = itemView.findViewById(R.id.feed_toolbar_vote);
        this.btnComment = itemView.findViewById(R.id.feed_toolbar_comment);
        this.btnMore = itemView.findViewById(R.id.headline_feed_options);
        this.btnUserHeader.setOnClickListener(nVRecyclerViewBaseAdapter != null ? nVRecyclerViewBaseAdapter.subviewClickListener : null);
        this.btnImg.setOnClickListener(nVRecyclerViewBaseAdapter != null ? nVRecyclerViewBaseAdapter.subviewClickListener : null);
        this.btnVote.setOnClickListener(nVRecyclerViewBaseAdapter != null ? nVRecyclerViewBaseAdapter.subviewClickListener : null);
        this.btnComment.setOnClickListener(nVRecyclerViewBaseAdapter != null ? nVRecyclerViewBaseAdapter.subviewClickListener : null);
        this.btnMore.setOnClickListener(nVRecyclerViewBaseAdapter != null ? nVRecyclerViewBaseAdapter.subviewClickListener : null);
    }

    public final FeedListItem getFeedListItemView() {
        return this.feedListItemView;
    }

    public final void setFeedListItemView(FeedListItem feedListItem) {
        this.feedListItemView = feedListItem;
    }

    public final View getBtnUserHeader() {
        return this.btnUserHeader;
    }

    public final View getBtnImg() {
        return this.btnImg;
    }

    public final View getBtnVote() {
        return this.btnVote;
    }

    public final View getBtnComment() {
        return this.btnComment;
    }

    public final View getBtnMore() {
        return this.btnMore;
    }

    public static /* synthetic */ void bindBlog$default(StoryItemViewHolder storyItemViewHolder, boolean z, Blog blog, HashSet hashSet, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        storyItemViewHolder.bindBlog(z, blog, hashSet);
    }

    public final void bindBlog(boolean z, Blog blog, HashSet<String> hashSet) {
        View viewFindViewById;
        FeedListItem feedListItem = this.feedListItemView;
        if (feedListItem != null && (viewFindViewById = feedListItem.findViewById(R.id.nickname)) != null) {
            viewFindViewById.setBackgroundDrawable(null);
        }
        FeedListItem feedListItem2 = this.feedListItemView;
        if (feedListItem2 != null) {
            feedListItem2.setFeed(blog);
        }
        FeedListItem feedListItem3 = this.feedListItemView;
        if (feedListItem3 != null) {
            feedListItem3.setDarkTheme(z, -1);
        }
        FeedListItem feedListItem4 = this.feedListItemView;
        boolean z2 = false;
        if (feedListItem4 != null) {
            feedListItem4.setDarkTheme(true, 0);
        }
        if ((blog != null ? blog.id() : null) != null && hashSet != null && hashSet.contains(blog.id())) {
            z2 = true;
        }
        FeedListItem feedListItem5 = this.feedListItemView;
        if (feedListItem5 != null) {
            feedListItem5.setProgress(z2);
        }
    }
}
