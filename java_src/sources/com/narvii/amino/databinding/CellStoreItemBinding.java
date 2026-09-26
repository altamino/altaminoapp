package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.monetization.store.StoreItemView;

/* JADX INFO: loaded from: classes9.dex */
public final class CellStoreItemBinding implements ViewBinding {

    @NonNull
    private final StoreItemView rootView;

    @NonNull
    public static CellStoreItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public StoreItemView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CellStoreItemBinding bind(@NonNull View view) {
        if (view != null) {
            return new CellStoreItemBinding((StoreItemView) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static CellStoreItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.cell_store_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CellStoreItemBinding(@NonNull StoreItemView storeItemView) {
        this.rootView = storeItemView;
    }
}
