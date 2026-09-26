package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.feed.HeadlineFeedItem;

/* JADX INFO: loaded from: classes5.dex */
public final class FeedBlogExternalLessImageBinding implements ViewBinding {

    @NonNull
    public final FrameLayout contentContainer;

    @NonNull
    public final FeedToolbarBinding feedToolbar;

    @NonNull
    private final HeadlineFeedItem rootView;

    @NonNull
    public final FeedExternalPostHeaderBinding userClick;

    @NonNull
    public static FeedBlogExternalLessImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public HeadlineFeedItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FeedBlogExternalLessImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.feed_blog_external_less_image, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FeedBlogExternalLessImageBinding(@NonNull HeadlineFeedItem headlineFeedItem, @NonNull FrameLayout frameLayout, @NonNull FeedToolbarBinding feedToolbarBinding, @NonNull FeedExternalPostHeaderBinding feedExternalPostHeaderBinding) {
        this.rootView = headlineFeedItem;
        this.contentContainer = frameLayout;
        this.feedToolbar = feedToolbarBinding;
        this.userClick = feedExternalPostHeaderBinding;
    }

    @NonNull
    public static FeedBlogExternalLessImageBinding bind(@NonNull View view) {
        int i10 = R.id.content_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.content_container);
        if (frameLayout != null) {
            i10 = R.id.feed_toolbar;
            View viewA = ViewBindings.a(view, R.id.feed_toolbar);
            if (viewA != null) {
                FeedToolbarBinding feedToolbarBindingBind = FeedToolbarBinding.bind(viewA);
                View viewA2 = ViewBindings.a(view, R.id.user_click);
                if (viewA2 != null) {
                    return new FeedBlogExternalLessImageBinding((HeadlineFeedItem) view, frameLayout, feedToolbarBindingBind, FeedExternalPostHeaderBinding.bind(viewA2));
                }
                i10 = R.id.user_click;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
