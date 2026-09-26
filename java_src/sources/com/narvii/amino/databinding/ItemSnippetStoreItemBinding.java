package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes2.dex */
public final class ItemSnippetStoreItemBinding implements ViewBinding {

    @NonNull
    public final StoreItemNameView itemName;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final NVImageView storeItemPreview;

    @NonNull
    public static ItemSnippetStoreItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemSnippetStoreItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_snippet_store_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemSnippetStoreItemBinding(@NonNull LinearLayout linearLayout, @NonNull StoreItemNameView storeItemNameView, @NonNull NVImageView nVImageView) {
        this.rootView = linearLayout;
        this.itemName = storeItemNameView;
        this.storeItemPreview = nVImageView;
    }

    @NonNull
    public static ItemSnippetStoreItemBinding bind(@NonNull View view) {
        int i10 = R.id.item_name;
        StoreItemNameView storeItemNameView = (StoreItemNameView) ViewBindings.a(view, R.id.item_name);
        if (storeItemNameView != null) {
            i10 = R.id.store_item_preview;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.store_item_preview);
            if (nVImageView != null) {
                return new ItemSnippetStoreItemBinding((LinearLayout) view, storeItemNameView, nVImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
