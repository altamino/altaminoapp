package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.feed.PopularFeedListItem;
import com.narvii.widget.SecretImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class FeedItemBaseBinding implements ViewBinding {

    @NonNull
    public final TextView cornerIcon;

    @NonNull
    public final PopularFeedListItem feedItemBase;

    @NonNull
    public final FeedPopularToolbarBinding feedToolbar;

    @NonNull
    public final SecretImageView image;

    @NonNull
    private final PopularFeedListItem rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static FeedItemBaseBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public PopularFeedListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedItemBaseBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_item_base, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedItemBaseBinding(@NonNull PopularFeedListItem popularFeedListItem, @NonNull TextView textView, @NonNull PopularFeedListItem popularFeedListItem2, @NonNull FeedPopularToolbarBinding feedPopularToolbarBinding, @NonNull SecretImageView secretImageView, @NonNull TextView textView2) {
        this.rootView = popularFeedListItem;
        this.cornerIcon = textView;
        this.feedItemBase = popularFeedListItem2;
        this.feedToolbar = feedPopularToolbarBinding;
        this.image = secretImageView;
        this.text = textView2;
    }

    @NonNull
    public static FeedItemBaseBinding bind(@NonNull View view) {
        int i10 = R.id.corner_icon;
        TextView textView = (TextView) ViewBindings.a(view, R.id.corner_icon);
        if (textView != null) {
            PopularFeedListItem popularFeedListItem = (PopularFeedListItem) view;
            i10 = R.id.feed_toolbar;
            View viewA = ViewBindings.a(view, R.id.feed_toolbar);
            if (viewA != null) {
                FeedPopularToolbarBinding feedPopularToolbarBindingBind = FeedPopularToolbarBinding.bind(viewA);
                i10 = R.id.image;
                SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.image);
                if (secretImageView != null) {
                    i10 = R.id.text;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.text);
                    if (textView2 != null) {
                        return new FeedItemBaseBinding(popularFeedListItem, textView, popularFeedListItem, feedPopularToolbarBindingBind, secretImageView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
