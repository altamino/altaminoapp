package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes11.dex */
public final class WalletSpeedDialBinding implements ViewBinding {

    @NonNull
    public final LinearLayout businessWallet;

    @NonNull
    public final LinearLayout coupons;

    @NonNull
    public final LinearLayout history;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public final LinearLayout subscriptions;

    @NonNull
    public static WalletSpeedDialBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static WalletSpeedDialBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.wallet_speed_dial, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private WalletSpeedDialBinding(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull LinearLayout linearLayout5) {
        this.rootView = linearLayout;
        this.businessWallet = linearLayout2;
        this.coupons = linearLayout3;
        this.history = linearLayout4;
        this.subscriptions = linearLayout5;
    }

    @NonNull
    public static WalletSpeedDialBinding bind(@NonNull View view) {
        int i10 = R.id.business_wallet;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.business_wallet);
        if (linearLayout != null) {
            i10 = R.id.coupons;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.coupons);
            if (linearLayout2 != null) {
                i10 = R.id.history;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.history);
                if (linearLayout3 != null) {
                    i10 = R.id.subscriptions;
                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.subscriptions);
                    if (linearLayout4 != null) {
                        return new WalletSpeedDialBinding((LinearLayout) view, linearLayout, linearLayout2, linearLayout3, linearLayout4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
