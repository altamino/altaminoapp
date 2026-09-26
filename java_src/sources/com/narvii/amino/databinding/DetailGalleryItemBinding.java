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
import com.narvii.widget.ThumbGallery;

/* JADX INFO: loaded from: classes6.dex */
public final class DetailGalleryItemBinding implements ViewBinding {

    @NonNull
    public final ThumbGallery pager;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static DetailGalleryItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailGalleryItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_gallery_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailGalleryItemBinding(@NonNull FrameLayout frameLayout, @NonNull ThumbGallery thumbGallery) {
        this.rootView = frameLayout;
        this.pager = thumbGallery;
    }

    @NonNull
    public static DetailGalleryItemBinding bind(@NonNull View view) {
        ThumbGallery thumbGallery = (ThumbGallery) ViewBindings.a(view, R.id.pager);
        if (thumbGallery != null) {
            return new DetailGalleryItemBinding((FrameLayout) view, thumbGallery);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.pager)));
    }
}
