package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.app.theme.view.NVThemeView;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes11.dex */
public final class ListDividerBinding implements ViewBinding {

    @NonNull
    public final NVThemeView listDivider;

    @NonNull
    private final NVThemeView rootView;

    @NonNull
    public static ListDividerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ListDividerBinding bind(@NonNull View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        NVThemeView nVThemeView = (NVThemeView) view;
        return new ListDividerBinding(nVThemeView, nVThemeView);
    }

    @NonNull
    public static ListDividerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.list_divider, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ListDividerBinding(@NonNull NVThemeView nVThemeView, @NonNull NVThemeView nVThemeView2) {
        this.rootView = nVThemeView;
        this.listDivider = nVThemeView2;
    }
}
