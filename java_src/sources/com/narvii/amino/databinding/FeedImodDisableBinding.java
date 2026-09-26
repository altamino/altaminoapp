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
public final class FeedImodDisableBinding implements ViewBinding {

    @NonNull
    public final TextView disabledContent;

    @NonNull
    public final FeedToolbarBinding feedToolbar;

    @NonNull
    private final FeedListItem rootView;

    @NonNull
    public final TextView title;

    @NonNull
    public final FeedUserHeaderBinding userHead;

    @NonNull
    public static FeedImodDisableBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedImodDisableBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_imod_disable, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedImodDisableBinding(@NonNull FeedListItem feedListItem, @NonNull TextView textView, @NonNull FeedToolbarBinding feedToolbarBinding, @NonNull TextView textView2, @NonNull FeedUserHeaderBinding feedUserHeaderBinding) {
        this.rootView = feedListItem;
        this.disabledContent = textView;
        this.feedToolbar = feedToolbarBinding;
        this.title = textView2;
        this.userHead = feedUserHeaderBinding;
    }

    @NonNull
    public static FeedImodDisableBinding bind(@NonNull View view) {
        int i10 = R.id.disabled_content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.disabled_content);
        if (textView != null) {
            i10 = R.id.feed_toolbar;
            View viewA = ViewBindings.a(view, R.id.feed_toolbar);
            if (viewA != null) {
                FeedToolbarBinding feedToolbarBindingBind = FeedToolbarBinding.bind(viewA);
                i10 = R.id.title;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                if (textView2 != null) {
                    i10 = R.id.user_head;
                    View viewA2 = ViewBindings.a(view, R.id.user_head);
                    if (viewA2 != null) {
                        return new FeedImodDisableBinding((FeedListItem) view, textView, feedToolbarBindingBind, textView2, FeedUserHeaderBinding.bind(viewA2));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
