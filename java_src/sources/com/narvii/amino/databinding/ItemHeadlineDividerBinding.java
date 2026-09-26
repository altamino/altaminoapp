package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes7.dex */
public final class ItemHeadlineDividerBinding implements ViewBinding {

    @NonNull
    public final View headlineDivider;

    @NonNull
    private final View rootView;

    @NonNull
    public static ItemHeadlineDividerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ItemHeadlineDividerBinding bind(@NonNull View view) {
        if (view != null) {
            return new ItemHeadlineDividerBinding(view, view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static ItemHeadlineDividerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.item_headline_divider, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ItemHeadlineDividerBinding(@NonNull View view, @NonNull View view2) {
        this.rootView = view;
        this.headlineDivider = view2;
    }
}
