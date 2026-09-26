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
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.lib.databinding.NormalErrorListItemDarkBinding;
import com.narvii.lib.databinding.NormalLoadingListItemDarkBinding;
import com.narvii.widget.PopButton;
import com.narvii.widget.TintButton;

/* JADX INFO: loaded from: classes6.dex */
public final class WalletDialogBinding implements ViewBinding {

    @NonNull
    public final TextView balance;

    @NonNull
    public final LinearLayout balanceFrame;

    @NonNull
    public final TintButton chevronRight;

    @NonNull
    public final PopButton close;

    @NonNull
    public final TextView earnMoreCoins;

    @NonNull
    public final LinearLayout earnMoreLayout;

    @NonNull
    public final NormalErrorListItemDarkBinding error;

    @NonNull
    public final FlexLayout headerLayout;

    @NonNull
    public final TextView headerNoEnoughCoin;

    @NonNull
    public final WalletDialogItemBinding item1;

    @NonNull
    public final WalletDialogItemBinding item2;

    @NonNull
    public final WalletDialogItemBinding item3;

    @NonNull
    public final WalletDialogItemBinding item4;

    @NonNull
    public final WalletDialogItemBinding item5;

    @NonNull
    public final WalletDialogItemBinding item6;

    @NonNull
    public final LinearLayout itemLayout1;

    @NonNull
    public final LinearLayout itemLayout2;

    @NonNull
    public final FlexLayout layoutContent;

    @NonNull
    public final NormalLoadingListItemDarkBinding loading;

    @NonNull
    public final View marginBottomPlaceholder;

    @NonNull
    private final FlexLayout rootView;

    @NonNull
    public final FlexLayout walletDialogRoot;

    private WalletDialogBinding(@NonNull FlexLayout flexLayout, @NonNull TextView textView, @NonNull LinearLayout linearLayout, @NonNull TintButton tintButton, @NonNull PopButton popButton, @NonNull TextView textView2, @NonNull LinearLayout linearLayout2, @NonNull NormalErrorListItemDarkBinding normalErrorListItemDarkBinding, @NonNull FlexLayout flexLayout2, @NonNull TextView textView3, @NonNull WalletDialogItemBinding walletDialogItemBinding, @NonNull WalletDialogItemBinding walletDialogItemBinding2, @NonNull WalletDialogItemBinding walletDialogItemBinding3, @NonNull WalletDialogItemBinding walletDialogItemBinding4, @NonNull WalletDialogItemBinding walletDialogItemBinding5, @NonNull WalletDialogItemBinding walletDialogItemBinding6, @NonNull LinearLayout linearLayout3, @NonNull LinearLayout linearLayout4, @NonNull FlexLayout flexLayout3, @NonNull NormalLoadingListItemDarkBinding normalLoadingListItemDarkBinding, @NonNull View view, @NonNull FlexLayout flexLayout4) {
        this.rootView = flexLayout;
        this.balance = textView;
        this.balanceFrame = linearLayout;
        this.chevronRight = tintButton;
        this.close = popButton;
        this.earnMoreCoins = textView2;
        this.earnMoreLayout = linearLayout2;
        this.error = normalErrorListItemDarkBinding;
        this.headerLayout = flexLayout2;
        this.headerNoEnoughCoin = textView3;
        this.item1 = walletDialogItemBinding;
        this.item2 = walletDialogItemBinding2;
        this.item3 = walletDialogItemBinding3;
        this.item4 = walletDialogItemBinding4;
        this.item5 = walletDialogItemBinding5;
        this.item6 = walletDialogItemBinding6;
        this.itemLayout1 = linearLayout3;
        this.itemLayout2 = linearLayout4;
        this.layoutContent = flexLayout3;
        this.loading = normalLoadingListItemDarkBinding;
        this.marginBottomPlaceholder = view;
        this.walletDialogRoot = flexLayout4;
    }

    @NonNull
    public static WalletDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FlexLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static WalletDialogBinding bind(@NonNull View view) {
        int i10 = R.id.balance;
        TextView textView = (TextView) ViewBindings.a(view, R.id.balance);
        if (textView != null) {
            i10 = R.id.balance_frame;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.balance_frame);
            if (linearLayout != null) {
                i10 = R.id.chevron_right;
                TintButton tintButton = (TintButton) ViewBindings.a(view, R.id.chevron_right);
                if (tintButton != null) {
                    i10 = R.id.close;
                    PopButton popButton = (PopButton) ViewBindings.a(view, R.id.close);
                    if (popButton != null) {
                        i10 = R.id.earn_more_coins;
                        TextView textView2 = (TextView) ViewBindings.a(view, R.id.earn_more_coins);
                        if (textView2 != null) {
                            i10 = R.id.earn_more_layout;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.earn_more_layout);
                            if (linearLayout2 != null) {
                                i10 = R.id.error;
                                View viewA = ViewBindings.a(view, R.id.error);
                                if (viewA != null) {
                                    NormalErrorListItemDarkBinding normalErrorListItemDarkBindingBind = NormalErrorListItemDarkBinding.bind(viewA);
                                    i10 = R.id.header_layout;
                                    FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.header_layout);
                                    if (flexLayout != null) {
                                        i10 = R.id.header_no_enough_coin;
                                        TextView textView3 = (TextView) ViewBindings.a(view, R.id.header_no_enough_coin);
                                        if (textView3 != null) {
                                            i10 = R.id.item1;
                                            View viewA2 = ViewBindings.a(view, R.id.item1);
                                            if (viewA2 != null) {
                                                WalletDialogItemBinding walletDialogItemBindingBind = WalletDialogItemBinding.bind(viewA2);
                                                i10 = R.id.item2;
                                                View viewA3 = ViewBindings.a(view, R.id.item2);
                                                if (viewA3 != null) {
                                                    WalletDialogItemBinding walletDialogItemBindingBind2 = WalletDialogItemBinding.bind(viewA3);
                                                    i10 = R.id.item3;
                                                    View viewA4 = ViewBindings.a(view, R.id.item3);
                                                    if (viewA4 != null) {
                                                        WalletDialogItemBinding walletDialogItemBindingBind3 = WalletDialogItemBinding.bind(viewA4);
                                                        i10 = R.id.item4;
                                                        View viewA5 = ViewBindings.a(view, R.id.item4);
                                                        if (viewA5 != null) {
                                                            WalletDialogItemBinding walletDialogItemBindingBind4 = WalletDialogItemBinding.bind(viewA5);
                                                            i10 = R.id.item5;
                                                            View viewA6 = ViewBindings.a(view, R.id.item5);
                                                            if (viewA6 != null) {
                                                                WalletDialogItemBinding walletDialogItemBindingBind5 = WalletDialogItemBinding.bind(viewA6);
                                                                i10 = R.id.item6;
                                                                View viewA7 = ViewBindings.a(view, R.id.item6);
                                                                if (viewA7 != null) {
                                                                    WalletDialogItemBinding walletDialogItemBindingBind6 = WalletDialogItemBinding.bind(viewA7);
                                                                    i10 = R.id.item_layout_1;
                                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.a(view, R.id.item_layout_1);
                                                                    if (linearLayout3 != null) {
                                                                        i10 = R.id.item_layout_2;
                                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.a(view, R.id.item_layout_2);
                                                                        if (linearLayout4 != null) {
                                                                            i10 = R.id.layout_content;
                                                                            FlexLayout flexLayout2 = (FlexLayout) ViewBindings.a(view, R.id.layout_content);
                                                                            if (flexLayout2 != null) {
                                                                                i10 = R.id.loading;
                                                                                View viewA8 = ViewBindings.a(view, R.id.loading);
                                                                                if (viewA8 != null) {
                                                                                    NormalLoadingListItemDarkBinding normalLoadingListItemDarkBindingBind = NormalLoadingListItemDarkBinding.bind(viewA8);
                                                                                    i10 = R.id.margin_bottom_placeholder;
                                                                                    View viewA9 = ViewBindings.a(view, R.id.margin_bottom_placeholder);
                                                                                    if (viewA9 != null) {
                                                                                        FlexLayout flexLayout3 = (FlexLayout) view;
                                                                                        return new WalletDialogBinding(flexLayout3, textView, linearLayout, tintButton, popButton, textView2, linearLayout2, normalErrorListItemDarkBindingBind, flexLayout, textView3, walletDialogItemBindingBind, walletDialogItemBindingBind2, walletDialogItemBindingBind3, walletDialogItemBindingBind4, walletDialogItemBindingBind5, walletDialogItemBindingBind6, linearLayout3, linearLayout4, flexLayout2, normalLoadingListItemDarkBindingBind, viewA9, flexLayout3);
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static WalletDialogBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.wallet_dialog, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
