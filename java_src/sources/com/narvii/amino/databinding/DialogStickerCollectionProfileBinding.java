package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.sticker.widget.StickerCacheImageView;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes8.dex */
public final class DialogStickerCollectionProfileBinding implements ViewBinding {

    @NonNull
    public final TintButton close;

    @NonNull
    public final TextView collectionDesc;

    @NonNull
    public final StickerCacheImageView collectionIcon;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final StoreItemNameView stickerCollectionName;

    @NonNull
    public final StoreItemStatusView storeItemStatusView;

    @NonNull
    public static DialogStickerCollectionProfileBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogStickerCollectionProfileBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_sticker_collection_profile, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DialogStickerCollectionProfileBinding(@NonNull FrameLayout frameLayout, @NonNull TintButton tintButton, @NonNull TextView textView, @NonNull StickerCacheImageView stickerCacheImageView, @NonNull StoreItemNameView storeItemNameView, @NonNull StoreItemStatusView storeItemStatusView) {
        this.rootView = frameLayout;
        this.close = tintButton;
        this.collectionDesc = textView;
        this.collectionIcon = stickerCacheImageView;
        this.stickerCollectionName = storeItemNameView;
        this.storeItemStatusView = storeItemStatusView;
    }

    @NonNull
    public static DialogStickerCollectionProfileBinding bind(@NonNull View view) {
        int i10 = R.id.close;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.close);
        if (tintButton != null) {
            i10 = R.id.collection_desc;
            TextView textView = (TextView) ViewBindings.a(view, R.id.collection_desc);
            if (textView != null) {
                i10 = R.id.collection_icon;
                StickerCacheImageView stickerCacheImageView = (StickerCacheImageView) ViewBindings.a(view, R.id.collection_icon);
                if (stickerCacheImageView != null) {
                    i10 = R.id.sticker_collection_name;
                    StoreItemNameView storeItemNameView = (StoreItemNameView) ViewBindings.a(view, R.id.sticker_collection_name);
                    if (storeItemNameView != null) {
                        i10 = R.id.store_item_status_view;
                        StoreItemStatusView storeItemStatusView = (StoreItemStatusView) ViewBindings.a(view, R.id.store_item_status_view);
                        if (storeItemStatusView != null) {
                            return new DialogStickerCollectionProfileBinding((FrameLayout) view, tintButton, textView, stickerCacheImageView, storeItemNameView, storeItemStatusView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
