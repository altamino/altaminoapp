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
import com.narvii.app.theme.view.NVThemeTextView;
import com.narvii.app.theme.view.NVThemeTintButton;

/* JADX INFO: loaded from: classes5.dex */
public final class PrefsWalletItemBinding implements ViewBinding {

    @NonNull
    public final NVThemeTextView balance;

    @NonNull
    public final NVThemeTintButton chevronRight;

    @NonNull
    private final NVThemeLinearLayout rootView;

    @NonNull
    public final NVThemeTextView text;

    @NonNull
    public static PrefsWalletItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static PrefsWalletItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.prefs_wallet_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private PrefsWalletItemBinding(@NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull NVThemeTextView nVThemeTextView, @NonNull NVThemeTintButton nVThemeTintButton, @NonNull NVThemeTextView nVThemeTextView2) {
        this.rootView = nVThemeLinearLayout;
        this.balance = nVThemeTextView;
        this.chevronRight = nVThemeTintButton;
        this.text = nVThemeTextView2;
    }

    @NonNull
    public static PrefsWalletItemBinding bind(@NonNull View view) {
        int i10 = R.id.balance;
        NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.balance);
        if (nVThemeTextView != null) {
            i10 = R.id.chevron_right;
            NVThemeTintButton nVThemeTintButton = (NVThemeTintButton) ViewBindings.a(view, R.id.chevron_right);
            if (nVThemeTintButton != null) {
                i10 = R.id.text;
                NVThemeTextView nVThemeTextView2 = (NVThemeTextView) ViewBindings.a(view, R.id.text);
                if (nVThemeTextView2 != null) {
                    return new PrefsWalletItemBinding((NVThemeLinearLayout) view, nVThemeTextView, nVThemeTintButton, nVThemeTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
