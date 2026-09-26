package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.monetization.store.view.TippingDialogFrameLayout;
import com.narvii.monetization.store.view.TippingFeedbackView;
import com.narvii.widget.PurchaseConfirmButton;

/* JADX INFO: loaded from: classes8.dex */
public final class DialogTippingConfirmBinding implements ViewBinding {

    @NonNull
    public final ImageView aminoCoin;

    @NonNull
    public final TextView availableCoinsText;

    @NonNull
    public final View clickRemoveMask;

    @NonNull
    public final PurchaseConfirmButton confirmButton;

    @NonNull
    public final TippingPriceDefaultItemBinding customTippingPrice;

    @NonNull
    public final LinearLayout defaultTippingPrice;

    @NonNull
    public final TextView getCoins;

    @NonNull
    public final UserAvatarLayoutLargeBinding myUserAvatar;

    @NonNull
    private final TippingDialogFrameLayout rootView;

    @NonNull
    public final FrameLayout tippingConfirmContent;

    @NonNull
    public final TextView tippingConfirmTitle;

    @NonNull
    public final TippingFeedbackView tippingFeedbackView;

    @NonNull
    public final TextView tippingMembersHint;

    @NonNull
    public final LiveLayerOnlineBar tippingMembersList;

    @NonNull
    public final LinearLayout tippingMembersView;

    @NonNull
    public final TextView userWalletCoins;

    private DialogTippingConfirmBinding(@NonNull TippingDialogFrameLayout tippingDialogFrameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull View view, @NonNull PurchaseConfirmButton purchaseConfirmButton, @NonNull TippingPriceDefaultItemBinding tippingPriceDefaultItemBinding, @NonNull LinearLayout linearLayout, @NonNull TextView textView2, @NonNull UserAvatarLayoutLargeBinding userAvatarLayoutLargeBinding, @NonNull FrameLayout frameLayout, @NonNull TextView textView3, @NonNull TippingFeedbackView tippingFeedbackView, @NonNull TextView textView4, @NonNull LiveLayerOnlineBar liveLayerOnlineBar, @NonNull LinearLayout linearLayout2, @NonNull TextView textView5) {
        this.rootView = tippingDialogFrameLayout;
        this.aminoCoin = imageView;
        this.availableCoinsText = textView;
        this.clickRemoveMask = view;
        this.confirmButton = purchaseConfirmButton;
        this.customTippingPrice = tippingPriceDefaultItemBinding;
        this.defaultTippingPrice = linearLayout;
        this.getCoins = textView2;
        this.myUserAvatar = userAvatarLayoutLargeBinding;
        this.tippingConfirmContent = frameLayout;
        this.tippingConfirmTitle = textView3;
        this.tippingFeedbackView = tippingFeedbackView;
        this.tippingMembersHint = textView4;
        this.tippingMembersList = liveLayerOnlineBar;
        this.tippingMembersView = linearLayout2;
        this.userWalletCoins = textView5;
    }

    @NonNull
    public static DialogTippingConfirmBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public TippingDialogFrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static DialogTippingConfirmBinding bind(@NonNull View view) {
        int i10 = R.id.amino_coin;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.amino_coin);
        if (imageView != null) {
            i10 = R.id.available_coins_text;
            TextView textView = (TextView) ViewBindings.a(view, R.id.available_coins_text);
            if (textView != null) {
                i10 = R.id.click_remove_mask;
                View viewA = ViewBindings.a(view, R.id.click_remove_mask);
                if (viewA != null) {
                    i10 = R.id.confirm_button;
                    PurchaseConfirmButton purchaseConfirmButton = (PurchaseConfirmButton) ViewBindings.a(view, R.id.confirm_button);
                    if (purchaseConfirmButton != null) {
                        i10 = R.id.custom_tipping_price;
                        View viewA2 = ViewBindings.a(view, R.id.custom_tipping_price);
                        if (viewA2 != null) {
                            TippingPriceDefaultItemBinding tippingPriceDefaultItemBindingBind = TippingPriceDefaultItemBinding.bind(viewA2);
                            i10 = R.id.default_tipping_price;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.default_tipping_price);
                            if (linearLayout != null) {
                                i10 = R.id.get_coins;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.get_coins);
                                if (textView2 != null) {
                                    i10 = R.id.my_user_avatar;
                                    View viewA3 = ViewBindings.a(view, R.id.my_user_avatar);
                                    if (viewA3 != null) {
                                        UserAvatarLayoutLargeBinding userAvatarLayoutLargeBindingBind = UserAvatarLayoutLargeBinding.bind(viewA3);
                                        i10 = R.id.tipping_confirm_content;
                                        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.tipping_confirm_content);
                                        if (frameLayout != null) {
                                            i10 = R.id.tipping_confirm_title;
                                            TextView textView3 = (TextView) ViewBindings.a(view, R.id.tipping_confirm_title);
                                            if (textView3 != null) {
                                                i10 = R.id.tipping_feedback_view;
                                                TippingFeedbackView tippingFeedbackView = (TippingFeedbackView) ViewBindings.a(view, R.id.tipping_feedback_view);
                                                if (tippingFeedbackView != null) {
                                                    i10 = R.id.tipping_members_hint;
                                                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.tipping_members_hint);
                                                    if (textView4 != null) {
                                                        i10 = R.id.tipping_members_list;
                                                        LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) ViewBindings.a(view, R.id.tipping_members_list);
                                                        if (liveLayerOnlineBar != null) {
                                                            i10 = R.id.tipping_members_view;
                                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.a(view, R.id.tipping_members_view);
                                                            if (linearLayout2 != null) {
                                                                i10 = R.id.user_wallet_coins;
                                                                TextView textView5 = (TextView) ViewBindings.a(view, R.id.user_wallet_coins);
                                                                if (textView5 != null) {
                                                                    return new DialogTippingConfirmBinding((TippingDialogFrameLayout) view, imageView, textView, viewA, purchaseConfirmButton, tippingPriceDefaultItemBindingBind, linearLayout, textView2, userAvatarLayoutLargeBindingBind, frameLayout, textView3, tippingFeedbackView, textView4, liveLayerOnlineBar, linearLayout2, textView5);
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
    public static DialogTippingConfirmBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.dialog_tipping_confirm, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
