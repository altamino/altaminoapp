package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.monetization.sticker.widget.StickerImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class CollectionDetailStickerItemBinding implements ViewBinding {

    @NonNull
    public final View disabled;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final StickerImageView thumbnail;

    @NonNull
    public static CollectionDetailStickerItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CollectionDetailStickerItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.collection_detail_sticker_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CollectionDetailStickerItemBinding(@NonNull FlexLayout flexLayout, @NonNull View view, @NonNull StickerImageView stickerImageView) {
        this.rootView = flexLayout;
        this.disabled = view;
        this.thumbnail = stickerImageView;
    }

    @NonNull
    public static CollectionDetailStickerItemBinding bind(@NonNull View view) {
        int i10 = R.id.disabled;
        View viewA = ViewBindings.a(view, R.id.disabled);
        if (viewA != null) {
            i10 = R.id.thumbnail;
            StickerImageView stickerImageView = (StickerImageView) ViewBindings.a(view, R.id.thumbnail);
            if (stickerImageView != null) {
                return new CollectionDetailStickerItemBinding((FlexLayout) view, viewA, stickerImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
