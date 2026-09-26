package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.widget.PopupBubble;

/* JADX INFO: loaded from: classes4.dex */
public final class StickerPreviewLayoutBinding implements ViewBinding {

    @NonNull
    public final ProgressBar imageLoading;

    @NonNull
    public final PopupBubble popupBubble;

    @NonNull
    private final PopupBubble rootView;

    @NonNull
    public final StickerImageView stickerImage;

    @NonNull
    public static StickerPreviewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public PopupBubble getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StickerPreviewLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sticker_preview_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StickerPreviewLayoutBinding(@NonNull PopupBubble popupBubble, @NonNull ProgressBar progressBar, @NonNull PopupBubble popupBubble2, @NonNull StickerImageView stickerImageView) {
        this.rootView = popupBubble;
        this.imageLoading = progressBar;
        this.popupBubble = popupBubble2;
        this.stickerImage = stickerImageView;
    }

    @NonNull
    public static StickerPreviewLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.image_loading;
        ProgressBar progressBar = (ProgressBar) ViewBindings.a(view, R.id.image_loading);
        if (progressBar != null) {
            PopupBubble popupBubble = (PopupBubble) view;
            StickerImageView stickerImageView = (StickerImageView) ViewBindings.a(view, R.id.sticker_image);
            if (stickerImageView != null) {
                return new StickerPreviewLayoutBinding(popupBubble, progressBar, popupBubble, stickerImageView);
            }
            i10 = R.id.sticker_image;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
