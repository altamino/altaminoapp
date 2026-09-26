package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.sharedfolder.SharedPhotoTouchImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentMediaSelectSharedPhotoBinding implements ViewBinding {

    @NonNull
    public final SharedPhotoTouchImageView image;

    @NonNull
    public final ProgressBar imageLoading;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static FragmentMediaSelectSharedPhotoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentMediaSelectSharedPhotoBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_media_select_shared_photo, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentMediaSelectSharedPhotoBinding(@NonNull FrameLayout frameLayout, @NonNull SharedPhotoTouchImageView sharedPhotoTouchImageView, @NonNull ProgressBar progressBar) {
        this.rootView = frameLayout;
        this.image = sharedPhotoTouchImageView;
        this.imageLoading = progressBar;
    }

    @NonNull
    public static FragmentMediaSelectSharedPhotoBinding bind(@NonNull View view) {
        int i10 = R.id.image;
        SharedPhotoTouchImageView sharedPhotoTouchImageView = (SharedPhotoTouchImageView) ViewBindings.a(view, R.id.image);
        if (sharedPhotoTouchImageView != null) {
            i10 = R.id.image_loading;
            ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, R.id.image_loading);
            if (progressBar != null) {
                return new FragmentMediaSelectSharedPhotoBinding((FrameLayout) view, sharedPhotoTouchImageView, progressBar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
