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

/* JADX INFO: loaded from: classes8.dex */
public final class FeedItemSeparateBaseBinding implements ViewBinding {

    @NonNull
    public final TextView cornerIcon;

    @NonNull
    public final PopularFeedListItem feedItemBase;

    @NonNull
    public final FeedPopularToolbarBinding feedToolbar;

    @NonNull
    public final SecretImageView image;

    @NonNull
    public final TextView pollQuizExtraText;

    @NonNull
    private final PopularFeedListItem rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static FeedItemSeparateBaseBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public PopularFeedListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedItemSeparateBaseBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_item_separate_base, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedItemSeparateBaseBinding(@NonNull PopularFeedListItem popularFeedListItem, @NonNull TextView textView, @NonNull PopularFeedListItem popularFeedListItem2, @NonNull FeedPopularToolbarBinding feedPopularToolbarBinding, @NonNull SecretImageView secretImageView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = popularFeedListItem;
        this.cornerIcon = textView;
        this.feedItemBase = popularFeedListItem2;
        this.feedToolbar = feedPopularToolbarBinding;
        this.image = secretImageView;
        this.pollQuizExtraText = textView2;
        this.text = textView3;
    }

    @NonNull
    public static FeedItemSeparateBaseBinding bind(@NonNull View view) {
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
                    i10 = R.id.poll_quiz_extra_text;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.poll_quiz_extra_text);
                    if (textView2 != null) {
                        i10 = R.id.text;
                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.text);
                        if (textView3 != null) {
                            return new FeedItemSeparateBaseBinding(popularFeedListItem, textView, popularFeedListItem, feedPopularToolbarBindingBind, secretImageView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
