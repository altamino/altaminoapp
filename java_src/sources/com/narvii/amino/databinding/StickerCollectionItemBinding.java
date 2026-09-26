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
import com.narvii.monetization.sticker.manage.StickerCollectionItem;
import com.narvii.monetization.sticker.widget.StickerCacheImageView;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes10.dex */
public final class StickerCollectionItemBinding implements ViewBinding {

    @NonNull
    public final StickerCacheImageView collectionIcon;

    @NonNull
    public final LinearLayout collectionLayout;

    @NonNull
    public final LinearLayout collectionLayoutMain;

    @NonNull
    public final TintButton edit;

    @NonNull
    public final ImageView notAvailableMark;

    @NonNull
    private final StickerCollectionItem rootView;

    @NonNull
    public final StoreItemNameView stickerCollectionName;

    @NonNull
    public final TextView subtitle;

    @NonNull
    public static StickerCollectionItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public StickerCollectionItem getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StickerCollectionItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sticker_collection_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StickerCollectionItemBinding(@NonNull StickerCollectionItem stickerCollectionItem, @NonNull StickerCacheImageView stickerCacheImageView, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull TintButton tintButton, @NonNull ImageView imageView, @NonNull StoreItemNameView storeItemNameView, @NonNull TextView textView) {
        this.rootView = stickerCollectionItem;
        this.collectionIcon = stickerCacheImageView;
        this.collectionLayout = linearLayout;
        this.collectionLayoutMain = linearLayout2;
        this.edit = tintButton;
        this.notAvailableMark = imageView;
        this.stickerCollectionName = storeItemNameView;
        this.subtitle = textView;
    }

    @NonNull
    public static StickerCollectionItemBinding bind(@NonNull View view) {
        int i10 = R.id.collection_icon;
        StickerCacheImageView stickerCacheImageView = (StickerCacheImageView) ViewBindings.a(view, R.id.collection_icon);
        if (stickerCacheImageView != null) {
            i10 = R.id.collection_layout;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.collection_layout);
            if (linearLayout != null) {
                i10 = R.id.collection_layout_main;
                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.collection_layout_main);
                if (linearLayout2 != null) {
                    i10 = R.id.edit;
                    TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.edit);
                    if (tintButton != null) {
                        i10 = R.id.not_available_mark;
                        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.not_available_mark);
                        if (imageView != null) {
                            i10 = R.id.sticker_collection_name;
                            StoreItemNameView storeItemNameView = (StoreItemNameView) ViewBindings.a(view, R.id.sticker_collection_name);
                            if (storeItemNameView != null) {
                                i10 = R.id.subtitle;
                                TextView textView = (TextView) ViewBindings.a(view, R.id.subtitle);
                                if (textView != null) {
                                    return new StickerCollectionItemBinding((StickerCollectionItem) view, stickerCacheImageView, linearLayout, linearLayout2, tintButton, imageView, storeItemNameView, textView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
