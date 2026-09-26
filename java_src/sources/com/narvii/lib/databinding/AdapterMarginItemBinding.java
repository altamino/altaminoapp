package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes10.dex */
public final class AdapterMarginItemBinding implements ViewBinding {

    @NonNull
    private final View rootView;

    @NonNull
    public static AdapterMarginItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static AdapterMarginItemBinding bind(@NonNull View view) {
        if (view != null) {
            return new AdapterMarginItemBinding(view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static AdapterMarginItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.adapter_margin_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private AdapterMarginItemBinding(@NonNull View view) {
        this.rootView = view;
    }
}
