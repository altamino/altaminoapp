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
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.feed.FeedListItem;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemFeedHeadlineLessImageBinding implements ViewBinding {

    @NonNull
    public final CommunityInfoLayoutBinding communityInfo;

    @NonNull
    public final FlexLayout contentContainer;

    @NonNull
    public final TextView feedCaption1;

    @NonNull
    public final FrameLayout feedImage1;

    @NonNull
    public final FeedToolbarHeadlineBinding feedToolbar;

    @NonNull
    public final FeedListItem headlineFeedItem;

    @NonNull
    public final ThumbImageView image;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public static ItemFeedHeadlineLessImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemFeedHeadlineLessImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_feed_headline_less_image, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemFeedHeadlineLessImageBinding(@NonNull LinearLayout linearLayout, @NonNull CommunityInfoLayoutBinding communityInfoLayoutBinding, @NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull FeedToolbarHeadlineBinding feedToolbarHeadlineBinding, @NonNull FeedListItem feedListItem, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.communityInfo = communityInfoLayoutBinding;
        this.contentContainer = flexLayout;
        this.feedCaption1 = textView;
        this.feedImage1 = frameLayout;
        this.feedToolbar = feedToolbarHeadlineBinding;
        this.headlineFeedItem = feedListItem;
        this.image = thumbImageView;
        this.title = textView2;
    }

    @NonNull
    public static ItemFeedHeadlineLessImageBinding bind(@NonNull View view) {
        int i10 = R.id.community_info;
        View viewA = ViewBindings.a(view, R.id.community_info);
        if (viewA != null) {
            CommunityInfoLayoutBinding communityInfoLayoutBindingBind = CommunityInfoLayoutBinding.bind(viewA);
            i10 = R.id.content_container;
            FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.content_container);
            if (flexLayout != null) {
                i10 = R.id.feed_caption1;
                TextView textView = (TextView) ViewBindings.a(view, R.id.feed_caption1);
                if (textView != null) {
                    i10 = R.id.feed_image1;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.feed_image1);
                    if (frameLayout != null) {
                        i10 = R.id.feed_toolbar;
                        View viewA2 = ViewBindings.a(view, R.id.feed_toolbar);
                        if (viewA2 != null) {
                            FeedToolbarHeadlineBinding feedToolbarHeadlineBindingBind = FeedToolbarHeadlineBinding.bind(viewA2);
                            i10 = R.id.headline_feed_item;
                            FeedListItem feedListItem = (FeedListItem) ViewBindings.a(view, R.id.headline_feed_item);
                            if (feedListItem != null) {
                                i10 = R.id.image;
                                ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
                                if (thumbImageView != null) {
                                    i10 = R.id.title;
                                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                                    if (textView2 != null) {
                                        return new ItemFeedHeadlineLessImageBinding((LinearLayout) view, communityInfoLayoutBindingBind, flexLayout, textView, frameLayout, feedToolbarHeadlineBindingBind, feedListItem, thumbImageView, textView2);
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
