package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.feed.PopularFeedListItem;

/* JADX INFO: loaded from: classes9.dex */
public final class MoreFeatureItemTextBinding implements ViewBinding {

    @NonNull
    public final View divider;

    @NonNull
    public final PopularFeedListItem feedItemBase;

    @NonNull
    public final CardView feedItemContainer;

    @NonNull
    public final FeedPopularToolbarTopSmallBinding feedToolbar;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static MoreFeatureItemTextBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MoreFeatureItemTextBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.more_feature_item_text, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MoreFeatureItemTextBinding(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull PopularFeedListItem popularFeedListItem, @NonNull CardView cardView, @NonNull FeedPopularToolbarTopSmallBinding feedPopularToolbarTopSmallBinding, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.divider = view;
        this.feedItemBase = popularFeedListItem;
        this.feedItemContainer = cardView;
        this.feedToolbar = feedPopularToolbarTopSmallBinding;
        this.text = textView;
    }

    @NonNull
    public static MoreFeatureItemTextBinding bind(@NonNull View view) {
        int i10 = R.id.divider;
        View viewA = ViewBindings.a(view, R.id.divider);
        if (viewA != null) {
            i10 = R.id.feed_item_base;
            PopularFeedListItem popularFeedListItem = (PopularFeedListItem) ViewBindings.a(view, R.id.feed_item_base);
            if (popularFeedListItem != null) {
                i10 = R.id.feed_item_container;
                CardView cardView = (CardView) ViewBindings.a(view, R.id.feed_item_container);
                if (cardView != null) {
                    i10 = R.id.feed_toolbar;
                    View viewA2 = ViewBindings.a(view, R.id.feed_toolbar);
                    if (viewA2 != null) {
                        FeedPopularToolbarTopSmallBinding feedPopularToolbarTopSmallBindingBind = FeedPopularToolbarTopSmallBinding.bind(viewA2);
                        i10 = R.id.text;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.text);
                        if (textView != null) {
                            return new MoreFeatureItemTextBinding((LinearLayout) view, viewA, popularFeedListItem, cardView, feedPopularToolbarTopSmallBindingBind, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
