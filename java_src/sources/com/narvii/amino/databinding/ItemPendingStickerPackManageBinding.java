package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class ItemPendingStickerPackManageBinding implements ViewBinding {

    @NonNull
    public final NVImageView collectionIcon;

    @NonNull
    public final ImageView delete;

    @NonNull
    public final View disabled;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final StoreItemNameView stickerCollectionName;

    @NonNull
    public final TextView stickerCount;

    @NonNull
    public static ItemPendingStickerPackManageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemPendingStickerPackManageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_pending_sticker_pack_manage, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemPendingStickerPackManageBinding(@NonNull LinearLayout linearLayout, @NonNull NVImageView nVImageView, @NonNull ImageView imageView, @NonNull View view, @NonNull StoreItemNameView storeItemNameView, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.collectionIcon = nVImageView;
        this.delete = imageView;
        this.disabled = view;
        this.stickerCollectionName = storeItemNameView;
        this.stickerCount = textView;
    }

    @NonNull
    public static ItemPendingStickerPackManageBinding bind(@NonNull View view) {
        int i10 = R.id.collection_icon;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.collection_icon);
        if (nVImageView != null) {
            i10 = R.id.delete;
            ImageView imageView = (ImageView) ViewBindings.a(view, R.id.delete);
            if (imageView != null) {
                i10 = R.id.disabled;
                View viewA = ViewBindings.a(view, R.id.disabled);
                if (viewA != null) {
                    i10 = R.id.sticker_collection_name;
                    StoreItemNameView storeItemNameView = (StoreItemNameView) ViewBindings.a(view, R.id.sticker_collection_name);
                    if (storeItemNameView != null) {
                        i10 = R.id.sticker_count;
                        TextView textView = (TextView) ViewBindings.a(view, R.id.sticker_count);
                        if (textView != null) {
                            return new ItemPendingStickerPackManageBinding((LinearLayout) view, nVImageView, imageView, viewA, storeItemNameView, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
