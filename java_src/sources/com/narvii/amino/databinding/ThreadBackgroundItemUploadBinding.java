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
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes6.dex */
public final class ThreadBackgroundItemUploadBinding implements ViewBinding {

    @NonNull
    public final NVImageView chatBackgroundItemImg;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ThreadBackgroundItemUploadBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ThreadBackgroundItemUploadBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.thread_background_item_upload, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ThreadBackgroundItemUploadBinding(@NonNull FrameLayout frameLayout, @NonNull NVImageView nVImageView) {
        this.rootView = frameLayout;
        this.chatBackgroundItemImg = nVImageView;
    }

    @NonNull
    public static ThreadBackgroundItemUploadBinding bind(@NonNull View view) {
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.chat_background_item_img);
        if (nVImageView != null) {
            return new ThreadBackgroundItemUploadBinding((FrameLayout) view, nVImageView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.chat_background_item_img)));
    }
}
