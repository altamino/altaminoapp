package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeLinearLayout;
import com.narvii.app.theme.view.NVThemeTintButton;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes9.dex */
public final class PrefsProfileItemBinding implements ViewBinding {

    @NonNull
    public final NVImageView avatar;

    @NonNull
    public final NVThemeTintButton chevronRight;

    @NonNull
    private final NVThemeLinearLayout rootView;

    @NonNull
    public static PrefsProfileItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PrefsProfileItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.prefs_profile_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PrefsProfileItemBinding(@NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull NVImageView nVImageView, @NonNull NVThemeTintButton nVThemeTintButton) {
        this.rootView = nVThemeLinearLayout;
        this.avatar = nVImageView;
        this.chevronRight = nVThemeTintButton;
    }

    @NonNull
    public static PrefsProfileItemBinding bind(@NonNull View view) {
        int i10 = R.id.avatar;
        NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.avatar);
        if (nVImageView != null) {
            i10 = R.id.chevron_right;
            NVThemeTintButton nVThemeTintButton = (NVThemeTintButton) ViewBindings.a(view, R.id.chevron_right);
            if (nVThemeTintButton != null) {
                return new PrefsProfileItemBinding((NVThemeLinearLayout) view, nVImageView, nVThemeTintButton);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
