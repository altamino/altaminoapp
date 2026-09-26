package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.narvii.amino.master.R;
import com.narvii.monetization.utils.StoreItemNameView;
import com.narvii.wallet.RedeemCouponComponent;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentStoreItemConfirmBinding implements ViewBinding {

    @NonNull
    public final View clickRemoveMask;

    @NonNull
    public final LinearLayout purchaseBenefitsAminoPlusHint;

    @NonNull
    public final RedeemCouponComponent redeemCouponComponent;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final NVImageView storeItemIcon;

    @NonNull
    public final StoreItemNameView storeItemName;

    @NonNull
    public final TextView storeItemOriginalPriceHint;

    @NonNull
    public final TextView storeItemPrice;

    @NonNull
    public static FragmentStoreItemConfirmBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static FragmentStoreItemConfirmBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_store_item_confirm, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    private FragmentStoreItemConfirmBinding(@NonNull FrameLayout frameLayout, @NonNull View view, @NonNull LinearLayout linearLayout, @NonNull RedeemCouponComponent redeemCouponComponent, @NonNull NVImageView nVImageView, @NonNull StoreItemNameView storeItemNameView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.rootView = frameLayout;
        this.clickRemoveMask = view;
        this.purchaseBenefitsAminoPlusHint = linearLayout;
        this.redeemCouponComponent = redeemCouponComponent;
        this.storeItemIcon = nVImageView;
        this.storeItemName = storeItemNameView;
        this.storeItemOriginalPriceHint = textView;
        this.storeItemPrice = textView2;
    }

    @NonNull
    public static FragmentStoreItemConfirmBinding bind(@NonNull View view) {
        int i10 = R.id.click_remove_mask;
        View viewA = ViewBindings.a(view, R.id.click_remove_mask);
        if (viewA != null) {
            i10 = R.id.purchase_benefits_amino_plus_hint;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(view, R.id.purchase_benefits_amino_plus_hint);
            if (linearLayout != null) {
                i10 = R.id.redeem_coupon_component;
                RedeemCouponComponent redeemCouponComponent = (RedeemCouponComponent) ViewBindings.a(view, R.id.redeem_coupon_component);
                if (redeemCouponComponent != null) {
                    i10 = R.id.store_item_icon;
                    NVImageView nVImageView = (NVImageView) ViewBindings.a(view, R.id.store_item_icon);
                    if (nVImageView != null) {
                        i10 = R.id.store_item_name;
                        StoreItemNameView storeItemNameView = (StoreItemNameView) ViewBindings.a(view, R.id.store_item_name);
                        if (storeItemNameView != null) {
                            i10 = R.id.store_item_original_price_hint;
                            TextView textView = (TextView) ViewBindings.a(view, R.id.store_item_original_price_hint);
                            if (textView != null) {
                                i10 = R.id.store_item_price;
                                TextView textView2 = (TextView) ViewBindings.a(view, R.id.store_item_price);
                                if (textView2 != null) {
                                    return new FragmentStoreItemConfirmBinding((FrameLayout) view, viewA, linearLayout, redeemCouponComponent, nVImageView, storeItemNameView, textView, textView2);
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
