package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.widget.NVDrawableAnimatedView;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes6.dex */
public final class WalletOptinAdsOnBinding implements ViewBinding {

    @NonNull
    public final TintButton chevronRight;

    @NonNull
    public final TextView earnMoreCoins;

    @NonNull
    public final NVDrawableAnimatedView icon;

    @NonNull
    public final TextView optinAdsEarnTotal;

    @NonNull
    public final TextView optinAdsEarnWeek;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final TextView text;

    @NonNull
    public static WalletOptinAdsOnBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static WalletOptinAdsOnBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.wallet_optin_ads_on, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private WalletOptinAdsOnBinding(@NonNull LinearLayout linearLayout, @NonNull TintButton tintButton, @NonNull TextView textView, @NonNull NVDrawableAnimatedView nVDrawableAnimatedView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.rootView = linearLayout;
        this.chevronRight = tintButton;
        this.earnMoreCoins = textView;
        this.icon = nVDrawableAnimatedView;
        this.optinAdsEarnTotal = textView2;
        this.optinAdsEarnWeek = textView3;
        this.text = textView4;
    }

    @NonNull
    public static WalletOptinAdsOnBinding bind(@NonNull View view) {
        int i10 = R.id.chevron_right;
        TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.chevron_right);
        if (tintButton != null) {
            i10 = R.id.earn_more_coins;
            TextView textView = (TextView) ViewBindings.a(view, R.id.earn_more_coins);
            if (textView != null) {
                i10 = R.id.icon;
                NVDrawableAnimatedView nVDrawableAnimatedView = (NVDrawableAnimatedView) ViewBindings.a(view, R.id.icon);
                if (nVDrawableAnimatedView != null) {
                    i10 = R.id.optin_ads_earn_total;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.optin_ads_earn_total);
                    if (textView2 != null) {
                        i10 = R.id.optin_ads_earn_week;
                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.optin_ads_earn_week);
                        if (textView3 != null) {
                            i10 = R.id.text;
                            TextView textView4 = (TextView) ViewBindings.a(view, R.id.text);
                            if (textView4 != null) {
                                return new WalletOptinAdsOnBinding((LinearLayout) view, tintButton, textView, nVDrawableAnimatedView, textView2, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
