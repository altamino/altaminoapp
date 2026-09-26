package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.app.theme.view.NVThemeRelativeLayout;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes.dex */
public final class PrefsToggleBinding implements ViewBinding {

    @NonNull
    public final CheckBox checkBox;

    @NonNull
    public final NVThemeTextView desc;

    @NonNull
    public final NVThemeTextView name;

    @NonNull
    private final NVThemeRelativeLayout rootView;

    @NonNull
    public final FrameLayout toggleLayout;

    @NonNull
    public static PrefsToggleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeRelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PrefsToggleBinding bind(@NonNull View view) {
        int i10 = R.id.check_box;
        CheckBox checkBox = (CheckBox) ViewBindings.a(view, i10);
        if (checkBox != null) {
            i10 = R.id.desc;
            NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, i10);
            if (nVThemeTextView != null) {
                i10 = R.id.name;
                NVThemeTextView nVThemeTextView2 = (NVThemeTextView) ViewBindings.a(view, i10);
                if (nVThemeTextView2 != null) {
                    i10 = R.id.toggle_layout;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                    if (frameLayout != null) {
                        return new PrefsToggleBinding((NVThemeRelativeLayout) view, checkBox, nVThemeTextView, nVThemeTextView2, frameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static PrefsToggleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.prefs_toggle, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PrefsToggleBinding(@NonNull NVThemeRelativeLayout nVThemeRelativeLayout, @NonNull CheckBox checkBox, @NonNull NVThemeTextView nVThemeTextView, @NonNull NVThemeTextView nVThemeTextView2, @NonNull FrameLayout frameLayout) {
        this.rootView = nVThemeRelativeLayout;
        this.checkBox = checkBox;
        this.desc = nVThemeTextView;
        this.name = nVThemeTextView2;
        this.toggleLayout = frameLayout;
    }
}
