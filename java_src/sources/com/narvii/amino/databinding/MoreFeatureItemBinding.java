package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.feed.PopularFeedListItem;
import com.narvii.widget.SecretImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class MoreFeatureItemBinding implements ViewBinding {

    @NonNull
    public final View divider;

    @NonNull
    public final PopularFeedListItem feedItemBase;

    @NonNull
    public final FeedPopularToolbarTopSmallBinding feedToolbar;

    @NonNull
    public final SecretImageView image;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static MoreFeatureItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MoreFeatureItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.more_feature_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MoreFeatureItemBinding(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull PopularFeedListItem popularFeedListItem, @NonNull FeedPopularToolbarTopSmallBinding feedPopularToolbarTopSmallBinding, @NonNull SecretImageView secretImageView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.divider = view;
        this.feedItemBase = popularFeedListItem;
        this.feedToolbar = feedPopularToolbarTopSmallBinding;
        this.image = secretImageView;
        this.text = textView;
    }

    @NonNull
    public static MoreFeatureItemBinding bind(@NonNull View view) {
        int i10 = R.id.divider;
        View viewA = ViewBindings.a(view, R.id.divider);
        if (viewA != null) {
            i10 = R.id.feed_item_base;
            PopularFeedListItem popularFeedListItem = (PopularFeedListItem) ViewBindings.a(view, R.id.feed_item_base);
            if (popularFeedListItem != null) {
                i10 = R.id.feed_toolbar;
                View viewA2 = ViewBindings.a(view, R.id.feed_toolbar);
                if (viewA2 != null) {
                    FeedPopularToolbarTopSmallBinding feedPopularToolbarTopSmallBindingBind = FeedPopularToolbarTopSmallBinding.bind(viewA2);
                    i10 = R.id.image;
                    SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.image);
                    if (secretImageView != null) {
                        i10 = R.id.text;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.text);
                        if (textView != null) {
                            return new MoreFeatureItemBinding((LinearLayout) view, viewA, popularFeedListItem, feedPopularToolbarTopSmallBindingBind, secretImageView, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
