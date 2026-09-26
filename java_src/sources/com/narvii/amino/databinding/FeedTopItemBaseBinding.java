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

/* JADX INFO: loaded from: classes4.dex */
public final class FeedTopItemBaseBinding implements ViewBinding {

    @NonNull
    public final TextView cornerIcon;

    @NonNull
    public final View divider;

    @NonNull
    public final PopularFeedListItem feedItemBase;

    @NonNull
    public final FeedPopularToolbarTopBinding feedToolbar;

    @NonNull
    public final SecretImageView image;

    @NonNull
    public final TextView pollQuizExtraText;

    @NonNull
    public final TextView readMore;

    @NonNull
    private final PopularFeedListItem rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static FeedTopItemBaseBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public PopularFeedListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedTopItemBaseBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_top_item_base, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedTopItemBaseBinding(@NonNull PopularFeedListItem popularFeedListItem, @NonNull TextView textView, @NonNull View view, @NonNull PopularFeedListItem popularFeedListItem2, @NonNull FeedPopularToolbarTopBinding feedPopularToolbarTopBinding, @NonNull SecretImageView secretImageView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = popularFeedListItem;
        this.cornerIcon = textView;
        this.divider = view;
        this.feedItemBase = popularFeedListItem2;
        this.feedToolbar = feedPopularToolbarTopBinding;
        this.image = secretImageView;
        this.pollQuizExtraText = textView2;
        this.readMore = textView3;
        this.text = textView4;
    }

    @NonNull
    public static FeedTopItemBaseBinding bind(@NonNull View view) {
        int i10 = R.id.corner_icon;
        TextView textView = (TextView) ViewBindings.a(view, R.id.corner_icon);
        if (textView != null) {
            i10 = R.id.divider;
            View viewA = ViewBindings.a(view, R.id.divider);
            if (viewA != null) {
                PopularFeedListItem popularFeedListItem = (PopularFeedListItem) view;
                i10 = R.id.feed_toolbar;
                View viewA2 = ViewBindings.a(view, R.id.feed_toolbar);
                if (viewA2 != null) {
                    FeedPopularToolbarTopBinding feedPopularToolbarTopBindingBind = FeedPopularToolbarTopBinding.bind(viewA2);
                    i10 = R.id.image;
                    SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.image);
                    if (secretImageView != null) {
                        i10 = R.id.poll_quiz_extra_text;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.poll_quiz_extra_text);
                        if (textView2 != null) {
                            i10 = R.id.read_more;
                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.read_more);
                            if (textView3 != null) {
                                i10 = R.id.text;
                                TextView textView4 = (TextView) ViewBindings.a(view, R.id.text);
                                if (textView4 != null) {
                                    return new FeedTopItemBaseBinding(popularFeedListItem, textView, viewA, popularFeedListItem, feedPopularToolbarTopBindingBind, secretImageView, textView2, textView3, textView4);
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
