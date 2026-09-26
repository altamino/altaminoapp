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

/* JADX INFO: loaded from: classes7.dex */
public final class PrefsSectionItemBinding implements ViewBinding {

    @NonNull
    private final NVThemeRelativeLayout rootView;

    @NonNull
    public final NVThemeTextView text;

    @NonNull
    public static PrefsSectionItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeRelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PrefsSectionItemBinding bind(@NonNull View view) {
        int i10 = R.id.text;
        NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, i10);
        if (nVThemeTextView != null) {
            return new PrefsSectionItemBinding((NVThemeRelativeLayout) view, nVThemeTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static PrefsSectionItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.prefs_section_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PrefsSectionItemBinding(@NonNull NVThemeRelativeLayout nVThemeRelativeLayout, @NonNull NVThemeTextView nVThemeTextView) {
        this.rootView = nVThemeRelativeLayout;
        this.text = nVThemeTextView;
    }
}
