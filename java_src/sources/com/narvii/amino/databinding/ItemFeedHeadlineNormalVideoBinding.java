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
public final class ItemFeedHeadlineNormalVideoBinding implements ViewBinding {

    @NonNull
    public final CommunityInfoLayoutBinding communityInfo;

    @NonNull
    public final FrameLayout contentContainer;

    @NonNull
    public final FeedToolbarHeadlineBinding feedToolbar;

    @NonNull
    public final FrameLayout headerContainer;

    @NonNull
    public final FeedListItem headlineFeedItem;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final FeedUserHeaderHeadlineBinding userHead;

    @NonNull
    public static ItemFeedHeadlineNormalVideoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemFeedHeadlineNormalVideoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_feed_headline_normal_video, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemFeedHeadlineNormalVideoBinding(@NonNull LinearLayout linearLayout, @NonNull CommunityInfoLayoutBinding communityInfoLayoutBinding, @NonNull FrameLayout frameLayout, @NonNull FeedToolbarHeadlineBinding feedToolbarHeadlineBinding, @NonNull FrameLayout frameLayout2, @NonNull FeedListItem feedListItem, @NonNull FeedUserHeaderHeadlineBinding feedUserHeaderHeadlineBinding) {
        this.rootView = linearLayout;
        this.communityInfo = communityInfoLayoutBinding;
        this.contentContainer = frameLayout;
        this.feedToolbar = feedToolbarHeadlineBinding;
        this.headerContainer = frameLayout2;
        this.headlineFeedItem = feedListItem;
        this.userHead = feedUserHeaderHeadlineBinding;
    }

    @NonNull
    public static ItemFeedHeadlineNormalVideoBinding bind(@NonNull View view) {
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
                    i10 = R.id.header_container;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.header_container);
                    if (frameLayout2 != null) {
                        i10 = R.id.headline_feed_item;
                        FeedListItem feedListItem = (FeedListItem) ViewBindings.a(view, R.id.headline_feed_item);
                        if (feedListItem != null) {
                            i10 = R.id.user_head;
                            View viewA3 = ViewBindings.a(view, R.id.user_head);
                            if (viewA3 != null) {
                                return new ItemFeedHeadlineNormalVideoBinding((LinearLayout) view, communityInfoLayoutBindingBind, frameLayout, feedToolbarHeadlineBindingBind, frameLayout2, feedListItem, FeedUserHeaderHeadlineBinding.bind(viewA3));
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
