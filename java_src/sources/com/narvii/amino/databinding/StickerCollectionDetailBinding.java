package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.StoreItemStatusView;
import com.narvii.monetization.utils.StoreItemNameView;

/* JADX INFO: loaded from: classes9.dex */
public final class StickerCollectionDetailBinding implements ViewBinding {

    @NonNull
    public final TextView collectionDesc;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final StoreItemNameView stickerCollectionName;

    @NonNull
    public final StoreItemStatusView storeItemStatusView;

    @NonNull
    public final TextView usedTimes;

    @NonNull
    public static StickerCollectionDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static StickerCollectionDetailBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.sticker_collection_detail, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private StickerCollectionDetailBinding(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull StoreItemNameView storeItemNameView, @NonNull StoreItemStatusView storeItemStatusView, @NonNull TextView textView2) {
        this.rootView = linearLayout;
        this.collectionDesc = textView;
        this.stickerCollectionName = storeItemNameView;
        this.storeItemStatusView = storeItemStatusView;
        this.usedTimes = textView2;
    }

    @NonNull
    public static StickerCollectionDetailBinding bind(@NonNull View view) {
        int i10 = R.id.collection_desc;
        TextView textView = (TextView) ViewBindings.a(view, R.id.collection_desc);
        if (textView != null) {
            i10 = R.id.sticker_collection_name;
            StoreItemNameView storeItemNameView = (StoreItemNameView) ViewBindings.a(view, R.id.sticker_collection_name);
            if (storeItemNameView != null) {
                i10 = R.id.store_item_status_view;
                StoreItemStatusView storeItemStatusView = (StoreItemStatusView) ViewBindings.a(view, R.id.store_item_status_view);
                if (storeItemStatusView != null) {
                    i10 = R.id.used_times;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.used_times);
                    if (textView2 != null) {
                        return new StickerCollectionDetailBinding((LinearLayout) view, textView, storeItemNameView, storeItemStatusView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
