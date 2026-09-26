package com.narvii.mediaeditor.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.mediaeditor.R;
import com.narvii.video.widget.FrameItemMaskView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemMediaRetrieverBinding implements ViewBinding {

    @NonNull
    public final FrameItemMaskView frameMask;

    @NonNull
    public final NVImageView framePic;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static ItemMediaRetrieverBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemMediaRetrieverBinding bind(@NonNull View view) {
        int i10 = R.id.frame_mask;
        FrameItemMaskView frameItemMaskView = (FrameItemMaskView) ViewBindings.a(view, i10);
        if (frameItemMaskView != null) {
            i10 = R.id.frame_pic;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, i10);
            if (nVImageView != null) {
                return new ItemMediaRetrieverBinding((FrameLayout) view, frameItemMaskView, nVImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ItemMediaRetrieverBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_media_retriever, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemMediaRetrieverBinding(@NonNull FrameLayout frameLayout, @NonNull FrameItemMaskView frameItemMaskView, @NonNull NVImageView nVImageView) {
        this.rootView = frameLayout;
        this.frameMask = frameItemMaskView;
        this.framePic = nVImageView;
    }
}
