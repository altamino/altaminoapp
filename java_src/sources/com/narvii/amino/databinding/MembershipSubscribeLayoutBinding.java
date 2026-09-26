package com.narvii.amino.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.github.mmin18.widget.FlexLayout;
import com.narvii.amino.master.R;
import com.narvii.wallet.RedeemCouponComponent;
import com.narvii.widget.FontAwesomeView;
import com.narvii.widget.OrderedLinearLayout;
import com.narvii.widget.SpinningView;
import com.narvii.widget.ThumbImageView;

/* JADX INFO: loaded from: classes7.dex */
public final class MembershipSubscribeLayoutBinding implements ViewBinding {

    @NonNull
    public final ImageView back;

    @NonNull
    public final TextView error;

    @NonNull
    public final TextView membershipInfoText;

    @NonNull
    public final FrameLayout overlay;

    @NonNull
    public final SpinningView progress;

    @NonNull
    public final SpinningView progress1;

    @NonNull
    public final ThumbImageView purchase;

    @NonNull
    public final TextView purchaseDirectly;

    @NonNull
    public final TextView purchaseText;

    @NonNull
    public final RedeemCouponComponent redeemCouponComponent;

    @NonNull
    public final FontAwesomeView retry;

    @NonNull
    public final FlexLayout root;

    @NonNull
    private final FrameLayout rootView;

    @NonNull
    public final OrderedLinearLayout sublist;

    @NonNull
    public final TextView switchRedeem;

    @NonNull
    public final ImageView title;

    private MembershipSubscribeLayoutBinding(@NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull FrameLayout frameLayout2, @NonNull SpinningView spinningView, @NonNull SpinningView spinningView2, @NonNull ThumbImageView thumbImageView, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull RedeemCouponComponent redeemCouponComponent, @NonNull FontAwesomeView fontAwesomeView, @NonNull FlexLayout flexLayout, @NonNull OrderedLinearLayout orderedLinearLayout, @NonNull TextView textView5, @NonNull ImageView imageView2) {
        this.rootView = frameLayout;
        this.back = imageView;
        this.error = textView;
        this.membershipInfoText = textView2;
        this.overlay = frameLayout2;
        this.progress = spinningView;
        this.progress1 = spinningView2;
        this.purchase = thumbImageView;
        this.purchaseDirectly = textView3;
        this.purchaseText = textView4;
        this.redeemCouponComponent = redeemCouponComponent;
        this.retry = fontAwesomeView;
        this.root = flexLayout;
        this.sublist = orderedLinearLayout;
        this.switchRedeem = textView5;
        this.title = imageView2;
    }

    @NonNull
    public static MembershipSubscribeLayoutBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @NonNull
    public FrameLayout getRoot() {
        return this.rootView;
    }

    @NonNull
    public static MembershipSubscribeLayoutBinding bind(@NonNull View view) {
        int i10 = R.id.back;
        ImageView imageView = (ImageView) ViewBindings.a(view, R.id.back);
        if (imageView != null) {
            i10 = R.id.error;
            TextView textView = (TextView) ViewBindings.a(view, R.id.error);
            if (textView != null) {
                i10 = R.id.membership_info_text;
                TextView textView2 = (TextView) ViewBindings.a(view, R.id.membership_info_text);
                if (textView2 != null) {
                    FrameLayout frameLayout = (FrameLayout) view;
                    i10 = android.R.id.progress;
                    SpinningView spinningView = (SpinningView) ViewBindings.a(view, android.R.id.progress);
                    if (spinningView != null) {
                        i10 = R.id.progress;
                        SpinningView spinningView2 = (SpinningView) ViewBindings.a(view, R.id.progress);
                        if (spinningView2 != null) {
                            i10 = R.id.purchase;
                            ThumbImageView thumbImageView = (ThumbImageView) ViewBindings.a(view, R.id.purchase);
                            if (thumbImageView != null) {
                                i10 = R.id.purchase_directly;
                                TextView textView3 = (TextView) ViewBindings.a(view, R.id.purchase_directly);
                                if (textView3 != null) {
                                    i10 = R.id.purchase_text;
                                    TextView textView4 = (TextView) ViewBindings.a(view, R.id.purchase_text);
                                    if (textView4 != null) {
                                        i10 = R.id.redeem_coupon_component;
                                        RedeemCouponComponent redeemCouponComponent = (RedeemCouponComponent) ViewBindings.a(view, R.id.redeem_coupon_component);
                                        if (redeemCouponComponent != null) {
                                            i10 = R.id.retry;
                                            FontAwesomeView fontAwesomeView = (FontAwesomeView) ViewBindings.a(view, R.id.retry);
                                            if (fontAwesomeView != null) {
                                                i10 = R.id.root;
                                                FlexLayout flexLayout = (FlexLayout) ViewBindings.a(view, R.id.root);
                                                if (flexLayout != null) {
                                                    i10 = R.id.sublist;
                                                    OrderedLinearLayout orderedLinearLayout = (OrderedLinearLayout) ViewBindings.a(view, R.id.sublist);
                                                    if (orderedLinearLayout != null) {
                                                        i10 = R.id.switch_redeem;
                                                        TextView textView5 = (TextView) ViewBindings.a(view, R.id.switch_redeem);
                                                        if (textView5 != null) {
                                                            i10 = R.id.title;
                                                            ImageView imageView2 = (ImageView) ViewBindings.a(view, R.id.title);
                                                            if (imageView2 != null) {
                                                                return new MembershipSubscribeLayoutBinding(frameLayout, imageView, textView, textView2, frameLayout, spinningView, spinningView2, thumbImageView, textView3, textView4, redeemCouponComponent, fontAwesomeView, flexLayout, orderedLinearLayout, textView5, imageView2);
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
    public static MembershipSubscribeLayoutBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z6) {
        View viewInflate = layoutInflater.inflate(R.layout.membership_subscribe_layout, viewGroup, false);
        if (z6) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
