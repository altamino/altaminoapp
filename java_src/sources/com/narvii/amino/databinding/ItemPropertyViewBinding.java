package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;
import com.narvii.item.property.ItemPropertyView;

/* JADX INFO: loaded from: classes4.dex */
public final class ItemPropertyViewBinding implements ViewBinding {

    @NonNull
    private final ItemPropertyView rootView;

    @NonNull
    public static ItemPropertyViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public ItemPropertyView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemPropertyViewBinding bind(@NonNull View view) {
        if (view != null) {
            return new ItemPropertyViewBinding((ItemPropertyView) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static ItemPropertyViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_property_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemPropertyViewBinding(@NonNull ItemPropertyView itemPropertyView) {
        this.rootView = itemPropertyView;
    }
}
