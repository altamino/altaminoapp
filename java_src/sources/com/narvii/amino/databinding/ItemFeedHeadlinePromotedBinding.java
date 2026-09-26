package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.feed.FeedListItem;

/* JADX INFO: loaded from: classes9.dex */
public final class ItemFeedHeadlinePromotedBinding implements ViewBinding {

    @NonNull
    public final CommunityInfoLayoutBinding communityInfo;

    @NonNull
    public final FrameLayout contentContainer;

    @NonNull
    public final FeedToolbarHeadlineBinding feedToolbar;

    @NonNull
    public final FeedListItem headlineFeedItem;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ItemFeedHeadlinePromotedBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemFeedHeadlinePromotedBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_feed_headline_promoted, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemFeedHeadlinePromotedBinding(@NonNull LinearLayout linearLayout, @NonNull CommunityInfoLayoutBinding communityInfoLayoutBinding, @NonNull FrameLayout frameLayout, @NonNull FeedToolbarHeadlineBinding feedToolbarHeadlineBinding, @NonNull FeedListItem feedListItem) {
        this.rootView = linearLayout;
        this.communityInfo = communityInfoLayoutBinding;
        this.contentContainer = frameLayout;
        this.feedToolbar = feedToolbarHeadlineBinding;
        this.headlineFeedItem = feedListItem;
    }

    @NonNull
    public static ItemFeedHeadlinePromotedBinding bind(@NonNull View view) {
        int i10 = R.id.community_info;
        View viewA = ViewBindings.a(view, R.id.community_info);
        if (viewA != null) {
            CommunityInfoLayoutBinding communityInfoLayoutBindingBind = CommunityInfoLayoutBinding.bind(viewA);
            i10 = R.id.content_container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.content_container);
            if (frameLayout != null) {
                i10 = R.id.feed_toolbar;
                View viewA2 = ViewBindings.a(view, R.id.feed_toolbar);
                if (viewA2 != null) {
                    FeedToolbarHeadlineBinding feedToolbarHeadlineBindingBind = FeedToolbarHeadlineBinding.bind(viewA2);
                    i10 = R.id.headline_feed_item;
                    FeedListItem feedListItem = (FeedListItem) ViewBindings.a(view, R.id.headline_feed_item);
                    if (feedListItem != null) {
                        return new ItemFeedHeadlinePromotedBinding((LinearLayout) view, communityInfoLayoutBindingBind, frameLayout, feedToolbarHeadlineBindingBind, feedListItem);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
