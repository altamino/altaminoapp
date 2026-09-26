package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemSnippetSharedPhotoBinding implements ViewBinding {

    @NonNull
    public final SnippetFeedToolbarBinding feedToolbar;

    @NonNull
    public final ThumbImageView image;

    @NonNull
    private final RelativeLayout rootView;

    @NonNull
    public final FlexLayout snippetFeedImageLayout;

    @NonNull
    public static ItemSnippetSharedPhotoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public RelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSnippetSharedPhotoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_snippet_shared_photo, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSnippetSharedPhotoBinding(@NonNull RelativeLayout relativeLayout, @NonNull SnippetFeedToolbarBinding snippetFeedToolbarBinding, @NonNull ThumbImageView thumbImageView, @NonNull FlexLayout flexLayout) {
        this.rootView = relativeLayout;
        this.feedToolbar = snippetFeedToolbarBinding;
        this.image = thumbImageView;
        this.snippetFeedImageLayout = flexLayout;
    }

    @NonNull
    public static ItemSnippetSharedPhotoBinding bind(@NonNull View view) {
        int i10 = R.id.feed_toolbar;
        View viewA = ViewBindings.a(view, R.id.feed_toolbar);
        if (viewA != null) {
            SnippetFeedToolbarBinding snippetFeedToolbarBindingBind = SnippetFeedToolbarBinding.bind(viewA);
            int i11 = R.id.image;
            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.image);
            if (thumbImageView != null) {
                i11 = R.id.snippet_feed_image_layout;
                FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.snippet_feed_image_layout);
                if (flexLayout != null) {
                    return new ItemSnippetSharedPhotoBinding((RelativeLayout) view, snippetFeedToolbarBindingBind, thumbImageView, flexLayout);
                }
            }
            i10 = i11;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
