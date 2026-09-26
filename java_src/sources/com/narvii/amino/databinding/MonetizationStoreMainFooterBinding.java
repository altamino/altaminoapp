package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes.dex */
public final class MonetizationStoreMainFooterBinding implements ViewBinding {

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static MonetizationStoreMainFooterBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MonetizationStoreMainFooterBinding bind(@NonNull View view) {
        if (view != null) {
            return new MonetizationStoreMainFooterBinding((LinearLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static MonetizationStoreMainFooterBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.monetization_store_main_footer, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private MonetizationStoreMainFooterBinding(@NonNull LinearLayout linearLayout) {
        this.rootView = linearLayout;
    }
}
