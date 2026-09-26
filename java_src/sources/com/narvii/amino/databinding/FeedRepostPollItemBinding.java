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

/* JADX INFO: loaded from: classes8.dex */
public final class FeedRepostPollItemBinding implements ViewBinding {

    @NonNull
    public final TextView content;

    @NonNull
    public final FeedToolbarBinding feedToolbar;

    @NonNull
    public final FeedRefPollBinding ref;

    @NonNull
    private final FeedListItem rootView;

    @NonNull
    public final FeedUserHeaderBinding userHead;

    @NonNull
    public static FeedRepostPollItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedRepostPollItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_repost_poll_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedRepostPollItemBinding(@NonNull FeedListItem feedListItem, @NonNull TextView textView, @NonNull FeedToolbarBinding feedToolbarBinding, @NonNull FeedRefPollBinding feedRefPollBinding, @NonNull FeedUserHeaderBinding feedUserHeaderBinding) {
        this.rootView = feedListItem;
        this.content = textView;
        this.feedToolbar = feedToolbarBinding;
        this.ref = feedRefPollBinding;
        this.userHead = feedUserHeaderBinding;
    }

    @NonNull
    public static FeedRepostPollItemBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.content);
        if (textView != null) {
            i10 = R.id.feed_toolbar;
            View viewA = ViewBindings.a(view, R.id.feed_toolbar);
            if (viewA != null) {
                FeedToolbarBinding feedToolbarBindingBind = FeedToolbarBinding.bind(viewA);
                i10 = R.id.ref;
                View viewA2 = ViewBindings.a(view, R.id.ref);
                if (viewA2 != null) {
                    FeedRefPollBinding feedRefPollBindingBind = FeedRefPollBinding.bind(viewA2);
                    i10 = R.id.user_head;
                    View viewA3 = ViewBindings.a(view, R.id.user_head);
                    if (viewA3 != null) {
                        return new FeedRepostPollItemBinding((FeedListItem) view, textView, feedToolbarBindingBind, feedRefPollBindingBind, FeedUserHeaderBinding.bind(viewA3));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
