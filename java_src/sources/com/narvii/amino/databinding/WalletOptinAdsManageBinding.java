package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.app.theme.view.NVThemeLinearLayout;
import com.narvii.app.theme.view.NVThemeTextView;

/* JADX INFO: loaded from: classes10.dex */
public final class WalletOptinAdsManageBinding implements ViewBinding {

    @NonNull
    public final LinearLayout earnMoreCoins;

    @NonNull
    public final CheckBox earnMoreSwitch;

    @NonNull
    public final NVThemeTextView optinAdsEarnTotal;

    @NonNull
    public final NVThemeTextView optinAdsEarnWeek;

    @NonNull
    public final CheckBox optinAdsSwitch;

    @NonNull
    private final NVThemeLinearLayout rootView;

    @NonNull
    public final NVThemeTextView text;

    @NonNull
    public static WalletOptinAdsManageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public NVThemeLinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static WalletOptinAdsManageBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.wallet_optin_ads_manage, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private WalletOptinAdsManageBinding(@NonNull NVThemeLinearLayout nVThemeLinearLayout, @NonNull LinearLayout linearLayout, @NonNull CheckBox checkBox, @NonNull NVThemeTextView nVThemeTextView, @NonNull NVThemeTextView nVThemeTextView2, @NonNull CheckBox checkBox2, @NonNull NVThemeTextView nVThemeTextView3) {
        this.rootView = nVThemeLinearLayout;
        this.earnMoreCoins = linearLayout;
        this.earnMoreSwitch = checkBox;
        this.optinAdsEarnTotal = nVThemeTextView;
        this.optinAdsEarnWeek = nVThemeTextView2;
        this.optinAdsSwitch = checkBox2;
        this.text = nVThemeTextView3;
    }

    @NonNull
    public static WalletOptinAdsManageBinding bind(@NonNull View view) {
        int i10 = R.id.earn_more_coins;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.earn_more_coins);
        if (linearLayout != null) {
            i10 = R.id.earn_more_switch;
            CheckBox checkBox = (CheckBox) ViewBindings.a(view, R.id.earn_more_switch);
            if (checkBox != null) {
                i10 = R.id.optin_ads_earn_total;
                NVThemeTextView nVThemeTextView = (NVThemeTextView) ViewBindings.a(view, R.id.optin_ads_earn_total);
                if (nVThemeTextView != null) {
                    i10 = R.id.optin_ads_earn_week;
                    NVThemeTextView nVThemeTextView2 = (NVThemeTextView) ViewBindings.a(view, R.id.optin_ads_earn_week);
                    if (nVThemeTextView2 != null) {
                        i10 = R.id.optin_ads_switch;
                        CheckBox checkBox2 = (CheckBox) ViewBindings.a(view, R.id.optin_ads_switch);
                        if (checkBox2 != null) {
                            i10 = R.id.text;
                            NVThemeTextView nVThemeTextView3 = (NVThemeTextView) ViewBindings.a(view, R.id.text);
                            if (nVThemeTextView3 != null) {
                                return new WalletOptinAdsManageBinding((NVThemeLinearLayout) view, linearLayout, checkBox, nVThemeTextView, nVThemeTextView2, checkBox2, nVThemeTextView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
