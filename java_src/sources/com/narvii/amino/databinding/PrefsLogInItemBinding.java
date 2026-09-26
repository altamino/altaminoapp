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

/* JADX INFO: loaded from: classes8.dex */
public final class PrefsLogInItemBinding implements ViewBinding {

    @NonNull
    public final Button loginIn;

    @NonNull
    private final NVThemeLinearLayout rootView;

    @NonNull
    public static PrefsLogInItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PrefsLogInItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.prefs_log_in_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PrefsLogInItemBinding(@NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull Button button) {
        this.rootView = nVThemeLinearLayout;
        this.loginIn = button;
    }

    @NonNull
    public static PrefsLogInItemBinding bind(@NonNull View view) {
        Button button = (Button) ViewBindings.a(view, R.id.login_in);
        if (button != null) {
            return new PrefsLogInItemBinding((NVThemeLinearLayout) view, button);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.login_in)));
    }
}
