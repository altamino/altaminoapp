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
import com.narvii.feed.FeedListItem;

/* JADX INFO: loaded from: classes11.dex */
public final class FeedBlogUnknownBinding implements ViewBinding {

    @NonNull
    public final FeedListItem feedItem;

    @NonNull
    private final FeedListItem rootView;

    @NonNull
    public final TextView unknown;

    @NonNull
    public final FeedUserHeaderBinding userHead;

    @NonNull
    public static FeedBlogUnknownBinding bind(@NonNull View view) {
        FeedListItem feedListItem = (FeedListItem) view;
        int i10 = R.id.unknown;
        TextView textView = (TextView) ViewBindings.a(view, R.id.unknown);
        if (textView != null) {
            i10 = R.id.user_head;
            View viewA = ViewBindings.a(view, R.id.user_head);
            if (viewA != null) {
                return new FeedBlogUnknownBinding(feedListItem, feedListItem, textView, FeedUserHeaderBinding.bind(viewA));
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static FeedBlogUnknownBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedBlogUnknownBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_blog_unknown, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedBlogUnknownBinding(@NonNull FeedListItem feedListItem, @NonNull FeedListItem feedListItem2, @NonNull TextView textView, @NonNull FeedUserHeaderBinding feedUserHeaderBinding) {
        this.rootView = feedListItem;
        this.feedItem = feedListItem2;
        this.unknown = textView;
        this.userHead = feedUserHeaderBinding;
    }
}
