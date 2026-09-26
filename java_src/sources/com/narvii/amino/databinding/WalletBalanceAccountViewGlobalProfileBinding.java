package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.utils.ClaimGiftHintLayout;
import com.narvii.widget.AutoSizingTextView;
import com.narvii.widget.PressedFrameLayout;
import com.narvii.widget.WalletBalanceView;

/* JADX INFO: loaded from: classes10.dex */
public final class WalletBalanceAccountViewGlobalProfileBinding implements ViewBinding {

    @NonNull
    public final ClaimGiftHintLayout claimGiftHint;

    @NonNull
    private final WalletBalanceView rootView;

    @NonNull
    public final PressedFrameLayout storeHeaderCoinInfoLayout;

    @NonNull
    public final AutoSizingTextView walletBalance;

    @NonNull
    public final WalletBalanceView walletBalanceView;

    @NonNull
    public static WalletBalanceAccountViewGlobalProfileBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public WalletBalanceView getRoot() {
        return this.rootView;
    }

    @NonNull
    public static WalletBalanceAccountViewGlobalProfileBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.wallet_balance_account_view_global_profile, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private WalletBalanceAccountViewGlobalProfileBinding(@NonNull WalletBalanceView walletBalanceView, @NonNull ClaimGiftHintLayout claimGiftHintLayout, @NonNull PressedFrameLayout pressedFrameLayout, @NonNull AutoSizingTextView autoSizingTextView, @NonNull WalletBalanceView walletBalanceView2) {
        this.rootView = walletBalanceView;
        this.claimGiftHint = claimGiftHintLayout;
        this.storeHeaderCoinInfoLayout = pressedFrameLayout;
        this.walletBalance = autoSizingTextView;
        this.walletBalanceView = walletBalanceView2;
    }

    @NonNull
    public static WalletBalanceAccountViewGlobalProfileBinding bind(@NonNull View view) {
        int i10 = R.id.claim_gift_hint;
        ClaimGiftHintLayout claimGiftHintLayout = (ClaimGiftHintLayout) ViewBindings.a(view, R.id.claim_gift_hint);
        if (claimGiftHintLayout != null) {
            i10 = R.id.store_header_coin_info_layout;
            PressedFrameLayout pressedFrameLayout = (PressedFrameLayout) ViewBindings.a(view, R.id.store_header_coin_info_layout);
            if (pressedFrameLayout != null) {
                i10 = R.id.wallet_balance;
                AutoSizingTextView autoSizingTextView = (AutoSizingTextView) ViewBindings.a(view, R.id.wallet_balance);
                if (autoSizingTextView != null) {
                    WalletBalanceView walletBalanceView = (WalletBalanceView) view;
                    return new WalletBalanceAccountViewGlobalProfileBinding(walletBalanceView, claimGiftHintLayout, pressedFrameLayout, autoSizingTextView, walletBalanceView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
