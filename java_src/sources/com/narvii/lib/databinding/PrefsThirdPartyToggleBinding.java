package com.narvii.lib.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.app.theme.view.NVThemeRelativeLayout;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.app.theme.view.NVThemeView;
import com.narvii.lib.R;

/* JADX INFO: loaded from: classes6.dex */
public final class PrefsThirdPartyToggleBinding implements ViewBinding {

    @NonNull
    public final NVThemeView checkBox;

    @NonNull
    public final TextView connected;

    @NonNull
    public final NVThemeTextView name;

    @NonNull
    private final NVThemeRelativeLayout rootView;

    @NonNull
    public final FrameLayout toggleLayout;

    @NonNull
    public static PrefsThirdPartyToggleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeRelativeLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PrefsThirdPartyToggleBinding bind(@NonNull View view) {
        int i10 = R.id.check_box;
        NVThemeView nVThemeView = (NVThemeView) ViewBindings.a(view, i10);
        if (nVThemeView != null) {
            i10 = R.id.connected;
            TextView textView = (TextView) ViewBindings.a(view, i10);
            if (textView != null) {
                i10 = R.id.name;
                NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, i10);
                if (nVThemeTextView != null) {
                    i10 = R.id.toggle_layout;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, i10);
                    if (frameLayout != null) {
                        return new PrefsThirdPartyToggleBinding((NVThemeRelativeLayout) view, nVThemeView, textView, nVThemeTextView, frameLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static PrefsThirdPartyToggleBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.prefs_third_party_toggle, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PrefsThirdPartyToggleBinding(@NonNull NVThemeRelativeLayout nVThemeRelativeLayout, @NonNull NVThemeView nVThemeView, @NonNull TextView textView, @NonNull NVThemeTextView nVThemeTextView, @NonNull FrameLayout frameLayout) {
        this.rootView = nVThemeRelativeLayout;
        this.checkBox = nVThemeView;
        this.connected = textView;
        this.name = nVThemeTextView;
        this.toggleLayout = frameLayout;
    }
}
