package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.feed.FeedListItem;
import com.narvii.widget.SecretImageView;

/* JADX INFO: loaded from: classes8.dex */
public final class ItemSnippetFeedImageBinding implements ViewBinding {

    @NonNull
    public final TextView content;

    @NonNull
    public final SnippetFeedToolbarBinding feedToolbar;

    @NonNull
    public final SecretImageView image;

    @NonNull
    private final FeedListItem rootView;

    @NonNull
    public final FlexLayout snippetFeedImageLayout;

    @NonNull
    public final TextView title;

    @NonNull
    public static ItemSnippetFeedImageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FeedListItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSnippetFeedImageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_snippet_feed_image, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSnippetFeedImageBinding(@NonNull FeedListItem feedListItem, @NonNull TextView textView, @NonNull SnippetFeedToolbarBinding snippetFeedToolbarBinding, @NonNull SecretImageView secretImageView, @NonNull FlexLayout flexLayout, @NonNull TextView textView2) {
        this.rootView = feedListItem;
        this.content = textView;
        this.feedToolbar = snippetFeedToolbarBinding;
        this.image = secretImageView;
        this.snippetFeedImageLayout = flexLayout;
        this.title = textView2;
    }

    @NonNull
    public static ItemSnippetFeedImageBinding bind(@NonNull View view) {
        int i10 = R.id.content;
        TextView textView = (TextView) ViewBindings.a(view, R.id.content);
        if (textView != null) {
            i10 = R.id.feed_toolbar;
            View viewA = ViewBindings.a(view, R.id.feed_toolbar);
            if (viewA != null) {
                SnippetFeedToolbarBinding snippetFeedToolbarBindingBind = SnippetFeedToolbarBinding.bind(viewA);
                i10 = R.id.image;
                SecretImageView secretImageView = (SecretImageView) ViewBindings.a(view, R.id.image);
                if (secretImageView != null) {
                    i10 = R.id.snippet_feed_image_layout;
                    FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.snippet_feed_image_layout);
                    if (flexLayout != null) {
                        i10 = R.id.title;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.title);
                        if (textView2 != null) {
                            return new ItemSnippetFeedImageBinding((FeedListItem) view, textView, snippetFeedToolbarBindingBind, secretImageView, flexLayout, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
