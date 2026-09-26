package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.item.property.ItemPropertyList;

/* JADX INFO: loaded from: classes10.dex */
public final class DetailItemPropertyItemBinding implements ViewBinding {

    @NonNull
    public final ItemPropertyList itemPropertyViewList;

    @NonNull
    private final ItemPropertyList rootView;

    @NonNull
    public static DetailItemPropertyItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ItemPropertyList getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DetailItemPropertyItemBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        ItemPropertyList itemPropertyList = (ItemPropertyList) view;
        return new DetailItemPropertyItemBinding(itemPropertyList, itemPropertyList);
    }

    @NonNull
    public static DetailItemPropertyItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.detail_item_property_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private DetailItemPropertyItemBinding(@NonNull ItemPropertyList itemPropertyList, @NonNull ItemPropertyList itemPropertyList2) {
        this.rootView = itemPropertyList;
        this.itemPropertyViewList = itemPropertyList2;
    }
}
