package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;

/* JADX INFO: loaded from: classes9.dex */
public final class ComponentRedeemCouponBinding implements ViewBinding {

    @NonNull
    public final CheckBox applyCouponCheckBox;

    @NonNull
    public final TextView applyCouponDiscountInfo;

    @NonNull
    public final FrameLayout couponsContainer;

    @NonNull
    public final TextView earnCoinsText;

    @NonNull
    public final ImageView purchaseLoading;

    @NonNull
    public final LinearLayout redeem;

    @NonNull
    public final TextView redeemAutoRenewHintInfo;

    @NonNull
    public final TextView redeemCoinCount;

    @NonNull
    public final TextView redeemCoinSubscriptionStartTime;

    @NonNull
    public final TextView redeemText;

    @NonNull
    private final LinearLayout rootView;

    @NonNull
    public static ComponentRedeemCouponBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public LinearLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static ComponentRedeemCouponBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.component_redeem_coupon, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private ComponentRedeemCouponBinding(@NonNull LinearLayout linearLayout, @NonNull CheckBox checkBox, @NonNull TextView textView, @NonNull FrameLayout frameLayout, @NonNull TextView textView2, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.rootView = linearLayout;
        this.applyCouponCheckBox = checkBox;
        this.applyCouponDiscountInfo = textView;
        this.couponsContainer = frameLayout;
        this.earnCoinsText = textView2;
        this.purchaseLoading = imageView;
        this.redeem = linearLayout2;
        this.redeemAutoRenewHintInfo = textView3;
        this.redeemCoinCount = textView4;
        this.redeemCoinSubscriptionStartTime = textView5;
        this.redeemText = textView6;
    }

    @NonNull
    public static ComponentRedeemCouponBinding bind(@NonNull View view) {
        int i10 = R.id.apply_coupon_check_box;
        CheckBox checkBox = (CheckBox) ViewBindings.a(view, R.id.apply_coupon_check_box);
        if (checkBox != null) {
            i10 = R.id.apply_coupon_discount_info;
            TextView textView = (TextView) ViewBindings.a(view, R.id.apply_coupon_discount_info);
            if (textView != null) {
                i10 = R.id.coupons_container;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.a(view, R.id.coupons_container);
                if (frameLayout != null) {
                    i10 = R.id.earn_coins_text;
                    TextView textView2 = (TextView) ViewBindings.a(view, R.id.earn_coins_text);
                    if (textView2 != null) {
                        i10 = R.id.purchase_loading;
                        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.purchase_loading);
                        if (imageView != null) {
                            i10 = R.id.redeem;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.redeem);
                            if (linearLayout != null) {
                                i10 = R.id.redeem_auto_renew_hint_info;
                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.redeem_auto_renew_hint_info);
                                if (textView3 != null) {
                                    i10 = R.id.redeem_coin_count;
                                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.redeem_coin_count);
                                    if (textView4 != null) {
                                        i10 = R.id.redeem_coin_subscription_start_time;
                                        TextView textView5 = (TextView) ViewBindings.a(view, R.id.redeem_coin_subscription_start_time);
                                        if (textView5 != null) {
                                            i10 = R.id.redeem_text;
                                            TextView textView6 = (TextView) ViewBindings.a(view, R.id.redeem_text);
                                            if (textView6 != null) {
                                                return new ComponentRedeemCouponBinding((LinearLayout) view, checkBox, textView, frameLayout, textView2, imageView, linearLayout, textView3, textView4, textView5, textView6);
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
}
