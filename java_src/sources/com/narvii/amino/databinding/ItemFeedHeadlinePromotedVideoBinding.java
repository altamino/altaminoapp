package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.feed.FeedListItem;
import com.narvii.widget.FlexSizeImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemFeedHeadlinePromotedVideoBinding implements ViewBinding {

    @NonNull
    public final CommunityInfoLayoutBinding communityInfo;

    @NonNull
    public final FrameLayout contentContainer;

    @NonNull
    public final TextView feedCaption1;

    @NonNull
    public final FrameLayout feedImage1;

    @NonNull
    public final FeedToolbarHeadlineBinding feedToolbar;

    @NonNull
    public final FrameLayout headerContainer;

    @NonNull
    public final FeedListItem headlineFeedItem;

    @NonNull
    public final FlexSizeImageView image;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public final FeedUserHeaderHeadlineBinding userHead;

    @NonNull
    public static ItemFeedHeadlinePromotedVideoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemFeedHeadlinePromotedVideoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_feed_headline_promoted_video, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemFeedHeadlinePromotedVideoBinding(@NonNull LinearLayout linearLayout, @NonNull CommunityInfoLayoutBinding communityInfoLayoutBinding, @NonNull FrameLayout frameLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout2, @NonNull FeedToolbarHeadlineBinding feedToolbarHeadlineBinding, @NonNull FrameLayout frameLayout3, @NonNull FeedListItem feedListItem, @NonNull FlexSizeImageView flexSizeImageView, @NonNull TextView textView2, @NonNull FeedUserHeaderHeadlineBinding feedUserHeaderHeadlineBinding) {
        this.rootView = linearLayout;
        this.communityInfo = communityInfoLayoutBinding;
        this.contentContainer = frameLayout;
        this.feedCaption1 = textView;
        this.feedImage1 = frameLayout2;
        this.feedToolbar = feedToolbarHeadlineBinding;
        this.headerContainer = frameLayout3;
        this.headlineFeedItem = feedListItem;
        this.image = flexSizeImageView;
        this.title = textView2;
        this.userHead = feedUserHeaderHeadlineBinding;
    }

    @NonNull
    public static ItemFeedHeadlinePromotedVideoBinding bind(@NonNull View view) {
        int i10 = R.id.community_info;
        View viewA = ViewBindings.a(view, R.id.community_info);
        if (viewA != null) {
            CommunityInfoLayoutBinding communityInfoLayoutBindingBind = CommunityInfoLayoutBinding.bind(viewA);
            i10 = R.id.content_container;
            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.content_container);
            if (frameLayout != null) {
                i10 = R.id.feed_caption1;
                TextView textView = (TextView) ViewBindings.a(view, R.id.feed_caption1);
                if (textView != null) {
                    i10 = R.id.feed_image1;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, R.id.feed_image1);
                    if (frameLayout2 != null) {
                        i10 = R.id.feed_toolbar;
                        View viewA2 = ViewBindings.a(view, R.id.feed_toolbar);
                        if (viewA2 != null) {
                            FeedToolbarHeadlineBinding feedToolbarHeadlineBindingBind = FeedToolbarHeadlineBinding.bind(viewA2);
                            i10 = R.id.header_container;
                            FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, R.id.header_container);
                            if (frameLayout3 != null) {
                                i10 = R.id.headline_feed_item;
                                FeedListItem feedListItem = (FeedListItem) ViewBindings.a(view, R.id.headline_feed_item);
                                if (feedListItem != null) {
                                    i10 = R.id.image;
                                    FlexSizeImageView flexSizeImageView = (FlexSizeImageView) ViewBindings.a(view, R.id.image);
                                    if (flexSizeImageView != null) {
                                        i10 = R.id.title;
                                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                                        if (textView2 != null) {
                                            i10 = R.id.user_head;
                                            View viewA3 = ViewBindings.a(view, R.id.user_head);
                                            if (viewA3 != null) {
                                                return new ItemFeedHeadlinePromotedVideoBinding((LinearLayout) view, communityInfoLayoutBindingBind, frameLayout, textView, frameLayout2, feedToolbarHeadlineBindingBind, frameLayout3, feedListItem, flexSizeImageView, textView2, FeedUserHeaderHeadlineBinding.bind(viewA3));
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
