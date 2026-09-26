package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.narvii.app.theme.view.NVThemeView;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes7.dex */
public final class PrefsMarginItemBinding implements ViewBinding {

    @NonNull
    private final NVThemeView rootView;

    @NonNull
    public static PrefsMarginItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PrefsMarginItemBinding bind(@NonNull View view) {
        if (view != null) {
            return new PrefsMarginItemBinding((NVThemeView) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static PrefsMarginItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.prefs_margin_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PrefsMarginItemBinding(@NonNull NVThemeView nVThemeView) {
        this.rootView = nVThemeView;
    }
}
