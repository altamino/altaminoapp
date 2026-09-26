package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes9.dex */
public final class ListDividerDarkBinding implements ViewBinding {

    @NonNull
    public final View listDivider;

    @NonNull
    private final View rootView;

    @NonNull
    public static ListDividerDarkBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public View getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ListDividerDarkBinding bind(@NonNull View view) {
        if (view != null) {
            return new ListDividerDarkBinding(view, view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static ListDividerDarkBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.list_divider_dark, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ListDividerDarkBinding(@NonNull View view, @NonNull View view2) {
        this.rootView = view;
        this.listDivider = view2;
    }
}
