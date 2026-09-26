package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeRelativeLayout;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.app.theme.view.NVThemeTintButton;
import com.narvii.widget.SpinningView;

/* JADX INFO: loaded from: classes10.dex */
public final class FragmentSettingsStorageItemBinding implements ViewBinding {

    @NonNull
    public final NVThemeTintButton check;

    @NonNull
    public final NVThemeTextView detail;

    @NonNull
    public final SpinningView loading;

    @NonNull
    private final NVThemeRelativeLayout rootView;

    @NonNull
    public final NVThemeTextView storage;

    @NonNull
    public final NVThemeTextView title;

    @NonNull
    public static FragmentSettingsStorageItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeRelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentSettingsStorageItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_settings_storage_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentSettingsStorageItemBinding(@NonNull NVThemeRelativeLayout nVThemeRelativeLayout, @NonNull NVThemeTintButton nVThemeTintButton, @NonNull NVThemeTextView nVThemeTextView, @NonNull SpinningView spinningView, @NonNull NVThemeTextView nVThemeTextView2, @NonNull NVThemeTextView nVThemeTextView3) {
        this.rootView = nVThemeRelativeLayout;
        this.check = nVThemeTintButton;
        this.detail = nVThemeTextView;
        this.loading = spinningView;
        this.storage = nVThemeTextView2;
        this.title = nVThemeTextView3;
    }

    @NonNull
    public static FragmentSettingsStorageItemBinding bind(@NonNull View view) {
        int i10 = R.id.check;
        NVThemeTintButton nVThemeTintButton = (NVThemeTintButton) ViewBindings.a(view, R.id.check);
        if (nVThemeTintButton != null) {
            i10 = R.id.detail;
            NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.detail);
            if (nVThemeTextView != null) {
                i10 = R.id.loading;
                SpinningView spinningView = (SpinningView) ViewBindings.a(view, R.id.loading);
                if (spinningView != null) {
                    i10 = R.id.storage;
                    NVThemeTextView nVThemeTextView2 = (NVThemeTextView) ViewBindings.a(view, R.id.storage);
                    if (nVThemeTextView2 != null) {
                        i10 = R.id.title;
                        NVThemeTextView nVThemeTextView3 = (NVThemeTextView) ViewBindings.a(view, R.id.title);
                        if (nVThemeTextView3 != null) {
                            return new FragmentSettingsStorageItemBinding((NVThemeRelativeLayout) view, nVThemeTintButton, nVThemeTextView, spinningView, nVThemeTextView2, nVThemeTextView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
