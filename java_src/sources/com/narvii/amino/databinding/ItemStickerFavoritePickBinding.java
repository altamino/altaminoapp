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

/* JADX INFO: loaded from: classes11.dex */
public final class ItemStickerFavoritePickBinding implements ViewBinding {

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final ImageView select;

    @NonNull
    public final StickerCacheImageView sticker;

    @NonNull
    public static ItemStickerFavoritePickBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemStickerFavoritePickBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_sticker_favorite_pick, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemStickerFavoritePickBinding(@NonNull FlexLayout flexLayout, @NonNull ImageView imageView, @NonNull StickerCacheImageView stickerCacheImageView) {
        this.rootView = flexLayout;
        this.select = imageView;
        this.sticker = stickerCacheImageView;
    }

    @NonNull
    public static ItemStickerFavoritePickBinding bind(@NonNull View view) {
        int i10 = R.id.select;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.select);
        if (imageView != null) {
            i10 = R.id.sticker;
            StickerCacheImageView stickerCacheImageView = (StickerCacheImageView) ViewBindings.a(view, R.id.sticker);
            if (stickerCacheImageView != null) {
                return new ItemStickerFavoritePickBinding((FlexLayout) view, imageView, stickerCacheImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
