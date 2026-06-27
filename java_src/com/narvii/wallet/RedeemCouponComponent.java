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
import com.narvii.amino.mastes.R;
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
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: RedeemCouponComponent.kt */
/* loaded from: classes3.dex */
public final class RedeemCouponComponent extends RelativeLayout {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RedeemCouponComponent.class), "earnFreeCoins", "getEarnFreeCoins()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RedeemCouponComponent.class), "redeemCoinCount", "getRedeemCoinCount()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RedeemCouponComponent.class), "redeemSubscriptionStartTime", "getRedeemSubscriptionStartTime()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RedeemCouponComponent.class), "redeemText", "getRedeemText()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RedeemCouponComponent.class), "redeemAutoRenewHint", "getRedeemAutoRenewHint()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RedeemCouponComponent.class), "redeemButton", "getRedeemButton()Landroid/widget/LinearLayout;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RedeemCouponComponent.class), "couponApplyCheckbox", "getCouponApplyCheckbox()Landroid/widget/CheckBox;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RedeemCouponComponent.class), "couponApplyDiscount", "getCouponApplyDiscount()Landroid/widget/TextView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RedeemCouponComponent.class), "couponContainer", "getCouponContainer()Landroid/view/View;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RedeemCouponComponent.class), "purchaseLoading", "getPurchaseLoading()Landroid/widget/ImageView;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(RedeemCouponComponent.class), "purchaseLoadingAnimation", "getPurchaseLoadingAnimation()Landroid/view/animation/Animation;"))};
    private final int COUPON_STATUS_AVAILABLE_COUPON;
    private final int COUPON_STATUS_COUPON_TO_CLAIM;
    private final int COUPON_STATUS_NO_COUPON_AVAILABLE;
    private HashMap _$_findViewCache;
    private ApiService apiService;
    private IRedeemCouponCallback callback;
    private final Lazy couponApplyCheckbox$delegate;
    private final Lazy couponApplyDiscount$delegate;
    private final Lazy couponContainer$delegate;
    private ArrayList<Coupon> couponList;
    private Coupon couponToUse;
    private DateFormat dateFormat;
    private final Lazy earnFreeCoins$delegate;
    private ObjectItemClickListener getCoinsPreClickListener;
    private boolean isCouponFetchingInProcess;
    private boolean isHideCouponsInfo;
    private MembershipService membershipService;
    private final Lazy purchaseLoading$delegate;
    private final Lazy purchaseLoadingAnimation$delegate;
    private final Lazy redeemAutoRenewHint$delegate;
    private final Lazy redeemButton$delegate;
    private final Lazy redeemCoinCount$delegate;
    private final Lazy redeemSubscriptionStartTime$delegate;
    private final Lazy redeemText$delegate;
    private StoreItemHelper storeItemHelper;
    private Coupon suggestedCoupon;
    private IBaseProduct toRedeemProduct;

    /* compiled from: RedeemCouponComponent.kt */
    public interface IRedeemCouponCallback {
        void onRedeemRequested(IBaseProduct iBaseProduct, Coupon coupon);
    }

    private final CheckBox getCouponApplyCheckbox() {
        Lazy lazy = this.couponApplyCheckbox$delegate;
        KProperty kProperty = $$delegatedProperties[6];
        return (CheckBox) lazy.getValue();
    }

    private final TextView getCouponApplyDiscount() {
        Lazy lazy = this.couponApplyDiscount$delegate;
        KProperty kProperty = $$delegatedProperties[7];
        return (TextView) lazy.getValue();
    }

    private final View getCouponContainer() {
        Lazy lazy = this.couponContainer$delegate;
        KProperty kProperty = $$delegatedProperties[8];
        return (View) lazy.getValue();
    }

    private final TextView getEarnFreeCoins() {
        Lazy lazy = this.earnFreeCoins$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (TextView) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageView getPurchaseLoading() {
        Lazy lazy = this.purchaseLoading$delegate;
        KProperty kProperty = $$delegatedProperties[9];
        return (ImageView) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Animation getPurchaseLoadingAnimation() {
        Lazy lazy = this.purchaseLoadingAnimation$delegate;
        KProperty kProperty = $$delegatedProperties[10];
        return (Animation) lazy.getValue();
    }

    private final TextView getRedeemAutoRenewHint() {
        Lazy lazy = this.redeemAutoRenewHint$delegate;
        KProperty kProperty = $$delegatedProperties[4];
        return (TextView) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LinearLayout getRedeemButton() {
        Lazy lazy = this.redeemButton$delegate;
        KProperty kProperty = $$delegatedProperties[5];
        return (LinearLayout) lazy.getValue();
    }

    private final TextView getRedeemCoinCount() {
        Lazy lazy = this.redeemCoinCount$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (TextView) lazy.getValue();
    }

    private final TextView getRedeemSubscriptionStartTime() {
        Lazy lazy = this.redeemSubscriptionStartTime$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (TextView) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView getRedeemText() {
        Lazy lazy = this.redeemText$delegate;
        KProperty kProperty = $$delegatedProperties[3];
        return (TextView) lazy.getValue();
    }

    public void _$_clearFindViewByIdCache() {
        HashMap map = this._$_findViewCache;
        if (map != null) {
            map.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        if (view != null) {
            return view;
        }
        View viewFindViewById = findViewById(i);
        this._$_findViewCache.put(Integer.valueOf(i), viewFindViewById);
        return viewFindViewById;
    }

    public ObjectItemClickListener getGetCoinsPreClickListener() {
        return this.getCoinsPreClickListener;
    }

    public void setGetCoinsPreClickListener(ObjectItemClickListener objectItemClickListener) {
        this.getCoinsPreClickListener = objectItemClickListener;
    }

    public RedeemCouponComponent(Context context) {
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
        this.purchaseLoadingAnimation$delegate = LazyKt__LazyJVMKt.lazy(new Function0<Animation>() { // from class: com.narvii.wallet.RedeemCouponComponent$purchaseLoadingAnimation$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Animation invoke() {
                return this.this$0.lazyInitPurchaseLoading();
            }
        });
        this.couponList = new ArrayList<>();
        LayoutInflater.from(getContext()).inflate(R.layout.component_redeem_coupon, (ViewGroup) this, true);
        Object service = Utils.getNVContext(getContext()).getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service, "Utils.getNVContext(context).getService(\"api\")");
        this.apiService = (ApiService) service;
        Object service2 = Utils.getNVContext(getContext()).getService("membership");
        Intrinsics.checkExpressionValueIsNotNull(service2, "Utils.getNVContext(conte….getService(\"membership\")");
        this.membershipService = (MembershipService) service2;
        this.storeItemHelper = new StoreItemHelper(Utils.getNVContext(getContext()));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RedeemCouponComponent(Context context, AttributeSet attributes) {
        super(context, attributes);
        Intrinsics.checkParameterIsNotNull(attributes, "attributes");
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
        this.purchaseLoadingAnimation$delegate = LazyKt__LazyJVMKt.lazy(new Function0<Animation>() { // from class: com.narvii.wallet.RedeemCouponComponent$purchaseLoadingAnimation$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Animation invoke() {
                return this.this$0.lazyInitPurchaseLoading();
            }
        });
        this.couponList = new ArrayList<>();
        LayoutInflater.from(getContext()).inflate(R.layout.component_redeem_coupon, (ViewGroup) this, true);
        Object service = Utils.getNVContext(getContext()).getService("api");
        Intrinsics.checkExpressionValueIsNotNull(service, "Utils.getNVContext(context).getService(\"api\")");
        this.apiService = (ApiService) service;
        Object service2 = Utils.getNVContext(getContext()).getService("membership");
        Intrinsics.checkExpressionValueIsNotNull(service2, "Utils.getNVContext(conte….getService(\"membership\")");
        this.membershipService = (MembershipService) service2;
        this.storeItemHelper = new StoreItemHelper(Utils.getNVContext(getContext()));
    }

    private final <T extends View> Lazy<T> bind(RedeemCouponComponent redeemCouponComponent, final int i) {
        return LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, new Function0<T>() { // from class: com.narvii.wallet.RedeemCouponComponent.bind.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Incorrect return type in method signature: ()TT; */
            @Override // kotlin.jvm.functions.Function0
            public final View invoke() {
                View viewFindViewById = RedeemCouponComponent.this.findViewById(i);
                if (viewFindViewById != null) {
                    return viewFindViewById;
                }
                throw new TypeCastException("null cannot be cast to non-null type T");
            }
        });
    }

    @Override // android.view.View
    protected void onFinishInflate() throws Resources.NotFoundException {
        super.onFinishInflate();
        setOnClickListener(new View.OnClickListener() { // from class: com.narvii.wallet.RedeemCouponComponent.onFinishInflate.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
            }
        });
        getRedeemButton().setOnClickListener(new View.OnClickListener() { // from class: com.narvii.wallet.RedeemCouponComponent.onFinishInflate.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RedeemCouponComponent.this.getPurchaseLoading().setVisibility(0);
                RedeemCouponComponent.this.getPurchaseLoading().startAnimation(RedeemCouponComponent.this.getPurchaseLoadingAnimation());
                RedeemCouponComponent.this.getRedeemText().setText(RedeemCouponComponent.this.getContext().getString(R.string.purchasing));
                RedeemCouponComponent.this.getRedeemButton().setClickable(false);
                IRedeemCouponCallback iRedeemCouponCallback = RedeemCouponComponent.this.callback;
                if (iRedeemCouponCallback != null) {
                    iRedeemCouponCallback.onRedeemRequested(RedeemCouponComponent.this.toRedeemProduct, RedeemCouponComponent.this.couponToUse);
                }
            }
        });
        getCouponApplyCheckbox().setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.narvii.wallet.RedeemCouponComponent.onFinishInflate.3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (RedeemCouponComponent.this.suggestedCoupon != null) {
                    RedeemCouponComponent redeemCouponComponent = RedeemCouponComponent.this;
                    redeemCouponComponent.updateCouponSection(redeemCouponComponent.COUPON_STATUS_AVAILABLE_COUPON, z);
                    RedeemCouponComponent.this.updateRedeemPrice();
                }
            }
        });
        String string = getResources().getString(R.string.click_here_no_capital);
        Intrinsics.checkExpressionValueIsNotNull(string, "resources.getString(R.st…ng.click_here_no_capital)");
        String string2 = getResources().getString(R.string.auto_renew_hint_info, string);
        Intrinsics.checkExpressionValueIsNotNull(string2, "resources.getString(R.st…new_hint_info, clickHere)");
        NVText nVText = new NVText(string2);
        nVText.markText(string, new OnTagClickListener() { // from class: com.narvii.wallet.RedeemCouponComponent.onFinishInflate.4
            @Override // com.narvii.util.text.OnTagClickListener
            public final void onClick(View view, NVText nVText2, int i, String str) {
                Utils.getNVContext(RedeemCouponComponent.this.getContext()).startActivity(new Intent("android.intent.action.VIEW", Uri.parse("ndc://help-center")));
            }
        });
        getRedeemAutoRenewHint().setClickable(true);
        getRedeemAutoRenewHint().setMovementMethod(LinkTouchMovementMethod.getInstance());
        getRedeemAutoRenewHint().setText(nVText);
        fetchCouponList();
    }

    public final void bindCoupons(ArrayList<Coupon> arrayList) {
        int productPrice;
        if (this.isHideCouponsInfo) {
            this.suggestedCoupon = null;
            updateCouponSection(this.COUPON_STATUS_NO_COUPON_AVAILABLE, false);
            return;
        }
        if (arrayList != null) {
            Iterator<Coupon> it = arrayList.iterator();
            while (it.hasNext()) {
                Coupon next = it.next();
                IBaseProduct iBaseProduct = this.toRedeemProduct;
                if (iBaseProduct == null) {
                    productPrice = 0;
                } else {
                    if (iBaseProduct == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    productPrice = iBaseProduct.getProductPrice(this.membershipService.isMembership());
                }
                next.hasProperValue = next.getValue() <= productPrice;
            }
        }
        if (this.membershipService.canGetNewMemberRewards()) {
            this.suggestedCoupon = null;
            updateCouponSection(this.COUPON_STATUS_COUPON_TO_CLAIM, false);
        } else if (arrayList == null || arrayList.isEmpty()) {
            this.suggestedCoupon = null;
            updateCouponSection(this.COUPON_STATUS_NO_COUPON_AVAILABLE, false);
        } else {
            Iterator<Coupon> it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                Coupon next2 = it2.next();
                if (next2.isAvailable()) {
                    this.suggestedCoupon = next2;
                    break;
                }
            }
            Coupon coupon = this.suggestedCoupon;
            if (coupon == null) {
                updateCouponSection(this.COUPON_STATUS_NO_COUPON_AVAILABLE, false);
            } else {
                int i = this.COUPON_STATUS_AVAILABLE_COUPON;
                if (coupon != null) {
                    updateCouponSection(i, coupon.hasProperValue && getCouponApplyCheckbox().isChecked());
                } else {
                    Intrinsics.throwNpe();
                    throw null;
                }
            }
        }
        updateRedeemPrice();
    }

    public final void bindProduct(IBaseProduct product, boolean z, IRedeemCouponCallback iRedeemCouponCallback) {
        Intrinsics.checkParameterIsNotNull(product, "product");
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

    public final void destroy() {
        getPurchaseLoadingAnimation().cancel();
        getPurchaseLoading().clearAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Animation lazyInitPurchaseLoading() {
        RotateAnimation rotateAnimation = new RotateAnimation(0.0f, 360.0f, 1, 0.5f, 1, 0.5f);
        rotateAnimation.setRepeatCount(-1);
        rotateAnimation.setDuration(1000L);
        return rotateAnimation;
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
                public void onFinish(ApiRequest apiRequest, CouponListResponse couponListResponse) throws Exception {
                    super.onFinish(apiRequest, (ApiRequest) couponListResponse);
                    RedeemCouponComponent.this.isCouponFetchingInProcess = false;
                    RedeemCouponComponent.this.couponList = couponListResponse != null ? couponListResponse.getCouponList() : null;
                    RedeemCouponComponent redeemCouponComponent = RedeemCouponComponent.this;
                    redeemCouponComponent.bindCoupons(redeemCouponComponent.couponList);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    super.onFail(apiRequest, i, list, str, apiResponse, th);
                    RedeemCouponComponent.this.isCouponFetchingInProcess = false;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateRedeemPrice() {
        int value;
        IBaseProduct iBaseProduct = this.toRedeemProduct;
        if (iBaseProduct == null) {
            value = 0;
        } else if (iBaseProduct != null) {
            if (iBaseProduct.getAvailableDurationInDays() >= 0) {
                getRedeemSubscriptionStartTime().setVisibility(0);
                getRedeemSubscriptionStartTime().setText(getContext().getString(R.string.start_date, this.dateFormat.format(new Date())));
                getRedeemAutoRenewHint().setVisibility(0);
            } else {
                getRedeemSubscriptionStartTime().setVisibility(8);
                getRedeemAutoRenewHint().setVisibility(8);
            }
            IBaseProduct iBaseProduct2 = this.toRedeemProduct;
            if (iBaseProduct2 == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            value = iBaseProduct2.getProductPrice(this.membershipService.isMembership());
        } else {
            Intrinsics.throwNpe();
            throw null;
        }
        if (this.toRedeemProduct != null && this.suggestedCoupon != null && getCouponApplyCheckbox().isChecked()) {
            Coupon coupon = this.suggestedCoupon;
            if (coupon == null) {
                Intrinsics.throwNpe();
                throw null;
            }
            value -= coupon.getValue();
        }
        if (value < 0) {
            value = 0;
        }
        getRedeemCoinCount().setText(this.storeItemHelper.getPriceExpiredTimeCheck(value, this.toRedeemProduct));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void updateCouponSection(int i, boolean z) {
        if (i == this.COUPON_STATUS_NO_COUPON_AVAILABLE || i == this.COUPON_STATUS_COUPON_TO_CLAIM) {
            this.couponToUse = null;
            getCouponContainer().setVisibility(8);
            return;
        }
        if (i == this.COUPON_STATUS_AVAILABLE_COUPON) {
            getCouponApplyCheckbox().setVisibility(0);
            getCouponContainer().setVisibility(0);
            getCouponApplyCheckbox().setChecked(z && !this.isHideCouponsInfo);
            this.couponToUse = z ? this.suggestedCoupon : null;
            CheckBox couponApplyCheckbox = getCouponApplyCheckbox();
            Resources resources = getResources();
            Object[] objArr = new Object[1];
            Coupon coupon = this.suggestedCoupon;
            objArr[0] = coupon != null ? Integer.valueOf(coupon.getValue()) : null;
            couponApplyCheckbox.setText(resources.getString(R.string.one_coupon_available_hint, objArr));
            TextView couponApplyDiscount = getCouponApplyDiscount();
            Coupon coupon2 = this.suggestedCoupon;
            couponApplyDiscount.setText(String.valueOf(-(coupon2 != null ? coupon2.getValue() : 0)));
            getCouponApplyDiscount().setVisibility(z ? 0 : 4);
        }
    }

    public final void updateEarnFreeCoinsContent() {
        String string = getContext().getString(R.string.membership_owned_coins, TextUtils.numberFormat.format(Integer.valueOf(this.membershipService.walletBalance())));
        Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…Service.walletBalance()))");
        String string2 = getContext().getString(R.string.tipping_dialog_get_coins);
        Intrinsics.checkExpressionValueIsNotNull(string2, "context.getString(R.stri…tipping_dialog_get_coins)");
        NVText nVText = new NVText(string + " " + string2);
        nVText.markText(string2, new OnTagClickListener() { // from class: com.narvii.wallet.RedeemCouponComponent.updateEarnFreeCoinsContent.1
            @Override // com.narvii.util.text.OnTagClickListener
            public final void onClick(View view, NVText nVText2, int i, String str) {
                ObjectItemClickListener getCoinsPreClickListener = RedeemCouponComponent.this.getGetCoinsPreClickListener();
                if (getCoinsPreClickListener != null) {
                    getCoinsPreClickListener.onItemClick(null);
                }
                PurchaseCoinFragment.show(Utils.getNVContext(RedeemCouponComponent.this.getContext()), false);
            }
        });
        getEarnFreeCoins().setClickable(true);
        getEarnFreeCoins().setMovementMethod(LinkTouchMovementMethod.getInstance());
        getEarnFreeCoins().setText(nVText, TextView.BufferType.SPANNABLE);
    }
}
