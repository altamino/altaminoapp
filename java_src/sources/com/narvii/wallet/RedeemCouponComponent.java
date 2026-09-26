package com.narvii.wallet;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.IdRes;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.ObjectItemClickListener;
import com.narvii.model.IBaseProduct;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.utils.StoreItemHelper;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.LinkTouchMovementMethod;
import com.narvii.util.text.NVText;
import com.narvii.util.text.OnTagClickListener;
import com.narvii.util.text.TextUtils;
import com.safedk.android.utils.Logger;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class RedeemCouponComponent extends RelativeLayout {
    private final int COUPON_STATUS_AVAILABLE_COUPON;
    private final int COUPON_STATUS_COUPON_TO_CLAIM;
    private final int COUPON_STATUS_NO_COUPON_AVAILABLE;

    @NotNull
    private ApiService apiService;

    @Nullable
    private IRedeemCouponCallback callback;

    @NotNull
    private final w7.m couponApplyCheckbox$delegate;

    @NotNull
    private final w7.m couponApplyDiscount$delegate;

    @NotNull
    private final w7.m couponContainer$delegate;

    @Nullable
    private ArrayList<Coupon> couponList;

    @Nullable
    private Coupon couponToUse;
    private DateFormat dateFormat;

    @NotNull
    private final w7.m earnFreeCoins$delegate;

    @Nullable
    private ObjectItemClickListener getCoinsPreClickListener;
    private boolean isCouponFetchingInProcess;
    private boolean isHideCouponsInfo;

    @NotNull
    private MembershipService membershipService;

    @NotNull
    private final w7.m purchaseLoading$delegate;

    @NotNull
    private final w7.m purchaseLoadingAnimation$delegate;

    @NotNull
    private final w7.m redeemAutoRenewHint$delegate;

    @NotNull
    private final w7.m redeemButton$delegate;

    @NotNull
    private final w7.m redeemCoinCount$delegate;

    @NotNull
    private final w7.m redeemSubscriptionStartTime$delegate;

    @NotNull
    private final w7.m redeemText$delegate;

    @NotNull
    private StoreItemHelper storeItemHelper;

    @Nullable
    private Coupon suggestedCoupon;

    @Nullable
    private IBaseProduct toRedeemProduct;

    public interface IRedeemCouponCallback {
        void onRedeemRequested(@Nullable IBaseProduct iBaseProduct, @Nullable Coupon coupon);
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: com.narvii.wallet.RedeemCouponComponent$bind$1, reason: invalid class name */
    static final class AnonymousClass1<T> extends kotlin.jvm.internal.v implements e8.a<T> {
        final /* synthetic */ int $res;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10) {
            super(0);
            this.$res = i10;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TT; */
        @Override // e8.a
        @NotNull
        public final View invoke() {
            View viewFindViewById = RedeemCouponComponent.this.findViewById(this.$res);
            kotlin.jvm.internal.t.h(viewFindViewById, "null cannot be cast to non-null type T of com.narvii.wallet.RedeemCouponComponent.bind");
            return viewFindViewById;
        }
    }

    public RedeemCouponComponent(@Nullable Context context) {
        super(context);
        this.COUPON_STATUS_NO_COUPON_AVAILABLE = 1;
        this.COUPON_STATUS_COUPON_TO_CLAIM = 2;
        this.COUPON_STATUS_AVAILABLE_COUPON = 3;
        this.dateFormat = DateFormat.getDateInstance(1, Locale.getDefault());
        this.earnFreeCoins$delegate = bind(this, R.id.earn_coins_text);
        this.redeemCoinCount$delegate = bind(this, R.id.redeem_coin_count);
        this.redeemSubscriptionStartTime$delegate = bind(this, R.id.redeem_coin_subscription_start_time);
        this.redeemText$delegate = bind(this, R.id.redeem_text);
        this.redeemAutoRenewHint$delegate = bind(this, R.id.redeem_auto_renew_hint_info);
        this.redeemButton$delegate = bind(this, R.id.redeem);
        this.couponApplyCheckbox$delegate = bind(this, R.id.apply_coupon_check_box);
        this.couponApplyDiscount$delegate = bind(this, R.id.apply_coupon_discount_info);
        this.couponContainer$delegate = bind(this, R.id.coupons_container);
        this.purchaseLoading$delegate = bind(this, R.id.purchase_loading);
        this.purchaseLoadingAnimation$delegate = w7.o.a(new RedeemCouponComponent$purchaseLoadingAnimation$2(this));
        this.couponList = new ArrayList<>();
        LayoutInflater.from(getContext()).inflate(R.layout.component_redeem_coupon, (ViewGroup) this, true);
        Object service = Utils.getNVContext(getContext()).getService("api");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        this.apiService = (ApiService) service;
        Object service2 = Utils.getNVContext(getContext()).getService("membership");
        kotlin.jvm.internal.t.i(service2, "getService(...)");
        this.membershipService = (MembershipService) service2;
        this.storeItemHelper = new StoreItemHelper(Utils.getNVContext(getContext()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFinishInflate$lambda$0(View view) {
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Nullable
    public ObjectItemClickListener getGetCoinsPreClickListener() {
        return this.getCoinsPreClickListener;
    }

    public void setGetCoinsPreClickListener(@Nullable ObjectItemClickListener objectItemClickListener) {
        this.getCoinsPreClickListener = objectItemClickListener;
    }

    private final <T extends View> w7.m<T> bind(RedeemCouponComponent redeemCouponComponent, @IdRes int i10) {
        return w7.o.b(w7.q.NONE, redeemCouponComponent.new AnonymousClass1(i10));
    }

    private final void fetchCouponList() {
        if (this.isHideCouponsInfo) {
            this.suggestedCoupon = null;
            updateCouponSection(this.COUPON_STATUS_NO_COUPON_AVAILABLE, false);
        } else {
            if (this.isCouponFetchingInProcess) {
                bindCoupons(this.couponList);
                return;
            }
            this.isCouponFetchingInProcess = true;
            this.apiService.exec(ApiRequest.builder().path("/coupon/new-user-coupon").build(), new ApiResponseListener<CouponListResponse>(CouponListResponse.class) { // from class: com.narvii.wallet.RedeemCouponComponent.fetchCouponList.1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(@Nullable ApiRequest apiRequest, @Nullable CouponListResponse couponListResponse) throws Exception {
                    super.onFinish(apiRequest, couponListResponse);
                    RedeemCouponComponent.this.isCouponFetchingInProcess = false;
                    RedeemCouponComponent.this.couponList = couponListResponse != null ? couponListResponse.getCouponList() : null;
                    RedeemCouponComponent redeemCouponComponent = RedeemCouponComponent.this;
                    redeemCouponComponent.bindCoupons(redeemCouponComponent.couponList);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                    super.onFail(apiRequest, i10, list, str, apiResponse, th);
                    RedeemCouponComponent.this.isCouponFetchingInProcess = false;
                }
            });
        }
    }

    private final CheckBox getCouponApplyCheckbox() {
        return (CheckBox) this.couponApplyCheckbox$delegate.getValue();
    }

    private final TextView getCouponApplyDiscount() {
        return (TextView) this.couponApplyDiscount$delegate.getValue();
    }

    private final View getCouponContainer() {
        return (View) this.couponContainer$delegate.getValue();
    }

    private final TextView getEarnFreeCoins() {
        return (TextView) this.earnFreeCoins$delegate.getValue();
    }

    private final ImageView getPurchaseLoading() {
        return (ImageView) this.purchaseLoading$delegate.getValue();
    }

    private final Animation getPurchaseLoadingAnimation() {
        return (Animation) this.purchaseLoadingAnimation$delegate.getValue();
    }

    private final TextView getRedeemAutoRenewHint() {
        return (TextView) this.redeemAutoRenewHint$delegate.getValue();
    }

    private final LinearLayout getRedeemButton() {
        return (LinearLayout) this.redeemButton$delegate.getValue();
    }

    private final TextView getRedeemCoinCount() {
        return (TextView) this.redeemCoinCount$delegate.getValue();
    }

    private final TextView getRedeemSubscriptionStartTime() {
        return (TextView) this.redeemSubscriptionStartTime$delegate.getValue();
    }

    private final TextView getRedeemText() {
        return (TextView) this.redeemText$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Animation lazyInitPurchaseLoading() {
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setRepeatCount(-1);
        rotateAnimation.setDuration(1000L);
        return rotateAnimation;
    }

    private final void updateCouponSection(int i10, boolean z6) {
        if (i10 == this.COUPON_STATUS_NO_COUPON_AVAILABLE || i10 == this.COUPON_STATUS_COUPON_TO_CLAIM) {
            this.couponToUse = null;
            getCouponContainer().setVisibility(8);
            return;
        }
        if (i10 == this.COUPON_STATUS_AVAILABLE_COUPON) {
            getCouponApplyCheckbox().setVisibility(0);
            getCouponContainer().setVisibility(0);
            getCouponApplyCheckbox().setChecked(z6 && !this.isHideCouponsInfo);
            this.couponToUse = z6 ? this.suggestedCoupon : null;
            CheckBox couponApplyCheckbox = getCouponApplyCheckbox();
            Resources resources = getResources();
            Object[] objArr = new Object[1];
            Coupon coupon = this.suggestedCoupon;
            objArr[0] = coupon != null ? Integer.valueOf(coupon.getValue()) : null;
            couponApplyCheckbox.setText(resources.getString(R.string.one_coupon_available_hint, objArr));
            TextView couponApplyDiscount = getCouponApplyDiscount();
            Coupon coupon2 = this.suggestedCoupon;
            couponApplyDiscount.setText(String.valueOf(-(coupon2 != null ? coupon2.getValue() : 0)));
            getCouponApplyDiscount().setVisibility(z6 ? 0 : 4);
        }
    }

    private final void updateRedeemPrice() {
        int value;
        IBaseProduct iBaseProduct = this.toRedeemProduct;
        if (iBaseProduct != null) {
            kotlin.jvm.internal.t.g(iBaseProduct);
            if (iBaseProduct.getAvailableDurationInDays() >= 0) {
                getRedeemSubscriptionStartTime().setVisibility(0);
                getRedeemSubscriptionStartTime().setText(getContext().getString(R.string.start_date, this.dateFormat.format(new Date())));
                getRedeemAutoRenewHint().setVisibility(0);
            } else {
                getRedeemSubscriptionStartTime().setVisibility(8);
                getRedeemAutoRenewHint().setVisibility(8);
            }
            IBaseProduct iBaseProduct2 = this.toRedeemProduct;
            kotlin.jvm.internal.t.g(iBaseProduct2);
            value = iBaseProduct2.getProductPrice(this.membershipService.isMembership());
        } else {
            value = 0;
        }
        if (this.toRedeemProduct != null && this.suggestedCoupon != null && getCouponApplyCheckbox().isChecked()) {
            Coupon coupon = this.suggestedCoupon;
            kotlin.jvm.internal.t.g(coupon);
            value -= coupon.getValue();
        }
        getRedeemCoinCount().setText(this.storeItemHelper.getPriceExpiredTimeCheck(value >= 0 ? value : 0, this.toRedeemProduct));
    }

    public final void bindCoupons(@Nullable ArrayList<Coupon> arrayList) {
        int productPrice;
        boolean z6 = false;
        if (this.isHideCouponsInfo) {
            this.suggestedCoupon = null;
            updateCouponSection(this.COUPON_STATUS_NO_COUPON_AVAILABLE, false);
            return;
        }
        if (arrayList != null) {
            for (Coupon coupon : arrayList) {
                IBaseProduct iBaseProduct = this.toRedeemProduct;
                if (iBaseProduct == null) {
                    productPrice = 0;
                } else {
                    kotlin.jvm.internal.t.g(iBaseProduct);
                    productPrice = iBaseProduct.getProductPrice(this.membershipService.isMembership());
                }
                coupon.hasProperValue = coupon.getValue() <= productPrice;
            }
        }
        if (this.membershipService.canGetNewMemberRewards()) {
            this.suggestedCoupon = null;
            updateCouponSection(this.COUPON_STATUS_COUPON_TO_CLAIM, false);
        } else if (arrayList == null || arrayList.isEmpty()) {
            this.suggestedCoupon = null;
            updateCouponSection(this.COUPON_STATUS_NO_COUPON_AVAILABLE, false);
        } else {
            for (Coupon coupon2 : arrayList) {
                if (coupon2.isAvailable()) {
                    this.suggestedCoupon = coupon2;
                    break;
                }
            }
            Coupon coupon3 = this.suggestedCoupon;
            if (coupon3 == null) {
                updateCouponSection(this.COUPON_STATUS_NO_COUPON_AVAILABLE, false);
            } else {
                int i10 = this.COUPON_STATUS_AVAILABLE_COUPON;
                kotlin.jvm.internal.t.g(coupon3);
                if (coupon3.hasProperValue && getCouponApplyCheckbox().isChecked()) {
                    z6 = true;
                }
                updateCouponSection(i10, z6);
            }
        }
        updateRedeemPrice();
    }

    public final void bindProduct(@NotNull IBaseProduct product, boolean z6, @Nullable IRedeemCouponCallback iRedeemCouponCallback) {
        kotlin.jvm.internal.t.j(product, "product");
        this.callback = iRedeemCouponCallback;
        this.toRedeemProduct = product;
        this.isHideCouponsInfo = product.getAvailableDurationInDays() >= 0;
        getPurchaseLoadingAnimation().cancel();
        getPurchaseLoading().clearAnimation();
        getPurchaseLoading().setVisibility(8);
        getRedeemText().setText(R.string.buy);
        getRedeemButton().setClickable(true);
        updateRedeemPrice();
        updateEarnFreeCoinsContent();
        fetchCouponList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFinishInflate$lambda$1(RedeemCouponComponent this$0, View view) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.getPurchaseLoading().setVisibility(0);
        this$0.getPurchaseLoading().startAnimation(this$0.getPurchaseLoadingAnimation());
        this$0.getRedeemText().setText(this$0.getContext().getString(R.string.purchasing));
        this$0.getRedeemButton().setClickable(false);
        IRedeemCouponCallback iRedeemCouponCallback = this$0.callback;
        if (iRedeemCouponCallback != null) {
            iRedeemCouponCallback.onRedeemRequested(this$0.toRedeemProduct, this$0.couponToUse);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFinishInflate$lambda$2(RedeemCouponComponent this$0, CompoundButton compoundButton, boolean z6) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        if (this$0.suggestedCoupon != null) {
            this$0.updateCouponSection(this$0.COUPON_STATUS_AVAILABLE_COUPON, z6);
            this$0.updateRedeemPrice();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onFinishInflate$lambda$3(RedeemCouponComponent this$0, View view, NVText nVText, int i10, String str) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(Utils.getNVContext(this$0.getContext()), new Intent("android.intent.action.VIEW", Uri.parse("ndc://help-center")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateEarnFreeCoinsContent$lambda$4(RedeemCouponComponent this$0, View view, NVText nVText, int i10, String str) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        ObjectItemClickListener getCoinsPreClickListener = this$0.getGetCoinsPreClickListener();
        if (getCoinsPreClickListener != null) {
            getCoinsPreClickListener.onItemClick(null);
        }
        PurchaseCoinFragment.show(Utils.getNVContext(this$0.getContext()), false);
    }

    public final void destroy() {
        getPurchaseLoadingAnimation().cancel();
        getPurchaseLoading().clearAnimation();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        setOnClickListener(new View.OnClickListener() { // from class: com.narvii.wallet.k0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RedeemCouponComponent.onFinishInflate$lambda$0(view);
            }
        });
        getRedeemButton().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.wallet.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RedeemCouponComponent.onFinishInflate$lambda$1(this.f3025a, view);
            }
        });
        getCouponApplyCheckbox().setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.narvii.wallet.m0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z6) {
                RedeemCouponComponent.onFinishInflate$lambda$2(this.f3026a, compoundButton, z6);
            }
        });
        String string = getResources().getString(R.string.click_here_no_capital);
        kotlin.jvm.internal.t.i(string, "getString(...)");
        String string2 = getResources().getString(R.string.auto_renew_hint_info, string);
        kotlin.jvm.internal.t.i(string2, "getString(...)");
        NVText nVText = new NVText(string2);
        nVText.markText(string, new OnTagClickListener() { // from class: com.narvii.wallet.n0
            @Override // com.narvii.util.text.OnTagClickListener
            public final void onClick(View view, NVText nVText2, int i10, String str) {
                RedeemCouponComponent.onFinishInflate$lambda$3(this.f3030a, view, nVText2, i10, str);
            }
        });
        getRedeemAutoRenewHint().setClickable(true);
        getRedeemAutoRenewHint().setMovementMethod(LinkTouchMovementMethod.getInstance());
        getRedeemAutoRenewHint().setText(nVText);
        fetchCouponList();
    }

    public final void updateEarnFreeCoinsContent() {
        String string = getContext().getString(R.string.membership_owned_coins, TextUtils.numberFormat.format(Integer.valueOf(this.membershipService.walletBalance())));
        kotlin.jvm.internal.t.i(string, "getString(...)");
        String string2 = getContext().getString(R.string.tipping_dialog_get_coins);
        kotlin.jvm.internal.t.i(string2, "getString(...)");
        NVText nVText = new NVText(string + " " + string2);
        nVText.markText(string2, new OnTagClickListener() { // from class: com.narvii.wallet.o0
            @Override // com.narvii.util.text.OnTagClickListener
            public final void onClick(View view, NVText nVText2, int i10, String str) {
                RedeemCouponComponent.updateEarnFreeCoinsContent$lambda$4(this.f3032a, view, nVText2, i10, str);
            }
        });
        getEarnFreeCoins().setClickable(true);
        getEarnFreeCoins().setMovementMethod(LinkTouchMovementMethod.getInstance());
        getEarnFreeCoins().setText(nVText, TextView.BufferType.SPANNABLE);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RedeemCouponComponent(@Nullable Context context, @NotNull AttributeSet attributes) {
        super(context, attributes);
        kotlin.jvm.internal.t.j(attributes, "attributes");
        this.COUPON_STATUS_NO_COUPON_AVAILABLE = 1;
        this.COUPON_STATUS_COUPON_TO_CLAIM = 2;
        this.COUPON_STATUS_AVAILABLE_COUPON = 3;
        this.dateFormat = DateFormat.getDateInstance(1, Locale.getDefault());
        this.earnFreeCoins$delegate = bind(this, R.id.earn_coins_text);
        this.redeemCoinCount$delegate = bind(this, R.id.redeem_coin_count);
        this.redeemSubscriptionStartTime$delegate = bind(this, R.id.redeem_coin_subscription_start_time);
        this.redeemText$delegate = bind(this, R.id.redeem_text);
        this.redeemAutoRenewHint$delegate = bind(this, R.id.redeem_auto_renew_hint_info);
        this.redeemButton$delegate = bind(this, R.id.redeem);
        this.couponApplyCheckbox$delegate = bind(this, R.id.apply_coupon_check_box);
        this.couponApplyDiscount$delegate = bind(this, R.id.apply_coupon_discount_info);
        this.couponContainer$delegate = bind(this, R.id.coupons_container);
        this.purchaseLoading$delegate = bind(this, R.id.purchase_loading);
        this.purchaseLoadingAnimation$delegate = w7.o.a(new RedeemCouponComponent$purchaseLoadingAnimation$2(this));
        this.couponList = new ArrayList<>();
        LayoutInflater.from(getContext()).inflate(R.layout.component_redeem_coupon, (ViewGroup) this, true);
        Object service = Utils.getNVContext(getContext()).getService("api");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        this.apiService = (ApiService) service;
        Object service2 = Utils.getNVContext(getContext()).getService("membership");
        kotlin.jvm.internal.t.i(service2, "getService(...)");
        this.membershipService = (MembershipService) service2;
        this.storeItemHelper = new StoreItemHelper(Utils.getNVContext(getContext()));
    }
}
