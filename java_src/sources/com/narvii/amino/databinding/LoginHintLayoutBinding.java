package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes10.dex */
public final class LoginHintLayoutBinding implements ViewBinding {

    @NonNull
    public final Button login;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public static LoginHintLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static LoginHintLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.login_hint_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private LoginHintLayoutBinding(@NonNull FlexLayout flexLayout, @NonNull Button button) {
        this.rootView = flexLayout;
        this.login = button;
    }

    @NonNull
    public static LoginHintLayoutBinding bind(@NonNull View view) {
        Button button = (Button) ViewBindings.a(view, R.id.login);
        if (button != null) {
            return new LoginHintLayoutBinding((FlexLayout) view, button);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.login)));
    }
}
