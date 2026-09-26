package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.sticker.widget.StickerCacheImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class StickerTabLayoutBinding implements ViewBinding {

    @NonNull
    public final ImageView notAvailableMark;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final StickerCacheImageView tabIcon;

    @NonNull
    public static StickerTabLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StickerTabLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sticker_tab_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StickerTabLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull StickerCacheImageView stickerCacheImageView) {
        this.rootView = frameLayout;
        this.notAvailableMark = imageView;
        this.tabIcon = stickerCacheImageView;
    }

    @NonNull
    public static StickerTabLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.not_available_mark;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.not_available_mark);
        if (imageView != null) {
            i10 = R.id.tab_icon;
            StickerCacheImageView stickerCacheImageView = (StickerCacheImageView) ViewBindings.a(view, R.id.tab_icon);
            if (stickerCacheImageView != null) {
                return new StickerTabLayoutBinding((FrameLayout) view, imageView, stickerCacheImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
