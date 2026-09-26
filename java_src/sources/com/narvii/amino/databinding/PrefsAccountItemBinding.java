package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeLinearLayout;
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.app.theme.view.NVThemeTintButton;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes10.dex */
public final class PrefsAccountItemBinding implements ViewBinding {

    @NonNull
    public final ImageView accountSecurity;

    @NonNull
    public final NVImageView avatar;

    @NonNull
    public final NVThemeTintButton chevronRight;

    @NonNull
    public final NVThemeTextView nickname;

    @NonNull
    private final NVThemeLinearLayout rootView;

    @NonNull
    public static PrefsAccountItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PrefsAccountItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.prefs_account_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PrefsAccountItemBinding(@NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull ImageView imageView, @NonNull NVImageView nVImageView, @NonNull NVThemeTintButton nVThemeTintButton, @NonNull NVThemeTextView nVThemeTextView) {
        this.rootView = nVThemeLinearLayout;
        this.accountSecurity = imageView;
        this.avatar = nVImageView;
        this.chevronRight = nVThemeTintButton;
        this.nickname = nVThemeTextView;
    }

    @NonNull
    public static PrefsAccountItemBinding bind(@NonNull View view) {
        int i10 = R.id.account_security;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.account_security);
        if (imageView != null) {
            i10 = R.id.avatar;
            NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.avatar);
            if (nVImageView != null) {
                i10 = R.id.chevron_right;
                NVThemeTintButton nVThemeTintButton = (NVThemeTintButton) ViewBindings.a(view, R.id.chevron_right);
                if (nVThemeTintButton != null) {
                    i10 = R.id.nickname;
                    NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.nickname);
                    if (nVThemeTextView != null) {
                        return new PrefsAccountItemBinding((NVThemeLinearLayout) view, imageView, nVImageView, nVThemeTintButton, nVThemeTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
