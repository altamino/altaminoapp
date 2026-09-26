package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.blog.post.LinkPostPreviewLayout;

/* JADX INFO: loaded from: classes8.dex */
public final class LinkPreviewLayoutBinding implements ViewBinding {

    @NonNull
    public final LinkPreviewContentBinding linkPreviewContent;

    @NonNull
    public final LinkPreviewFailBinding linkPreviewFail;

    @NonNull
    public final LinkPostPreviewLayout linkPreviewLayout;

    @NonNull
    public final LinkPreviewLoadingBinding linkPreviewLoading;

    @NonNull
    private final LinkPostPreviewLayout rootView;

    @NonNull
    public static LinkPreviewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinkPostPreviewLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LinkPreviewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.link_preview_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LinkPreviewLayoutBinding(@NonNull LinkPostPreviewLayout linkPostPreviewLayout, @NonNull LinkPreviewContentBinding linkPreviewContentBinding, @NonNull LinkPreviewFailBinding linkPreviewFailBinding, @NonNull LinkPostPreviewLayout linkPostPreviewLayout2, @NonNull LinkPreviewLoadingBinding linkPreviewLoadingBinding) {
        this.rootView = linkPostPreviewLayout;
        this.linkPreviewContent = linkPreviewContentBinding;
        this.linkPreviewFail = linkPreviewFailBinding;
        this.linkPreviewLayout = linkPostPreviewLayout2;
        this.linkPreviewLoading = linkPreviewLoadingBinding;
    }

    @NonNull
    public static LinkPreviewLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.link_preview_content;
        View viewA = ViewBindings.a(view, R.id.link_preview_content);
        if (viewA != null) {
            LinkPreviewContentBinding linkPreviewContentBindingBind = LinkPreviewContentBinding.bind(viewA);
            i10 = R.id.link_preview_fail;
            View viewA2 = ViewBindings.a(view, R.id.link_preview_fail);
            if (viewA2 != null) {
                LinkPreviewFailBinding linkPreviewFailBindingBind = LinkPreviewFailBinding.bind(viewA2);
                LinkPostPreviewLayout linkPostPreviewLayout = (LinkPostPreviewLayout) view;
                i10 = R.id.link_preview_loading;
                View viewA3 = ViewBindings.a(view, R.id.link_preview_loading);
                if (viewA3 != null) {
                    return new LinkPreviewLayoutBinding(linkPostPreviewLayout, linkPreviewContentBindingBind, linkPreviewFailBindingBind, linkPostPreviewLayout, LinkPreviewLoadingBinding.bind(viewA3));
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
