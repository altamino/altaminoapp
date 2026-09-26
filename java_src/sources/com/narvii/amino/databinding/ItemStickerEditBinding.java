package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.monetization.sticker.widget.StickerCacheImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemStickerEditBinding implements ViewBinding {

    @NonNull
    public final ImageView delete;

    @NonNull
    public final View disabled;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final StickerCacheImageView sticker;

    @NonNull
    public static ItemStickerEditBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemStickerEditBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_sticker_edit, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemStickerEditBinding(@NonNull FlexLayout flexLayout, @NonNull ImageView imageView, @NonNull View view, @NonNull StickerCacheImageView stickerCacheImageView) {
        this.rootView = flexLayout;
        this.delete = imageView;
        this.disabled = view;
        this.sticker = stickerCacheImageView;
    }

    @NonNull
    public static ItemStickerEditBinding bind(@NonNull View view) {
        int i10 = R.id.delete;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.delete);
        if (imageView != null) {
            i10 = R.id.disabled;
            View viewA = ViewBindings.a(view, R.id.disabled);
            if (viewA != null) {
                i10 = R.id.sticker;
                StickerCacheImageView stickerCacheImageView = (StickerCacheImageView) ViewBindings.a(view, R.id.sticker);
                if (stickerCacheImageView != null) {
                    return new ItemStickerEditBinding((FlexLayout) view, imageView, viewA, stickerCacheImageView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
