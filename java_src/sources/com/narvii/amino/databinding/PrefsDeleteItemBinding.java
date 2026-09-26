package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeButton;
import com.narvii.app.theme.view.NVThemeLinearLayout;

/* JADX INFO: loaded from: classes10.dex */
public final class PrefsDeleteItemBinding implements ViewBinding {

    @NonNull
    public final NVThemeButton delete;

    @NonNull
    private final NVThemeLinearLayout rootView;

    @NonNull
    public static PrefsDeleteItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PrefsDeleteItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.prefs_delete_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PrefsDeleteItemBinding(@NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull NVThemeButton nVThemeButton) {
        this.rootView = nVThemeLinearLayout;
        this.delete = nVThemeButton;
    }

    @NonNull
    public static PrefsDeleteItemBinding bind(@NonNull View view) {
        NVThemeButton nVThemeButton = (NVThemeButton) ViewBindings.a(view, R.id.delete);
        if (nVThemeButton != null) {
            return new PrefsDeleteItemBinding((NVThemeLinearLayout) view, nVThemeButton);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.delete)));
    }
}
