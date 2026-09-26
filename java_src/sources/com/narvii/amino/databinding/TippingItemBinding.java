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
import com.narvii.tipping.TippingItem;

/* JADX INFO: loaded from: classes11.dex */
public final class TippingItemBinding implements ViewBinding {

    @NonNull
    public final View divider;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TippingItem tippingItem;

    @NonNull
    public static TippingItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static TippingItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.tipping_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private TippingItemBinding(@NonNull LinearLayout linearLayout, @NonNull View view, @NonNull TippingItem tippingItem) {
        this.rootView = linearLayout;
        this.divider = view;
        this.tippingItem = tippingItem;
    }

    @NonNull
    public static TippingItemBinding bind(@NonNull View view) {
        int i10 = R.id.divider;
        View viewA = ViewBindings.a(view, R.id.divider);
        if (viewA != null) {
            i10 = R.id.tipping_item;
            TippingItem tippingItem = (TippingItem) ViewBindings.a(view, R.id.tipping_item);
            if (tippingItem != null) {
                return new TippingItemBinding((LinearLayout) view, viewA, tippingItem);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
