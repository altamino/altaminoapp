package com.narvii.wallet;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.lifecycle.Observer;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.android.billingclient.api.Purchase;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.list.ObjectItemClickListener;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.IBaseProduct;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.DateUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.statistics.FirebaseLogManager;
import com.narvii.util.statistics.StatisticsEventBuilder;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.widget.OrderedLinearLayout;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.UserAvatarLayout;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public class MembershipSubscribeFragment extends NVFragment implements View.OnClickListener, RedeemCouponComponent.IRedeemCouponCallback {
    public static final String ACTION_PURCHASED_SUB_CHANGED = "com.narvii.action.PURCHASED_SUB_CHANGED";
    private static final String REMOTE_AMINO_PLUS_PRICING = "android_amino_plus_pricing";
    private static final String TAG = "MembershipSubscribeFragment";
    private static final Pattern TITLE_PATTERN = Pattern.compile("\\d+");
    private long aminoPlusPricingVersion;
    private int checkMembershipAndPaymentResultCode;
    private String checkMembershipAndPaymentResultMessage;
    private String checkMembershipAndPaymentResultReason;
    private boolean freeTrial;
    private ProgressDialog iabPendingDlg;
    private Product iabPendingProduct;
    private LayoutInflater inflater;
    private boolean isDone;
    private LocalBroadcastManager lbm;
    private MembershipStatus membership;
    private MembershipService membershipService;
    private ObjectNode paymentContext;
    private String paymentError;
    private View progress;
    private Product purchasingProduct;
    private String purchasingProductSku;
    private final BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.wallet.MembershipSubscribeFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (MembershipSubscribeFragment.this.redeemCouponComponent != null) {
                MembershipSubscribeFragment.this.redeemCouponComponent.updateEarnFreeCoinsContent();
            }
        }
    };
    private boolean redeem;
    private RedeemCouponComponent redeemCouponComponent;
    private String redeemProductError;
    private List<Product> redeemProductList;
    private String redeemTransactionId;
    private View root;
    private Product selectedRedeemProduct;
    private Product selectedSubProduct;
    private String subProductError;
    private List<Product> subProductList;
    private boolean wasMembership;

    /* JADX INFO: Access modifiers changed from: private */
    public Boolean checkMembershipAndPayment() {
        MembershipStatus membershipStatus;
        Purchase next;
        this.checkMembershipAndPaymentResultCode = 0;
        this.checkMembershipAndPaymentResultReason = null;
        this.checkMembershipAndPaymentResultMessage = null;
        if ((this.isDone && isAdded()) || (membershipStatus = this.membership) == null) {
            return null;
        }
        if (membershipStatus.isAutoRenew) {
            done();
            return Boolean.FALSE;
        }
        int i10 = membershipStatus.membershipStatus;
        if (i10 == 0) {
            return Boolean.TRUE;
        }
        if (i10 != 1) {
            showDialog(getString(R.string.membership_error_not_supported) + " (MS_" + this.membership.membershipStatus + ")");
            return Boolean.FALSE;
        }
        if (membershipPaymentIsCoins()) {
            return Boolean.TRUE;
        }
        int i11 = this.membership.paymentType;
        if (i11 != 5) {
            if (i11 != 3) {
                showDialog(getString(R.string.membership_error_not_supported) + " (PT_" + this.membership.paymentType + ")");
                return Boolean.FALSE;
            }
            AlertDialog alertDialog = new AlertDialog(getContext());
            String string = getContext().getString(R.string.membership_error_renew_in_ios);
            this.checkMembershipAndPaymentResultMessage = string;
            this.checkMembershipAndPaymentResultReason = "RENEW_IN_APPSTORE";
            this.checkMembershipAndPaymentResultCode = 54;
            alertDialog.setMessage(string);
            alertDialog.addButton(R.string.close, 0, (View.OnClickListener) null);
            alertDialog.show();
            done();
            return Boolean.FALSE;
        }
        ObjectNode objectNode = this.paymentContext;
        if (objectNode == null) {
            String str = this.paymentError;
            if (str == null) {
                return null;
            }
            showDialog(str);
            return Boolean.FALSE;
        }
        final String strNodeString = JacksonUtils.nodeString(objectNode, "packageName");
        if (!Utils.isEqualsNotNull(getContext().getPackageName(), strNodeString)) {
            AlertDialog alertDialog2 = new AlertDialog(getContext());
            if (strNodeString == null || !strNodeString.contains(".master")) {
                this.checkMembershipAndPaymentResultMessage = getContext().getString(R.string.membership_error_renew_in_standalone, strNodeString);
                this.checkMembershipAndPaymentResultReason = "RENEW_IN_STANDALONE";
                this.checkMembershipAndPaymentResultCode = 52;
            } else {
                this.checkMembershipAndPaymentResultMessage = getContext().getString(R.string.membership_error_renew_in_master);
                this.checkMembershipAndPaymentResultReason = "RENEW_IN_MASTER";
                this.checkMembershipAndPaymentResultCode = 51;
            }
            alertDialog2.setMessage(this.checkMembershipAndPaymentResultMessage);
            alertDialog2.addButton(android.R.string.ok, 4, new View.OnClickListener() { // from class: com.narvii.wallet.z
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f3062a.lambda$checkMembershipAndPayment$8(strNodeString, view);
                }
            });
            alertDialog2.addButton(R.string.close, 0, (View.OnClickListener) null);
            alertDialog2.show();
            done();
            return Boolean.FALSE;
        }
        String strTrimOrderId = trimOrderId(JacksonUtils.nodeString(this.paymentContext, "orderId"));
        Iterator<Purchase> it = MembershipBillingManager.INSTANCE.getPurchaseList().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Utils.isEqualsNotNull(trimOrderId(next.c()), strTrimOrderId));
        if (next != null) {
            return Boolean.TRUE;
        }
        AlertDialog alertDialog3 = new AlertDialog(getContext());
        String string2 = getContext().getString(R.string.membership_error_renew_no_purchase);
        this.checkMembershipAndPaymentResultMessage = string2;
        this.checkMembershipAndPaymentResultReason = "RENEW_IN_ANOTHER_GOOGLE_PLAY_ACCOUNT";
        this.checkMembershipAndPaymentResultCode = 53;
        alertDialog3.setMessage(string2);
        alertDialog3.addButton(R.string.close, 0, (View.OnClickListener) null);
        alertDialog3.show();
        done();
        return Boolean.FALSE;
    }

    private Purchase findPurchase(PurchasesUpdate purchasesUpdate) {
        if (purchasesUpdate != null && purchasesUpdate.getPurchases() != null) {
            for (Purchase purchase : purchasesUpdate.getPurchases()) {
                Iterator<String> it = purchase.e().iterator();
                while (it.hasNext()) {
                    if (it.next().equals(this.purchasingProductSku)) {
                        return purchase;
                    }
                }
            }
        }
        return null;
    }

    private String getError() {
        return this.redeem ? this.redeemProductError : this.subProductError;
    }

    private List<Product> getProductList() {
        return this.redeem ? this.redeemProductList : this.subProductList;
    }

    private Product getSelectedProduct() {
        return this.redeem ? this.selectedRedeemProduct : this.selectedSubProduct;
    }

    private boolean isMembershipLoaded() {
        return (this.membership == null || (this.paymentContext == null && this.paymentError == null)) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$purchaseSubscribe$10(DialogInterface dialogInterface) {
        this.iabPendingDlg = null;
        this.iabPendingProduct = null;
    }

    private void redeemSubscribe(final Product product, Coupon coupon) {
        CouponDetail couponDetail;
        Integer num;
        final int iIntValue = (coupon == null || (couponDetail = coupon.coupon) == null || (num = couponDetail.couponValue) == null) ? 0 : num.intValue();
        if (checkMembershipAndPayment() != Boolean.TRUE) {
            ((LoggingService) getService("logging")).lambda$logEvent$0("MembershipPurchaseError", "type", "Coin", "months", Integer.valueOf(product.numberOfMonths), "reason", this.checkMembershipAndPaymentResultReason, "code", Integer.valueOf(this.checkMembershipAndPaymentResultCode), AccountNotice.LEVEL_MESSAGE, this.checkMembershipAndPaymentResultMessage);
            return;
        }
        LogEvent.clickBuilder(this, ActSemantic.purchase).area("PurchaseButton").send();
        ((LoggingService) getService("logging")).lambda$logEvent$0("MembershipPurchaseStarting", "type", "Coin", "months", Integer.valueOf(product.numberOfMonths));
        ((StatisticsService) getService("statistics")).event("Attempts Purchase Membership").param("Membership Active", this.wasMembership).param("Length", product.numberOfMonths + " Months").param(EventConstants.CommentPost.TYPE, "Coin").param("Auto Renew", true).param("Coupon", iIntValue).userPropInc("Attempts Purchase Membership Total");
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("transactionId", this.redeemTransactionId);
        objectNodeCreateObjectNode.put("isAutoRenew", true);
        if (coupon != null) {
            ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
            arrayNodeCreateArrayNode.add(coupon.couponMappingId);
            objectNodeCreateObjectNode.put("couponMappingIdList", arrayNodeCreateArrayNode);
        }
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("/membership/product/subscribe").param("sku", product.skuList[0]).param("packageName", getContext().getPackageName()).param("paymentType", 1).param("paymentContext", objectNodeCreateObjectNode).build(), new ApiResponseListener<MembershipResponse>(MembershipResponse.class) { // from class: com.narvii.wallet.MembershipSubscribeFragment.8
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                if (i10 == 4300) {
                    PurchaseCoinFragment.show(MembershipSubscribeFragment.this, true);
                } else {
                    MembershipSubscribeFragment.this.showPurchaseErrorDialog(str);
                }
                MembershipSubscribeFragment.this.updateUI();
                MembershipSubscribeFragment.this.sendPurchaseFailEvent(i10, str, product);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, MembershipResponse membershipResponse) {
                MembershipSubscribeFragment.this.done();
                MembershipSubscribeFragment.this.confetti();
                MembershipSubscribeFragment.this.updateMembership(membershipResponse);
                MembershipSubscribeFragment.this.getMembershipService().refreshWallet(true);
                ((LoggingService) MembershipSubscribeFragment.this.getService("logging")).lambda$logEvent$0("MembershipPurchaseSucceed", "type", "Coin", "months", Integer.valueOf(product.numberOfMonths));
                LogEvent.clickBuilder(MembershipSubscribeFragment.this, ActSemantic.purchaseSuccess).area("PurchaseButton").send();
                ((StatisticsService) MembershipSubscribeFragment.this.getService("statistics")).event("Purchase Membership").param("Membership Active", MembershipSubscribeFragment.this.wasMembership).param("Length", product.numberOfMonths + " Months").param(EventConstants.CommentPost.TYPE, "Coins").param("Auto Renew", true).param("Coupon", iIntValue).userPropInc("Purchase Membership Total");
            }
        });
    }

    private void setVisibleAnim(View view, boolean z6) {
        setVisibleAnim(view, z6, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUI() {
        String strTrim;
        String strGroup;
        String str;
        boolean zIsMembershipLoaded = isMembershipLoaded();
        setVisibleAnim(this.root, zIsMembershipLoaded);
        setVisibleAnim(this.progress, !zIsMembershipLoaded);
        List<Product> productList = getProductList();
        Product selectedProduct = getSelectedProduct();
        String error = getError();
        boolean z6 = thereIsNoMembership() || (isAminoPlusMembership() && membershipPaymentIsCoins());
        setVisibleAnim(this.root.findViewById(R.id.progress), productList == null && error == null);
        View view = null;
        ((TextView) this.root.findViewById(R.id.error)).setText(productList == null ? error : null);
        setVisibleAnim(this.root.findViewById(R.id.retry), productList == null && error != null);
        setVisibleAnim(this.root.findViewById(R.id.purchase), !this.redeem && error == null);
        setVisibleAnim(this.root.findViewById(R.id.purchase_text), !this.redeem && error == null);
        setVisibleAnim(this.redeemCouponComponent, this.redeem && error == null, true);
        setVisibleAnim(this.root.findViewById(R.id.switch_redeem), z6 && !this.redeem);
        ((TextView) this.root.findViewById(R.id.purchase_text)).setText(this.membershipService.freeTrial() ? R.string.membership_purchase_free_trial : R.string.membership_purchase);
        setExtraInfoText(error, this.membershipService.freeTrial());
        ImageView imageView = (ImageView) this.root.findViewById(R.id.back);
        TextView textView = (TextView) this.root.findViewById(R.id.purchase_directly);
        setVisibleAnim(imageView, this.redeem);
        textView.setVisibility(8);
        ThumbImageView thumbImageView = (ThumbImageView) this.root.findViewById(R.id.purchase);
        thumbImageView.defaultDrawable = ResourcesCompat.e(getResources(), R.drawable.membership_common_btn_bg, null);
        thumbImageView.setImageUrl(null);
        int size = productList == null ? 0 : productList.size();
        ViewGroup viewGroup = (ViewGroup) this.root.findViewById(R.id.sublist);
        viewGroup.removeAllViews();
        float f = 2.0f;
        if (!this.redeem) {
            int i10 = 0;
            while (i10 < size) {
                Product product = productList.get(i10);
                boolean z10 = product == selectedProduct;
                View childAt = i10 < viewGroup.getChildCount() ? viewGroup.getChildAt(i10) : view;
                if (childAt == null) {
                    childAt = this.inflater.inflate(R.layout.membership_sub_item, viewGroup, false);
                    if (i10 == 0) {
                        MarginLayoutParamsCompat.d((ViewGroup.MarginLayoutParams) childAt.getLayoutParams(), 0);
                    }
                    viewGroup.addView(childAt);
                }
                ThumbImageView thumbImageView2 = (ThumbImageView) childAt.findViewById(R.id.background);
                if (thumbImageView2.defaultDrawable == null) {
                    thumbImageView2.defaultDrawable = new ColorDrawable(-1);
                }
                Context context = getContext();
                thumbImageView2.strokeWidth = z10 ? Utils.dpToPx(context, f) : Utils.dpToPx(context, 1.0f);
                thumbImageView2.strokeColor = z10 ? -678365 : -1644826;
                thumbImageView2.setShadowColor(z10 ? -678365 : 0);
                Matcher matcher = TITLE_PATTERN.matcher(product.title);
                String str2 = product.title;
                if (matcher.find()) {
                    strGroup = matcher.group();
                    strTrim = (product.title.substring(0, matcher.start()) + product.title.substring(matcher.end())).trim();
                } else {
                    strTrim = str2;
                    strGroup = null;
                }
                TextView textView2 = (TextView) childAt.findViewById(R.id.text);
                textView2.setText(strGroup);
                textView2.setTextColor(z10 ? -20174 : -8224126);
                TextView textView3 = (TextView) childAt.findViewById(R.id.text2);
                textView3.setText(strTrim);
                textView3.setTextColor(z10 ? -20174 : -8224126);
                childAt.findViewById(R.id.top_shadow).setVisibility(z10 ? 4 : 0);
                TextView textView4 = (TextView) childAt.findViewById(R.id.price);
                com.android.billingclient.api.l productDetails = getProductDetails(product);
                if (productDetails == null || productDetails.d() == null) {
                    setPriceUnavailable(childAt, textView4);
                } else {
                    List<com.android.billingclient.api.l.d> listD = productDetails.d();
                    if (listD.size() > 0) {
                        List<com.android.billingclient.api.l.b> listA = listD.get(0).b().a();
                        logPricingPhaseList(listA);
                        if (listA.size() > 0) {
                            textView4.setText(getPricingPhase(listA).c());
                            childAt.setEnabled(true);
                        } else {
                            setPriceUnavailable(childAt, textView4);
                        }
                    } else {
                        setPriceUnavailable(childAt, textView4);
                    }
                }
                textView4.setTextColor(z10 ? -20174 : -8224126);
                TextView textView5 = (TextView) childAt.findViewById(R.id.saved);
                textView5.setText(product.savePercent != 0 ? getContext().getString(R.string.save_percent, Integer.valueOf(product.savePercent)) : null);
                textView5.setTextColor(z10 ? -20174 : -8224126);
                TextView textView6 = (TextView) childAt.findViewById(R.id.badge);
                if (i10 == 1) {
                    str = "Most Popular";
                } else {
                    str = i10 == 2 ? "Best Value" : null;
                }
                textView6.setVisibility((!z10 || str == null) ? 4 : 0);
                textView6.setText(str);
                childAt.setTag(product);
                childAt.setOnClickListener(this);
                if (z10) {
                    ((OrderedLinearLayout) viewGroup).setTopChildIndex(i10);
                }
                i10++;
                view = null;
                f = 2.0f;
            }
        } else if (this.selectedRedeemProduct != null) {
            View viewInflate = this.inflater.inflate(R.layout.membership_redeem_item, viewGroup, false);
            viewGroup.addView(viewInflate);
            ((TextView) viewInflate.findViewById(R.id.redeem_item_title)).setText(this.selectedRedeemProduct.title);
            ((TextView) viewInflate.findViewById(R.id.redeem_item_price)).setText(String.valueOf(this.selectedRedeemProduct.price));
            UserAvatarLayout userAvatarLayout = (UserAvatarLayout) viewInflate.findViewById(R.id.user_avatar_layout);
            userAvatarLayout.setAvatarStroke(2.0f, false);
            userAvatarLayout.setAvatarShadow(getResources().getDimensionPixelSize(R.dimen.avatar_shadow_size), Color.parseColor("#90F5A623"), false);
            User userProfile = ((AccountService) getService("account")).getUserProfile();
            if (userProfile != null) {
                userAvatarLayout.setUser(userProfile, true, true);
            }
            this.redeemCouponComponent.bindProduct(this.selectedRedeemProduct, true, this);
        }
        while (viewGroup.getChildCount() > size) {
            viewGroup.removeViewAt(viewGroup.getChildCount() - 1);
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "subscribe_container";
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class OnFailPurchaseEvent {
        private final ApiService apiService;
        private final ApiResponseListener<MembershipResponse> listener;
        private final String message;
        private final ProgressDialog progressDialog;
        private final ApiRequest request;

        public OnFailPurchaseEvent(ApiRequest apiRequest, String str, ProgressDialog progressDialog, ApiResponseListener<MembershipResponse> apiResponseListener, ApiService apiService) {
            this.request = apiRequest;
            this.message = str;
            this.progressDialog = progressDialog;
            this.listener = apiResponseListener;
            this.apiService = apiService;
        }
    }

    @NonNull
    private ProgressDialog buildNotCancelableProgressDialog() {
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.setCancelable(false);
        return progressDialog;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createPaymentContext() {
        if (this.paymentContext == null) {
            this.paymentContext = JacksonUtils.createObjectNode();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void done() {
        if (!this.isDone && isAdded()) {
            this.redeemCouponComponent.destroy();
            getFragmentManager().l1("subscribe", 1);
        }
        this.isDone = true;
    }

    private String getFirstSkuSafety(Purchase purchase) {
        return (purchase == null || purchase.e().isEmpty()) ? "" : getFirstPurchaseProduct(purchase);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MembershipService getMembershipService() {
        return (MembershipService) getService("membership");
    }

    private com.android.billingclient.api.l getProductDetails(Product product) {
        String[] strArr;
        if (product == null || (strArr = product.skuList) == null || strArr.length == 0) {
            return null;
        }
        return MembershipBillingManager.INSTANCE.getProductDetails(strArr);
    }

    private void getTransactionID() {
        if (this.redeemTransactionId == null) {
            this.redeemTransactionId = UUID.randomUUID().toString();
        }
    }

    private void handleBillingError(com.android.billingclient.api.h hVar) {
        ProgressDialog progressDialog = this.iabPendingDlg;
        if (progressDialog != null) {
            hideProgressDialog(progressDialog);
            this.iabPendingDlg = null;
        }
        ((LoggingService) getService("logging")).lambda$logEvent$0("MembershipPurchaseError", "type", "IAP", "months", Integer.valueOf(this.iabPendingProduct.numberOfMonths), "sku", this.iabPendingProduct.skuList[0], "reason", IabUtils.getReason(hVar.b()), "code", Integer.valueOf(hVar.b()), AccountNotice.LEVEL_MESSAGE, hVar.a());
        this.iabPendingProduct = null;
        showAlertDialog(getString(R.string.iab_billing_unavailable_message));
    }

    private boolean isAminoPlusMembership() {
        MembershipStatus membershipStatus = this.membership;
        return membershipStatus != null && membershipStatus.membershipStatus == 1;
    }

    private boolean isMembershipRenewal() {
        MembershipStatus membershipStatus = this.membership;
        if (membershipStatus == null) {
            return false;
        }
        return !(membershipStatus.isAutoRenew || membershipStatus.expiredTime == null) || (membershipStatus.isPremiumItemMembership && !DateUtils.isToday(membershipStatus.createdTime));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkMembershipAndPayment$8(String str, View view) {
        PackageUtils packageUtils = new PackageUtils(getContext());
        if (packageUtils.openCommunity(str)) {
            return;
        }
        packageUtils.openGooglePlay(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$observeSetupFinished$1(com.android.billingclient.api.h hVar) {
        if (BillingManager.INSTANCE.getBillingState().isConnected()) {
            querySubscriptions();
        } else if (this.iabPendingProduct != null) {
            handleBillingError(hVar);
        } else {
            showPurchaseErrorToast();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setRedeemCoupon$0(NVObject nVObject) {
        LogEvent.clickBuilder(this, ActSemantic.pageEnter).area("GetCoinsButton").send();
    }

    private void logPricingPhase(com.android.billingclient.api.l.b bVar) {
        if (bVar == null) {
            return;
        }
        Log.d(TAG, "Pricing phase { priceCurrencyCode: " + bVar.e() + ",formattedPrice: " + bVar.c() + ",priceAmountMicros: " + bVar.d() + ",billingPeriod: " + bVar.b() + ",billingCycleCount: " + bVar.a() + ",recurrenceMode: " + bVar.f() + "  }");
    }

    private boolean membershipPaymentIsCoins() {
        MembershipStatus membershipStatus = this.membership;
        return membershipStatus != null && membershipStatus.paymentType == 1;
    }

    private void observePurchaseUpdate() {
        BillingManager.INSTANCE.getPurchasesUpdate().i(this, new Observer() { // from class: com.narvii.wallet.c0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f3007a.lambda$observePurchaseUpdate$3((PurchasesUpdate) obj);
            }
        });
    }

    private void observeSetupFinished() {
        BillingManager.INSTANCE.getSetupFinished().i(this, new Observer() { // from class: com.narvii.wallet.u
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f3053a.lambda$observeSetupFinished$1((com.android.billingclient.api.h) obj);
            }
        });
    }

    private void observeSubUpdate() {
        MembershipBillingManager.INSTANCE.getSubsUpdate().i(this, new Observer() { // from class: com.narvii.wallet.a0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                this.f3003a.lambda$observeSubUpdate$2((com.android.billingclient.api.h) obj);
            }
        });
    }

    private void purchaseSubscribe(final Product product) {
        String str;
        if (MembershipBillingManager.INSTANCE.getSubsDetails().isEmpty()) {
            ProgressDialog progressDialog = this.iabPendingDlg;
            if (progressDialog != null) {
                hideProgressDialog(progressDialog);
            }
            this.iabPendingProduct = product;
            ProgressDialog progressDialog2 = new ProgressDialog(getContext());
            this.iabPendingDlg = progressDialog2;
            progressDialog2.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.wallet.v
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    this.f3055a.lambda$purchaseSubscribe$10(dialogInterface);
                }
            });
            this.iabPendingDlg.show();
            BillingManager billingManager = BillingManager.INSTANCE;
            if (billingManager.getBillingState().isConnected()) {
                querySubscriptions();
                return;
            } else {
                billingManager.connectBillingClient();
                return;
            }
        }
        if (checkMembershipAndPayment() != Boolean.TRUE) {
            if (this.checkMembershipAndPaymentResultReason != null) {
                ((LoggingService) getService("logging")).lambda$logEvent$0("MembershipPurchaseError", "type", "IAP", "months", Integer.valueOf(product.numberOfMonths), "sku", product.skuList[0], "reason", this.checkMembershipAndPaymentResultReason, "code", Integer.valueOf(this.checkMembershipAndPaymentResultCode), AccountNotice.LEVEL_MESSAGE, this.checkMembershipAndPaymentResultMessage);
                return;
            }
            return;
        }
        final com.android.billingclient.api.l productDetails = getProductDetails(product);
        if (productDetails != null) {
            ((LoggingService) getService("logging")).lambda$logEvent$0("MembershipPurchaseStarting", "type", "IAP", "months", Integer.valueOf(product.numberOfMonths), "sku", productDetails.b());
            StatisticsEventBuilder statisticsEventBuilderParam = ((StatisticsService) getService("statistics")).event("Attempts Purchase Membership").param("Membership Active", this.wasMembership).param("Length", product.numberOfMonths + " Months");
            Double d = product.dollarPrice;
            StatisticsEventBuilder statisticsEventBuilderParam2 = statisticsEventBuilderParam.param("Price", d == null ? 0.0f : d.floatValue()).param(EventConstants.CommentPost.TYPE, "IAP");
            if (this.freeTrial) {
                str = "Trial";
            } else {
                str = this.wasMembership ? "Renew" : "Standard";
            }
            statisticsEventBuilderParam2.param("Type 2", str).param("Auto Renew", true).userPropInc("Attempts Purchase Membership Total");
            final ProgressDialog progressDialog3 = new ProgressDialog(getContext());
            final ApiRequest apiRequestBuild = ApiRequest.builder().global().post().path("/membership/product/pre-subscribe").param("sku", productDetails.b()).param("packageName", getContext().getPackageName()).param("paymentType", 5).build();
            final ApiService apiService = (ApiService) getService("api");
            apiService.exec(apiRequestBuild, new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.wallet.MembershipSubscribeFragment.7
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                    MembershipSubscribeFragment.this.hideProgressDialog(progressDialog3);
                    MembershipSubscribeFragment.this.showPurchaseErrorDialog(str2);
                    ((LoggingService) MembershipSubscribeFragment.this.getService("logging")).lambda$logEvent$0("MembershipPurchaseError", "type", "IAP", "months", Integer.valueOf(product.numberOfMonths), "sku", productDetails.b(), "reason", "PRE_PURCHASE_ERROR", "code", Integer.valueOf(i10), AccountNotice.LEVEL_MESSAGE, str2);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) {
                    MembershipSubscribeFragment.this.hideProgressDialog(progressDialog3);
                    if (MembershipSubscribeFragment.this.isActive()) {
                        MembershipSubscribeFragment.this.purchasingProduct = product;
                        MembershipBillingManager membershipBillingManager = MembershipBillingManager.INSTANCE;
                        com.android.billingclient.api.l productDetails2 = membershipBillingManager.getProductDetails(MembershipSubscribeFragment.this.purchasingProduct.skuList);
                        MembershipSubscribeFragment.this.purchasingProductSku = productDetails2.b();
                        membershipBillingManager.purchaseSub(MembershipSubscribeFragment.this.requireActivity(), productDetails2);
                    }
                }
            });
            progressDialog3.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.wallet.w
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    apiService.abort(apiRequestBuild);
                }
            });
            progressDialog3.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void querySubscriptions() {
        Log.d(TAG, "Billing client is not initialized or already connected");
        List<Product> list = this.subProductList;
        if (list == null || list.isEmpty()) {
            return;
        }
        if (!MembershipBillingManager.INSTANCE.getSubsDetails().isEmpty()) {
            handleOnQuerySubscriptionsSuccess();
            return;
        }
        ArrayList<String> arrayList = new ArrayList<>();
        Iterator<Product> it = this.subProductList.iterator();
        while (it.hasNext()) {
            String[] strArr = it.next().skuList;
            if (strArr != null) {
                arrayList.addAll(Arrays.asList(strArr));
            }
        }
        MembershipBillingManager.INSTANCE.querySubsDetails(arrayList, new e8.a() { // from class: com.narvii.wallet.t
            @Override // e8.a
            public final Object invoke() {
                return this.f3051a.lambda$querySubscriptions$9();
            }
        });
    }

    private void restoreValuesFromInstanceState(Bundle bundle) {
        this.purchasingProduct = (Product) JacksonUtils.readAs(bundle.getString("purchasingProduct"), Product.class);
        this.purchasingProductSku = bundle.getString("purchasingProductSku");
        this.redeemTransactionId = bundle.getString("redeemTransactionId");
    }

    private void savePurchaseVariables(Bundle bundle) {
        bundle.putString("purchasingProduct", JacksonUtils.writeAsString(this.purchasingProduct));
        bundle.putString("purchasingProductSku", this.purchasingProductSku);
        bundle.putString("redeemTransactionId", this.redeemTransactionId);
    }

    private void sendFirebaseEvent() {
        FirebaseLogManager.logEvent(this, "buy_membership", null);
    }

    private void sendPurchaseErrorEvent(com.android.billingclient.api.h hVar) {
        LoggingService loggingService = (LoggingService) getService("logging");
        Object[] objArr = new Object[12];
        objArr[0] = "type";
        objArr[1] = "IAP";
        objArr[2] = "months";
        Product product = this.purchasingProduct;
        objArr[3] = Integer.valueOf(product == null ? 0 : product.numberOfMonths);
        objArr[4] = "sku";
        Product product2 = this.purchasingProduct;
        objArr[5] = product2 == null ? null : product2.skuList[0];
        objArr[6] = "reason";
        objArr[7] = IabUtils.getReason(hVar.b());
        objArr[8] = "code";
        objArr[9] = Integer.valueOf(hVar.b());
        objArr[10] = AccountNotice.LEVEL_MESSAGE;
        objArr[11] = hVar.a();
        loggingService.lambda$logEvent$0("MembershipPurchaseError", objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendPurchaseFailEvent(int i10, String str, Product product) {
        LoggingService loggingService = (LoggingService) getService("logging");
        Object[] objArr = new Object[10];
        objArr[0] = "type";
        objArr[1] = "IAP";
        objArr[2] = "months";
        objArr[3] = Integer.valueOf(product.numberOfMonths);
        objArr[4] = "reason";
        objArr[5] = i10 == 4300 ? "NO_ENOUGH_COINS" : null;
        objArr[6] = "code";
        objArr[7] = Integer.valueOf(i10);
        objArr[8] = AccountNotice.LEVEL_MESSAGE;
        objArr[9] = str;
        loggingService.lambda$logEvent$0("MembershipPurchaseError", objArr);
    }

    private void sendPurchaseSuccessEvent(Purchase purchase) {
        LoggingService loggingService = (LoggingService) getService("logging");
        Object[] objArr = new Object[10];
        objArr[0] = "type";
        objArr[1] = "IAP";
        objArr[2] = "months";
        Product product = this.purchasingProduct;
        objArr[3] = Integer.valueOf(product != null ? product.numberOfMonths : 0);
        objArr[4] = "sku";
        objArr[5] = getFirstSkuSafety(purchase);
        objArr[6] = "orderId";
        objArr[7] = purchase.c();
        objArr[8] = com.mixpanel.android.mpmetrics.e.KEY_TOKEN;
        objArr[9] = purchase.h();
        loggingService.lambda$logEvent$0("MembershipPurchaseSucceed", objArr);
    }

    private void sendRedeemProductRequest() {
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("/membership/product/v2").param("paymentType", 1).param("packageName", getContext().getPackageName()).build(), new ApiResponseListener<ProductListResponse>(ProductListResponse.class) { // from class: com.narvii.wallet.MembershipSubscribeFragment.6
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                MembershipSubscribeFragment.this.redeemProductList = null;
                MembershipSubscribeFragment.this.redeemProductError = str;
                MembershipSubscribeFragment.this.selectedRedeemProduct = null;
                MembershipSubscribeFragment.this.updateUI();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ProductListResponse productListResponse) {
                MembershipSubscribeFragment.this.redeemProductList = productListResponse.productList;
                MembershipSubscribeFragment membershipSubscribeFragment = MembershipSubscribeFragment.this;
                membershipSubscribeFragment.selectedRedeemProduct = membershipSubscribeFragment.pickProduct(membershipSubscribeFragment.selectedRedeemProduct, productListResponse.productList);
                MembershipSubscribeFragment.this.redeemProductError = null;
                MembershipSubscribeFragment.this.updateUI();
            }
        });
    }

    private void sendStatisticsPurchaseProductEvent() {
        Double d;
        StatisticsService statisticsService = (StatisticsService) getService("statistics");
        StringBuilder sb = new StringBuilder();
        Product product = this.purchasingProduct;
        sb.append(product == null ? 3 : product.numberOfMonths);
        sb.append(" Months");
        String string = sb.toString();
        Product product2 = this.purchasingProduct;
        statisticsService.revenue(string, (product2 == null || (d = product2.dollarPrice) == null) ? 1.0d : d.doubleValue());
    }

    private void sendSubProductRequest() {
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("/membership/product/v2").param("paymentType", 5).param("packageName", getContext().getPackageName()).param("packageVersion", Long.valueOf(this.aminoPlusPricingVersion)).build(), new ApiResponseListener<ProductListResponse>(ProductListResponse.class) { // from class: com.narvii.wallet.MembershipSubscribeFragment.5
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                MembershipSubscribeFragment.this.subProductList = null;
                MembershipSubscribeFragment.this.subProductError = str;
                MembershipSubscribeFragment.this.selectedSubProduct = null;
                MembershipSubscribeFragment.this.updateUI();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ProductListResponse productListResponse) {
                MembershipSubscribeFragment.this.subProductList = productListResponse.productList;
                MembershipSubscribeFragment membershipSubscribeFragment = MembershipSubscribeFragment.this;
                membershipSubscribeFragment.selectedSubProduct = membershipSubscribeFragment.pickProduct(membershipSubscribeFragment.selectedSubProduct, productListResponse.productList);
                MembershipSubscribeFragment.this.subProductError = null;
                MembershipSubscribeFragment.this.updateUI();
                if (BillingManager.INSTANCE.getBillingState().isConnected()) {
                    MembershipBillingManager.INSTANCE.clearSubs();
                    MembershipSubscribeFragment.this.querySubscriptions();
                }
            }
        });
    }

    private void setExtraInfoText(String str, boolean z6) {
        TextView textView = (TextView) this.root.findViewById(R.id.membership_info_text);
        if (textView == null) {
            return;
        }
        setVisibleAnim(textView, !this.redeem && str == null);
        if (z6) {
            textView.setText(getString(R.string.subscription_message, getCurrentDatePlusSevenDays()));
        } else {
            textView.setText(R.string.subscription_message_cancel);
        }
    }

    private void setRedeemCoupon() {
        RedeemCouponComponent redeemCouponComponent = this.redeemCouponComponent;
        if (redeemCouponComponent != null) {
            redeemCouponComponent.setGetCoinsPreClickListener(new ObjectItemClickListener() { // from class: com.narvii.wallet.f0
                @Override // com.narvii.list.ObjectItemClickListener
                public final void onItemClick(NVObject nVObject) {
                    this.f3013a.lambda$setRedeemCoupon$0(nVObject);
                }
            });
        }
    }

    private void setVisibleAnim(View view, boolean z6, boolean z10) {
        if (view.getVisibility() == 0 && !z6) {
            view.setVisibility(z10 ? 8 : 4);
            view.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out_fast));
        } else {
            if (view.getVisibility() == 0 || !z6) {
                return;
            }
            view.setVisibility(0);
            view.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPurchaseErrorDialog(String str) {
        AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setMessage(str);
        alertDialog.addButton(R.string.close, 0, (View.OnClickListener) null);
        alertDialog.show();
    }

    private void showPurchaseErrorToUser() {
        final AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setMessage(getString(R.string.membership_error_not_supported) + " (MS_" + this.membership.membershipStatus + ")");
        alertDialog.addButton(R.string.close, 0, new View.OnClickListener() { // from class: com.narvii.wallet.d0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f3009a.lambda$showPurchaseErrorToUser$6(view);
            }
        });
        alertDialog.addButton(R.string.ok, 0, new View.OnClickListener() { // from class: com.narvii.wallet.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                alertDialog.dismiss();
            }
        });
        alertDialog.show();
    }

    private void stopListenBroadcast() {
        LocalBroadcastManager localBroadcastManager = this.lbm;
        if (localBroadcastManager != null) {
            localBroadcastManager.f(this.receiver);
        }
    }

    private void switchToRedeem() {
        if (this.redeemProductList == null) {
            sendRedeemProductRequest();
        }
        this.redeem = true;
        updateUI();
    }

    private boolean thereIsNoMembership() {
        MembershipStatus membershipStatus = this.membership;
        return membershipStatus != null && membershipStatus.membershipStatus == 0;
    }

    private String trimOrderId(String str) {
        int iIndexOf;
        return (str != null && (iIndexOf = str.indexOf("..")) >= 0) ? str.substring(0, iIndexOf) : str;
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        this.inflater = layoutInflater;
        return layoutInflater.inflate(R.layout.membership_subscribe_layout, viewGroup, false);
    }

    @Override // com.narvii.wallet.RedeemCouponComponent.IRedeemCouponCallback
    public void onRedeemRequested(@org.jetbrains.annotations.Nullable IBaseProduct iBaseProduct, @org.jetbrains.annotations.Nullable Coupon coupon) {
        if (iBaseProduct instanceof Product) {
            redeemSubscribe((Product) iBaseProduct, coupon);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void confetti() {
        if ((getActivity() instanceof FragmentWrapperActivity) && (((FragmentWrapperActivity) getActivity()).getRootFragment() instanceof MembershipMainRecyclerFragment)) {
            final MembershipMainRecyclerFragment membershipMainRecyclerFragment = (MembershipMainRecyclerFragment) ((FragmentWrapperActivity) getActivity()).getRootFragment();
            membershipMainRecyclerFragment.showCofetti(400L);
            Utils.handler.post(new Runnable() { // from class: com.narvii.wallet.b0
                @Override // java.lang.Runnable
                public final void run() {
                    membershipMainRecyclerFragment.smoothScrollToHeaderMax();
                }
            });
            membershipMainRecyclerFragment.flipCard(true);
        }
    }

    private String getCurrentDatePlusSevenDays() {
        Calendar calendar = Calendar.getInstance();
        calendar.add(6, 7);
        return new SimpleDateFormat("MMMM dd, yyyy", Locale.getDefault()).format(calendar.getTime());
    }

    private String getFirstPurchaseProduct(Purchase purchase) {
        return purchase.e().get(0);
    }

    private com.android.billingclient.api.l.b getPricingPhase(@NotNull List<com.android.billingclient.api.l.b> list) {
        com.android.billingclient.api.l.b bVar = list.get(list.size() - 1);
        logPricingPhase(bVar);
        return bVar;
    }

    private long getPricingVersion() {
        return com.google.firebase.remoteconfig.a.k().m(REMOTE_AMINO_PLUS_PRICING);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOnFailPurchase(final OnFailPurchaseEvent onFailPurchaseEvent) {
        hideProgressDialog(onFailPurchaseEvent.progressDialog);
        AlertDialog alertDialog = new AlertDialog(getContext());
        alertDialog.setMessage(onFailPurchaseEvent.message);
        alertDialog.addButton(R.string.close, 0, new View.OnClickListener() { // from class: com.narvii.wallet.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f3049a.lambda$handleOnFailPurchase$4(view);
            }
        });
        final ApiResponseListener apiResponseListener = onFailPurchaseEvent.listener;
        alertDialog.addButton(R.string.retry, 0, new View.OnClickListener() { // from class: com.narvii.wallet.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MembershipSubscribeFragment.lambda$handleOnFailPurchase$5(onFailPurchaseEvent, apiResponseListener, view);
            }
        });
        alertDialog.show();
    }

    private void handleOnQuerySubscriptionsSuccess() {
        Boolean boolCheckMembershipAndPayment = checkMembershipAndPayment();
        updateUI();
        if (boolCheckMembershipAndPayment == Boolean.TRUE && this.iabPendingProduct != null) {
            ProgressDialog progressDialog = this.iabPendingDlg;
            if (progressDialog != null) {
                hideProgressDialog(progressDialog);
                this.iabPendingDlg = null;
            }
            Product product = this.iabPendingProduct;
            this.iabPendingProduct = null;
            purchaseSubscribe(product);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSuccessPurchase(MembershipResponse membershipResponse, ProgressDialog progressDialog) {
        int i10;
        float fFloatValue;
        String str;
        Double d;
        hideProgressDialog(progressDialog);
        LocalBroadcastManager.b(getContext()).d(new Intent(ACTION_PURCHASED_SUB_CHANGED));
        done();
        confetti();
        updateMembership(membershipResponse);
        StatisticsEventBuilder statisticsEventBuilderParam = ((StatisticsService) getService("statistics")).event("Purchase Membership").param("Membership Active", this.wasMembership);
        StringBuilder sb = new StringBuilder();
        Product product = this.purchasingProduct;
        if (product == null) {
            i10 = 1;
        } else {
            i10 = product.numberOfMonths;
        }
        sb.append(i10);
        sb.append(" Months");
        StatisticsEventBuilder statisticsEventBuilderParam2 = statisticsEventBuilderParam.param("Length", sb.toString());
        Product product2 = this.purchasingProduct;
        if (product2 != null && (d = product2.dollarPrice) != null) {
            fFloatValue = d.floatValue();
        } else {
            fFloatValue = 0.0f;
        }
        StatisticsEventBuilder statisticsEventBuilderParam3 = statisticsEventBuilderParam2.param("Price", fFloatValue).param(EventConstants.CommentPost.TYPE, "IAP");
        if (this.freeTrial) {
            str = "Trial";
        } else if (this.wasMembership) {
            str = "Renew";
        } else {
            str = "Standard";
        }
        statisticsEventBuilderParam3.param("Type 2", str).param("Auto Renew", true).userPropInc("Purchase Membership Total");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideProgressDialog(ProgressDialog progressDialog) {
        progressDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleOnFailPurchase$4(View view) {
        done();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$handleOnFailPurchase$5(OnFailPurchaseEvent onFailPurchaseEvent, ApiResponseListener apiResponseListener, View view) {
        onFailPurchaseEvent.progressDialog.show();
        onFailPurchaseEvent.apiService.exec(onFailPurchaseEvent.request, apiResponseListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$observePurchaseUpdate$3(PurchasesUpdate purchasesUpdate) {
        com.android.billingclient.api.h billingResult = purchasesUpdate.getBillingResult();
        if (purchasesUpdate.isSuccess()) {
            final ProgressDialog progressDialogBuildNotCancelableProgressDialog = buildNotCancelableProgressDialog();
            progressDialogBuildNotCancelableProgressDialog.show();
            Purchase purchaseFindPurchase = findPurchase(purchasesUpdate);
            if (purchaseFindPurchase == null) {
                showPurchaseErrorToUser();
                return;
            }
            MembershipBillingManager.INSTANCE.processPurchase(purchaseFindPurchase);
            ApiRequest apiRequestBuild = ApiRequest.builder().post().path("/membership/product/subscribe").param("sku", getFirstSkuSafety(purchaseFindPurchase)).param("packageName", getContext().getPackageName()).param("paymentType", 5).param("paymentContext", JacksonUtils.createObjectNode(purchaseFindPurchase.d())).build();
            final ApiService apiService = (ApiService) getService("api");
            apiService.exec(apiRequestBuild, new ApiResponseListener<MembershipResponse>(MembershipResponse.class) { // from class: com.narvii.wallet.MembershipSubscribeFragment.4
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    MembershipSubscribeFragment.this.handleOnFailPurchase(new OnFailPurchaseEvent(apiRequest, str, progressDialogBuildNotCancelableProgressDialog, this, apiService));
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, MembershipResponse membershipResponse) {
                    MembershipSubscribeFragment.this.handleSuccessPurchase(membershipResponse, progressDialogBuildNotCancelableProgressDialog);
                }
            });
            sendPurchaseSuccessEvent(purchaseFindPurchase);
            sendStatisticsPurchaseProductEvent();
            return;
        }
        if (!purchasesUpdate.userCanceled()) {
            showPurchaseErrorDialog(getString(R.string.iab_billing_unavailable_message));
            sendPurchaseErrorEvent(billingResult);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$observeSubUpdate$2(com.android.billingclient.api.h hVar) {
        if (hVar.b() == 0) {
            handleOnQuerySubscriptionsSuccess();
        } else if (this.iabPendingProduct != null) {
            handleBillingError(hVar);
        } else {
            showPurchaseErrorToast();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ w7.l0 lambda$querySubscriptions$9() {
        updateUiOnMainThread();
        return w7.l0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPurchaseErrorToUser$6(View view) {
        done();
    }

    private void logPricingPhaseList(@NotNull List<com.android.billingclient.api.l.b> list) {
        Iterator<com.android.billingclient.api.l.b> it = list.iterator();
        while (it.hasNext()) {
            logPricingPhase(it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Product pickProduct(Product product, List<Product> list) {
        String[] strArr;
        if (list.isEmpty()) {
            return null;
        }
        if (product != null && (strArr = product.skuList) != null && strArr.length > 0) {
            String str = strArr[0];
            for (Product product2 : list) {
                String[] strArr2 = product2.skuList;
                if (strArr2 != null && strArr2.length > 0 && str.equals(strArr2[0])) {
                    return product2;
                }
            }
        }
        for (Product product3 : list) {
            if (product3.suggested) {
                return product3;
            }
        }
        return list.get(list.size() / 2);
    }

    private void registerForBroadcast() {
        LocalBroadcastManager localBroadcastManagerB = LocalBroadcastManager.b(getContext());
        this.lbm = localBroadcastManagerB;
        localBroadcastManagerB.c(this.receiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
    }

    private void setClickLister(@NonNull View view) {
        view.findViewById(R.id.overlay).setOnClickListener(this);
        view.findViewById(R.id.retry).setOnClickListener(this);
        view.findViewById(R.id.back).setOnClickListener(this);
        view.findViewById(R.id.purchase).setOnClickListener(this);
        view.findViewById(R.id.switch_redeem).setOnClickListener(this);
        view.findViewById(R.id.purchase_directly).setOnClickListener(this);
    }

    private void setPriceUnavailable(View view, TextView textView) {
        textView.setText(R.string.price_unavailable);
        view.setEnabled(false);
    }

    private void showAlertDialog(String str) {
        showPurchaseErrorDialog(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDialog(String str) {
        showPurchaseErrorDialog(str);
        done();
    }

    private void showPurchaseErrorToast() {
        NVToast.makeText(getContext(), getString(R.string.iab_billing_unavailable_message), 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateMembership(MembershipResponse membershipResponse) {
        if ((getActivity() instanceof FragmentWrapperActivity) && (((FragmentWrapperActivity) getActivity()).getRootFragment() instanceof MembershipMainRecyclerFragment)) {
            ((MembershipMainRecyclerFragment) ((FragmentWrapperActivity) getActivity()).getRootFragment()).updateMembership(membershipResponse);
        }
    }

    private void updateUiOnMainThread() {
        if (getActivity() != null) {
            getActivity().runOnUiThread(new Runnable() { // from class: com.narvii.wallet.y
                @Override // java.lang.Runnable
                public final void run() {
                    this.f3061a.updateUI();
                }
            });
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.back /* 2131362193 */:
                this.redeem = false;
                updateUI();
                break;
            case R.id.overlay /* 2131364529 */:
                this.redeemCouponComponent.destroy();
                getFragmentManager().l1(getTag(), 1);
                break;
            case R.id.purchase /* 2131364769 */:
                Product product = this.selectedSubProduct;
                if (product != null) {
                    purchaseSubscribe(product);
                }
                break;
            case R.id.purchase_directly /* 2131364772 */:
                break;
            case R.id.retry /* 2131364920 */:
                if (this.redeem) {
                    this.redeemProductError = null;
                    this.redeemProductList = null;
                    this.selectedRedeemProduct = null;
                    sendRedeemProductRequest();
                } else {
                    this.subProductError = null;
                    this.subProductList = null;
                    this.selectedSubProduct = null;
                    sendSubProductRequest();
                }
                updateUI();
                break;
            case R.id.switch_redeem /* 2131365398 */:
                switchToRedeem();
                ((StatisticsService) getService("statistics")).event("Redeem With Coins").userPropInc("Redeem With Coins Total");
                break;
            default:
                if (view.getTag() instanceof Product) {
                    if (this.redeem) {
                        this.selectedRedeemProduct = (Product) view.getTag();
                    } else {
                        this.selectedSubProduct = (Product) view.getTag();
                    }
                    updateUI();
                }
                break;
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.redeem = false;
        MembershipService membershipService = getMembershipService();
        this.membershipService = membershipService;
        this.wasMembership = membershipService.isMembership();
        this.freeTrial = this.membershipService.freeTrial();
        if (bundle != null) {
            restoreValuesFromInstanceState(bundle);
        }
        getTransactionID();
        observeSetupFinished();
        observeSubUpdate();
        observePurchaseUpdate();
        registerForBroadcast();
        this.aminoPlusPricingVersion = getPricingVersion();
        sendFirebaseEvent();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        stopListenBroadcast();
        super.onDestroy();
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        savePurchaseVariables(bundle);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        if (this.redeem) {
            sendRedeemProductRequest();
        } else {
            sendSubProductRequest();
        }
        updateUI();
        ApiService apiService = (ApiService) getService("api");
        apiService.exec(ApiRequest.builder().global().path("/membership").param("force", Boolean.TRUE).build(), new ApiResponseListener<MembershipResponse>(MembershipResponse.class) { // from class: com.narvii.wallet.MembershipSubscribeFragment.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                MembershipSubscribeFragment.this.showDialog(str);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, MembershipResponse membershipResponse) {
                MembershipSubscribeFragment membershipSubscribeFragment = MembershipSubscribeFragment.this;
                MembershipStatus membershipStatus = membershipResponse.membership;
                if (membershipStatus == null) {
                    membershipStatus = new MembershipStatus();
                }
                membershipSubscribeFragment.membership = membershipStatus;
                MembershipSubscribeFragment.this.checkMembershipAndPayment();
                MembershipSubscribeFragment.this.updateUI();
            }
        });
        apiService.exec(ApiRequest.builder().global().path("/membership/latest-payment-context").build(), new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.wallet.MembershipSubscribeFragment.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                MembershipSubscribeFragment.this.paymentError = str;
                MembershipSubscribeFragment.this.checkMembershipAndPayment();
                MembershipSubscribeFragment.this.updateUI();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) {
                MembershipSubscribeFragment.this.paymentContext = (ObjectNode) JacksonUtils.nodePath(json(), "paymentContext");
                MembershipSubscribeFragment.this.createPaymentContext();
                MembershipSubscribeFragment.this.checkMembershipAndPayment();
                MembershipSubscribeFragment.this.updateUI();
            }
        });
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.progress = view.findViewById(android.R.id.progress);
        this.root = view.findViewById(R.id.root);
        this.redeemCouponComponent = (RedeemCouponComponent) view.findViewById(R.id.redeem_coupon_component);
        setRedeemCoupon();
        setClickLister(view);
    }
}
