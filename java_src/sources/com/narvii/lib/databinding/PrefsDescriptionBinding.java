package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.app.theme.view.NVThemeRelativeLayout;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class PrefsDescriptionBinding implements ViewBinding {

    @NonNull
    private final NVThemeRelativeLayout rootView;

    @NonNull
    public final NVThemeTextView text;

    @NonNull
    public static PrefsDescriptionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeRelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PrefsDescriptionBinding bind(@NonNull View view) {
        int i10 = R.id.text;
        NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, i10);
        if (nVThemeTextView != null) {
            return new PrefsDescriptionBinding((NVThemeRelativeLayout) view, nVThemeTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static PrefsDescriptionBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.prefs_description, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PrefsDescriptionBinding(@NonNull NVThemeRelativeLayout nVThemeRelativeLayout, @NonNull NVThemeTextView nVThemeTextView) {
        this.rootView = nVThemeRelativeLayout;
        this.text = nVThemeTextView;
    }
}
