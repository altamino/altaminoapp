package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SmoothProgressBar;

/* JADX INFO: loaded from: classes5.dex */
public final class ItemTemplateMaterailSortMediaBinding implements ViewBinding {

    @NonNull
    public final FrameLayout container;

    @NonNull
    public final ImageView delete;

    @NonNull
    public final NVImageView image;

    @NonNull
    public final FrameLayout imageContainer;

    @NonNull
    public final FrameLayout imageEdit;

    @NonNull
    public final View mask;

    @NonNull
    public final SmoothProgressBar progress;

    @NonNull
    public final ImageView retry;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ItemTemplateMaterailSortMediaBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemTemplateMaterailSortMediaBinding bind(@NonNull View view) {
        View viewA;
        int i10 = R.id.container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
        if (frameLayout != null) {
            i10 = R.id.delete;
            ImageView imageView = (ImageView) ViewBindings.a(view, i10);
            if (imageView != null) {
                i10 = R.id.image;
                NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
                if (nVImageView != null) {
                    i10 = R.id.image_container;
                    FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(view, i10);
                    if (frameLayout2 != null) {
                        i10 = R.id.image_edit;
                        FrameLayout frameLayout3 = (FrameLayout) ViewBindings.a(view, i10);
                        if (frameLayout3 != null && (viewA = ViewBindings.a(view, (i10 = R.id.mask))) != null) {
                            i10 = R.id.progress;
                            SmoothProgressBar smoothProgressBar = (SmoothProgressBar) ViewBindings.a(view, i10);
                            if (smoothProgressBar != null) {
                                i10 = R.id.retry;
                                ImageView imageView2 = (ImageView) ViewBindings.a(view, i10);
                                if (imageView2 != null) {
                                    return new ItemTemplateMaterailSortMediaBinding((FrameLayout) view, frameLayout, imageView, nVImageView, frameLayout2, frameLayout3, viewA, smoothProgressBar, imageView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemTemplateMaterailSortMediaBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_template_materail_sort_media, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemTemplateMaterailSortMediaBinding(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull NVImageView nVImageView, @NonNull FrameLayout frameLayout3, @NonNull FrameLayout frameLayout4, @NonNull View view, @NonNull SmoothProgressBar smoothProgressBar, @NonNull ImageView imageView2) {
        this.rootView = frameLayout;
        this.container = frameLayout2;
        this.delete = imageView;
        this.image = nVImageView;
        this.imageContainer = frameLayout3;
        this.imageEdit = frameLayout4;
        this.mask = view;
        this.progress = smoothProgressBar;
        this.retry = imageView2;
    }
}
