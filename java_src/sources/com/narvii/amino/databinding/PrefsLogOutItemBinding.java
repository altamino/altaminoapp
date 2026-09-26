package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeLinearLayout;

/* JADX INFO: loaded from: classes9.dex */
public final class PrefsLogOutItemBinding implements ViewBinding {

    @NonNull
    public final Button loginOut;

    @NonNull
    private final NVThemeLinearLayout rootView;

    @NonNull
    public static PrefsLogOutItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PrefsLogOutItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.prefs_log_out_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PrefsLogOutItemBinding(@NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull Button button) {
        this.rootView = nVThemeLinearLayout;
        this.loginOut = button;
    }

    @NonNull
    public static PrefsLogOutItemBinding bind(@NonNull View view) {
        Button button = (Button) ViewBindings.a(view, R.id.login_out);
        if (button != null) {
            return new PrefsLogOutItemBinding((NVThemeLinearLayout) view, button);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.login_out)));
    }
}
