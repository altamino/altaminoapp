package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.coupons.CouponCardCoinsLayout;

/* JADX INFO: loaded from: classes8.dex */
public final class CouponsCardCoinsItemBinding implements ViewBinding {

    @NonNull
    public final CouponCardCoinsLayout couponCardLayout;

    @NonNull
    public final TextView couponsCardCoinsDesc;

    @NonNull
    public final TextView couponsCardSourceDesc;

    @NonNull
    public final TextView couponsCoinsAmount;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public static CouponsCardCoinsItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static CouponsCardCoinsItemBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.coupons_card_coins_item, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private CouponsCardCoinsItemBinding(@NonNull FrameLayout frameLayout, @NonNull CouponCardCoinsLayout couponCardCoinsLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.rootView = frameLayout;
        this.couponCardLayout = couponCardCoinsLayout;
        this.couponsCardCoinsDesc = textView;
        this.couponsCardSourceDesc = textView2;
        this.couponsCoinsAmount = textView3;
    }

    @NonNull
    public static CouponsCardCoinsItemBinding bind(@NonNull View view) {
        int i10 = R.id.coupon_card_layout;
        CouponCardCoinsLayout couponCardCoinsLayout = (CouponCardCoinsLayout) ViewBindings.a(view, R.id.coupon_card_layout);
        if (couponCardCoinsLayout != null) {
            i10 = R.id.coupons_card_coins_desc;
            TextView textView = (TextView) ViewBindings.a(view, R.id.coupons_card_coins_desc);
            if (textView != null) {
                i10 = R.id.coupons_card_source_desc;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.coupons_card_source_desc);
                if (textView2 != null) {
                    i10 = R.id.coupons_coins_amount;
                    TextView textView3 = (TextView) ViewBindings.a(view, R.id.coupons_coins_amount);
                    if (textView3 != null) {
                        return new CouponsCardCoinsItemBinding((FrameLayout) view, couponCardCoinsLayout, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
