package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.app.theme.view.NVThemeFrameLayout;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes7.dex */
public final class PrefsDividerBinding implements ViewBinding {

    @NonNull
    private final NVThemeFrameLayout rootView;

    @NonNull
    public static PrefsDividerBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeFrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PrefsDividerBinding bind(@NonNull View view) {
        if (view != null) {
            return new PrefsDividerBinding((NVThemeFrameLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static PrefsDividerBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.prefs_divider, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PrefsDividerBinding(@NonNull NVThemeFrameLayout nVThemeFrameLayout) {
        this.rootView = nVThemeFrameLayout;
    }
}
