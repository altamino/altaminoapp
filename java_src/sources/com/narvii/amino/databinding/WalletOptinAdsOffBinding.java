package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVDrawableAnimatedView;

/* JADX INFO: loaded from: classes9.dex */
public final class WalletOptinAdsOffBinding implements ViewBinding {

    @NonNull
    public final NVDrawableAnimatedView icon;

    @NonNull
    public final CheckBox optinAdsSwitch;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static WalletOptinAdsOffBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static WalletOptinAdsOffBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.wallet_optin_ads_off, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private WalletOptinAdsOffBinding(@NonNull LinearLayout linearLayout, @NonNull NVDrawableAnimatedView nVDrawableAnimatedView, @NonNull CheckBox checkBox, @NonNull TextView textView) {
        this.rootView = linearLayout;
        this.icon = nVDrawableAnimatedView;
        this.optinAdsSwitch = checkBox;
        this.text = textView;
    }

    @NonNull
    public static WalletOptinAdsOffBinding bind(@NonNull View view) {
        int i10 = R.id.icon;
        NVDrawableAnimatedView nVDrawableAnimatedView = (NVDrawableAnimatedView) ViewBindings.a(view, R.id.icon);
        if (nVDrawableAnimatedView != null) {
            i10 = R.id.optin_ads_switch;
            CheckBox checkBox = (CheckBox) ViewBindings.a(view, R.id.optin_ads_switch);
            if (checkBox != null) {
                i10 = R.id.text;
                TextView textView = (TextView) ViewBindings.a(view, R.id.text);
                if (textView != null) {
                    return new WalletOptinAdsOffBinding((LinearLayout) view, nVDrawableAnimatedView, checkBox, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
