package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.utils.ClaimGiftHintLayout;
import com.narvii.widget.PressedFrameLayout;
import com.narvii.widget.WalletBalanceView;

/* JADX INFO: loaded from: classes10.dex */
public final class WalletBalanceAccountViewBinding implements ViewBinding {

    @NonNull
    public final ClaimGiftHintLayout claimGiftHint;

    @NonNull
    private final WalletBalanceView rootView;

    @NonNull
    public final PressedFrameLayout storeHeaderCoinInfoLayout;

    @NonNull
    public final TextView walletBalance;

    @NonNull
    public final WalletBalanceView walletBalanceView;

    @NonNull
    public static WalletBalanceAccountViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public WalletBalanceView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static WalletBalanceAccountViewBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.wallet_balance_account_view, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private WalletBalanceAccountViewBinding(@NonNull WalletBalanceView walletBalanceView, @NonNull ClaimGiftHintLayout claimGiftHintLayout, @NonNull PressedFrameLayout pressedFrameLayout, @NonNull TextView textView, @NonNull WalletBalanceView walletBalanceView2) {
        this.rootView = walletBalanceView;
        this.claimGiftHint = claimGiftHintLayout;
        this.storeHeaderCoinInfoLayout = pressedFrameLayout;
        this.walletBalance = textView;
        this.walletBalanceView = walletBalanceView2;
    }

    @NonNull
    public static WalletBalanceAccountViewBinding bind(@NonNull View view) {
        int i10 = R.id.claim_gift_hint;
        ClaimGiftHintLayout claimGiftHintLayout = (ClaimGiftHintLayout) ViewBindings.a(view, R.id.claim_gift_hint);
        if (claimGiftHintLayout != null) {
            i10 = R.id.store_header_coin_info_layout;
            PressedFrameLayout pressedFrameLayout = (PressedFrameLayout) ViewBindings.a(view, R.id.store_header_coin_info_layout);
            if (pressedFrameLayout != null) {
                i10 = R.id.wallet_balance;
                TextView textView = (TextView) ViewBindings.a(view, R.id.wallet_balance);
                if (textView != null) {
                    WalletBalanceView walletBalanceView = (WalletBalanceView) view;
                    return new WalletBalanceAccountViewBinding(walletBalanceView, claimGiftHintLayout, pressedFrameLayout, textView, walletBalanceView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
