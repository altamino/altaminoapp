package com.narvii.wallet;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.support.v4.view.MarginLayoutParamsCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVFragment;
import com.narvii.list.ObjectItemClickListener;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.IBaseProduct;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiJsonResponseListener;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import com.narvii.wallet.RedeemCouponComponent;
import com.narvii.wallet.util.IabHelper;
import com.narvii.wallet.util.IabResult;
import com.narvii.wallet.util.Inventory;
import com.narvii.wallet.util.Purchase;
import com.narvii.wallet.util.SkuDetails;
import com.narvii.widget.OrderedLinearLayout;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public class MembershipSubscribeFragment extends NVFragment implements View.OnClickListener, IabHelper.OnIabSetupFinishedListener, IabHelper.QueryInventoryFinishedListener, IabHelper.OnIabPurchaseFinishedListener, RedeemCouponComponent.IRedeemCouponCallback {
    public static final String ACTION_PURCHASED_SUB_CHANGED = "com.narvii.action.PURCHASED_SUB_CHANGED";
    static final int REQUEST_IAB_SUBSCRIBE = 59427;
    private static final Pattern TITLE_PATTERN = Pattern.compile("\\d+");
    int checkMembershipAndPaymentResultCode;
    String checkMembershipAndPaymentResultMessage;
    String checkMembershipAndPaymentResultReason;
    boolean freeTrial;
    IabHelper iabHelper;
    ProgressDialog iabPendingDlg;
    Product iabPendingProduct;
    boolean iabSetupted;
    LayoutInflater inflater;
    Inventory inventory;
    boolean isDone;
    LocalBroadcastManager lbm;
    MembershipStatus membership;
    MembershipService membershipService;
    ObjectNode paymentContext;
    String paymentError;
    View progress;
    Product purchasingProduct;
    private BroadcastReceiver receiver = new BroadcastReceiver() { // from class: com.narvii.wallet.MembershipSubscribeFragment.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            RedeemCouponComponent redeemCouponComponent = MembershipSubscribeFragment.this.redeemCouponComponent;
            if (redeemCouponComponent != null) {
                redeemCouponComponent.updateEarnFreeCoinsContent();
            }
        }
    };
    boolean redeem;
    RedeemCouponComponent redeemCouponComponent;
    String redeemProductError;
    List<Product> redeemProductList;
    String redeemTransactionId;
    View root;
    Product selectedRedeemProduct;
    Product selectedSubProduct;
    String subProductError;
    List<Product> subProductList;
    boolean wasMembership;

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "MembershipSubscription";
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.redeem = NVApplication.CLIENT_TYPE == 101;
        ((FragmentWrapperActivity) getActivity()).registerActivityRequestCallback(REQUEST_IAB_SUBSCRIBE, this);
        this.iabHelper = IabUtils.createIabHelper(getContext());
        this.iabHelper.startSetup(this);
        this.membershipService = (MembershipService) getService("membership");
        this.wasMembership = this.membershipService.isMembership();
        this.freeTrial = this.membershipService.freeTrial();
        if (bundle != null) {
            this.purchasingProduct = (Product) JacksonUtils.readAs(bundle.getString("purchasingProduct"), Product.class);
            this.redeemTransactionId = bundle.getString("redeemTransactionId");
        }
        if (this.redeemTransactionId == null) {
            this.redeemTransactionId = UUID.randomUUID().toString();
        }
        this.lbm = LocalBroadcastManager.getInstance(getContext());
        this.lbm.registerReceiver(this.receiver, new IntentFilter(MembershipService.ACTION_WALLET_CHANGED));
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("purchasingProduct", JacksonUtils.writeAsString(this.purchasingProduct));
        bundle.putString("redeemTransactionId", this.redeemTransactionId);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.inflater = layoutInflater;
        return layoutInflater.inflate(R.layout.membership_subscribe_layout, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.progress = view.findViewById(android.R.id.progress);
        this.root = view.findViewById(R.id.root);
        this.redeemCouponComponent = (RedeemCouponComponent) view.findViewById(R.id.redeem_coupon_component);
        RedeemCouponComponent redeemCouponComponent = this.redeemCouponComponent;
        if (redeemCouponComponent != null) {
            redeemCouponComponent.setGetCoinsPreClickListener(new ObjectItemClickListener() { // from class: com.narvii.wallet.MembershipSubscribeFragment.2
                @Override // com.narvii.list.ObjectItemClickListener
                public void onItemClick(NVObject nVObject) {
                    LogEvent.clickBuilder(MembershipSubscribeFragment.this, ActSemantic.pageEnter).area("GetCoinsButton").send();
                }
            });
        }
        view.findViewById(R.id.overlay).setOnClickListener(this);
        view.findViewById(R.id.retry).setOnClickListener(this);
        view.findViewById(R.id.back).setOnClickListener(this);
        view.findViewById(R.id.purchase).setOnClickListener(this);
        view.findViewById(R.id.switch_redeem).setOnClickListener(this);
        view.findViewById(R.id.purchase_directly).setOnClickListener(this);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onStart() {
        super.onStart();
        if (this.redeem) {
            sendRedeemProductRequest();
        } else {
            sendSubProductRequest();
        }
        update();
        ApiService apiService = (ApiService) getService("api");
        apiService.exec(ApiRequest.builder().global().path("/membership").param("force", true).build(), new ApiResponseListener<MembershipResponse>(MembershipResponse.class) { // from class: com.narvii.wallet.MembershipSubscribeFragment.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, MembershipResponse membershipResponse) throws Exception {
                MembershipSubscribeFragment membershipSubscribeFragment = MembershipSubscribeFragment.this;
                MembershipStatus membershipStatus = membershipResponse.membership;
                if (membershipStatus == null) {
                    membershipStatus = new MembershipStatus();
                }
                membershipSubscribeFragment.membership = membershipStatus;
                MembershipSubscribeFragment.this.checkMembershipAndPayment();
                MembershipSubscribeFragment.this.update();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                AlertDialog alertDialog = new AlertDialog(MembershipSubscribeFragment.this.getContext());
                alertDialog.setMessage(str);
                alertDialog.addButton(R.string.close, 0, (View.OnClickListener) null);
                alertDialog.show();
                MembershipSubscribeFragment.this.done();
            }
        });
        apiService.exec(ApiRequest.builder().global().path("/membership/latest-payment-context").build(), new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.wallet.MembershipSubscribeFragment.4
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                MembershipSubscribeFragment.this.paymentContext = (ObjectNode) JacksonUtils.nodePath(json(), "paymentContext");
                MembershipSubscribeFragment membershipSubscribeFragment = MembershipSubscribeFragment.this;
                if (membershipSubscribeFragment.paymentContext == null) {
                    membershipSubscribeFragment.paymentContext = JacksonUtils.createObjectNode();
                }
                MembershipSubscribeFragment.this.checkMembershipAndPayment();
                MembershipSubscribeFragment.this.update();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                MembershipSubscribeFragment membershipSubscribeFragment = MembershipSubscribeFragment.this;
                membershipSubscribeFragment.paymentError = str;
                membershipSubscribeFragment.checkMembershipAndPayment();
                MembershipSubscribeFragment.this.update();
            }
        });
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onDestroy() {
        IabHelper iabHelper = this.iabHelper;
        if (iabHelper != null) {
            try {
                iabHelper.dispose();
            } catch (Exception unused) {
            }
            this.iabHelper = null;
            this.iabSetupted = false;
        }
        LocalBroadcastManager localBroadcastManager = this.lbm;
        if (localBroadcastManager != null) {
            localBroadcastManager.unregisterReceiver(this.receiver);
        }
        super.onDestroy();
    }

    void done() {
        if (!this.isDone && isAdded()) {
            this.redeemCouponComponent.destroy();
            getFragmentManager().popBackStack("subscribe", 1);
        }
        this.isDone = true;
    }

    void cofetti() {
        if ((getActivity() instanceof FragmentWrapperActivity) && (((FragmentWrapperActivity) getActivity()).getRootFragment() instanceof MembershipMainRecyclerFragment)) {
            final MembershipMainRecyclerFragment membershipMainRecyclerFragment = (MembershipMainRecyclerFragment) ((FragmentWrapperActivity) getActivity()).getRootFragment();
            membershipMainRecyclerFragment.showCofetti(400L);
            Utils.handler.post(new Runnable() { // from class: com.narvii.wallet.MembershipSubscribeFragment.5
                @Override // java.lang.Runnable
                public void run() {
                    membershipMainRecyclerFragment.smoothScrollToHeaderMax();
                }
            });
            membershipMainRecyclerFragment.flipCard(true);
        }
    }

    void updateMembership(MembershipResponse membershipResponse) {
        if ((getActivity() instanceof FragmentWrapperActivity) && (((FragmentWrapperActivity) getActivity()).getRootFragment() instanceof MembershipMainRecyclerFragment)) {
            ((MembershipMainRecyclerFragment) ((FragmentWrapperActivity) getActivity()).getRootFragment()).updateMembership(membershipResponse);
        }
    }

    Boolean checkMembershipAndPayment() {
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
            return false;
        }
        int i = membershipStatus.membershipStatus;
        if (i == 0) {
            return true;
        }
        if (i == 1) {
            int i2 = membershipStatus.paymentType;
            if (i2 == 1) {
                return true;
            }
            if (i2 != 5) {
                if (i2 == 3) {
                    AlertDialog alertDialog = new AlertDialog(getContext());
                    this.checkMembershipAndPaymentResultMessage = getContext().getString(R.string.membership_error_renew_in_ios);
                    this.checkMembershipAndPaymentResultReason = "RENEW_IN_APPSTORE";
                    this.checkMembershipAndPaymentResultCode = 54;
                    alertDialog.setMessage(this.checkMembershipAndPaymentResultMessage);
                    alertDialog.addButton(R.string.close, 0, (View.OnClickListener) null);
                    alertDialog.show();
                    done();
                    return false;
                }
                AlertDialog alertDialog2 = new AlertDialog(getContext());
                alertDialog2.setMessage(getString(R.string.membership_error_not_supported) + " (PT_" + this.membership.paymentType + ")");
                alertDialog2.addButton(R.string.close, 0, (View.OnClickListener) null);
                alertDialog2.show();
                done();
                return false;
            }
            ObjectNode objectNode = this.paymentContext;
            if (objectNode == null) {
                if (this.paymentError == null) {
                    return null;
                }
                AlertDialog alertDialog3 = new AlertDialog(getContext());
                alertDialog3.setMessage(this.paymentError);
                alertDialog3.addButton(R.string.close, 0, (View.OnClickListener) null);
                alertDialog3.show();
                done();
                return false;
            }
            final String strNodeString = JacksonUtils.nodeString(objectNode, "packageName");
            if (!Utils.isEqualsNotNull(getContext().getPackageName(), strNodeString)) {
                AlertDialog alertDialog4 = new AlertDialog(getContext());
                if (strNodeString != null && strNodeString.contains(".master")) {
                    this.checkMembershipAndPaymentResultMessage = getContext().getString(R.string.membership_error_renew_in_master);
                    this.checkMembershipAndPaymentResultReason = "RENEW_IN_MASTER";
                    this.checkMembershipAndPaymentResultCode = 51;
                } else {
                    this.checkMembershipAndPaymentResultMessage = getContext().getString(R.string.membership_error_renew_in_standalone, strNodeString);
                    this.checkMembershipAndPaymentResultReason = "RENEW_IN_STANDALONE";
                    this.checkMembershipAndPaymentResultCode = 52;
                }
                alertDialog4.setMessage(this.checkMembershipAndPaymentResultMessage);
                alertDialog4.addButton(android.R.string.ok, 4, new View.OnClickListener() { // from class: com.narvii.wallet.MembershipSubscribeFragment.6
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        PackageUtils packageUtils = new PackageUtils(MembershipSubscribeFragment.this.getContext());
                        if (packageUtils.openCommunity(strNodeString)) {
                            return;
                        }
                        packageUtils.openGooglePlay(strNodeString);
                    }
                });
                alertDialog4.addButton(R.string.close, 0, (View.OnClickListener) null);
                alertDialog4.show();
                done();
                return false;
            }
            if (this.inventory == null) {
                return null;
            }
            String strTrimOrderId = trimOrderId(JacksonUtils.nodeString(this.paymentContext, "orderId"));
            if (this.inventory.getAllPurchases() != null) {
                Iterator<Purchase> it = this.inventory.getAllPurchases().iterator();
                while (it.hasNext()) {
                    next = it.next();
                    if (Utils.isEqualsNotNull(trimOrderId(next.getOrderId()), strTrimOrderId)) {
                        break;
                    }
                }
                next = null;
            } else {
                next = null;
            }
            if (next == null) {
                AlertDialog alertDialog5 = new AlertDialog(getContext());
                this.checkMembershipAndPaymentResultMessage = getContext().getString(R.string.membership_error_renew_no_purchase);
                this.checkMembershipAndPaymentResultReason = "RENEW_IN_ANOTHER_GOOGLE_PLAY_ACCOUNT";
                this.checkMembershipAndPaymentResultCode = 53;
                alertDialog5.setMessage(this.checkMembershipAndPaymentResultMessage);
                alertDialog5.addButton(R.string.close, 0, (View.OnClickListener) null);
                alertDialog5.show();
                done();
                return false;
            }
            return true;
        }
        AlertDialog alertDialog6 = new AlertDialog(getContext());
        alertDialog6.setMessage(getString(R.string.membership_error_not_supported) + " (MS_" + this.membership.membershipStatus + ")");
        alertDialog6.addButton(R.string.close, 0, (View.OnClickListener) null);
        alertDialog6.show();
        done();
        return false;
    }

    static String trimOrderId(String str) {
        int iIndexOf;
        return (str != null && (iIndexOf = str.indexOf("..")) >= 0) ? str.substring(0, iIndexOf) : str;
    }

    void switchToRedeem() {
        if (this.redeemProductList == null) {
            sendRedeemProductRequest();
        }
        this.redeem = true;
        update();
    }

    void sendSubProductRequest() {
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("/membership/product/v2").param("paymentType", 5).param("packageName", getContext().getPackageName()).build(), new ApiResponseListener<ProductListResponse>(ProductListResponse.class) { // from class: com.narvii.wallet.MembershipSubscribeFragment.7
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ProductListResponse productListResponse) throws Exception {
                MembershipSubscribeFragment membershipSubscribeFragment = MembershipSubscribeFragment.this;
                ArrayList<Product> arrayList = productListResponse.productList;
                membershipSubscribeFragment.subProductList = arrayList;
                membershipSubscribeFragment.selectedSubProduct = membershipSubscribeFragment.pickProduct(membershipSubscribeFragment.selectedSubProduct, arrayList);
                MembershipSubscribeFragment membershipSubscribeFragment2 = MembershipSubscribeFragment.this;
                membershipSubscribeFragment2.subProductError = null;
                membershipSubscribeFragment2.update();
                MembershipSubscribeFragment membershipSubscribeFragment3 = MembershipSubscribeFragment.this;
                if (membershipSubscribeFragment3.iabSetupted) {
                    membershipSubscribeFragment3.inventory = null;
                    membershipSubscribeFragment3.queryIabInv();
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                MembershipSubscribeFragment membershipSubscribeFragment = MembershipSubscribeFragment.this;
                membershipSubscribeFragment.subProductList = null;
                membershipSubscribeFragment.subProductError = str;
                membershipSubscribeFragment.selectedSubProduct = null;
                membershipSubscribeFragment.update();
            }
        });
    }

    void sendRedeemProductRequest() {
        ((ApiService) getService("api")).exec(ApiRequest.builder().path("/membership/product/v2").param("paymentType", 1).param("packageName", getContext().getPackageName()).build(), new ApiResponseListener<ProductListResponse>(ProductListResponse.class) { // from class: com.narvii.wallet.MembershipSubscribeFragment.8
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ProductListResponse productListResponse) throws Exception {
                MembershipSubscribeFragment membershipSubscribeFragment = MembershipSubscribeFragment.this;
                ArrayList<Product> arrayList = productListResponse.productList;
                membershipSubscribeFragment.redeemProductList = arrayList;
                membershipSubscribeFragment.selectedRedeemProduct = membershipSubscribeFragment.pickProduct(membershipSubscribeFragment.selectedRedeemProduct, arrayList);
                MembershipSubscribeFragment membershipSubscribeFragment2 = MembershipSubscribeFragment.this;
                membershipSubscribeFragment2.redeemProductError = null;
                membershipSubscribeFragment2.update();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                MembershipSubscribeFragment membershipSubscribeFragment = MembershipSubscribeFragment.this;
                membershipSubscribeFragment.redeemProductList = null;
                membershipSubscribeFragment.redeemProductError = str;
                membershipSubscribeFragment.selectedRedeemProduct = null;
                membershipSubscribeFragment.update();
            }
        });
    }

    Product pickProduct(Product product, List<Product> list) {
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

    void queryIabInv() {
        List<Product> list = this.subProductList;
        if (list == null || list.size() <= 0 || this.inventory != null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Product> it = this.subProductList.iterator();
        while (it.hasNext()) {
            String[] strArr = it.next().skuList;
            if (strArr != null) {
                for (String str : strArr) {
                    arrayList.add(str);
                }
            }
        }
        try {
            this.iabHelper.queryInventoryAsync(true, new ArrayList(), arrayList, this);
        } catch (Exception e) {
            Log.e("fail to query inventory", e);
        }
    }

    @Override // com.narvii.wallet.util.IabHelper.OnIabSetupFinishedListener
    public void onIabSetupFinished(IabResult iabResult) {
        if (iabResult.isSuccess()) {
            this.iabSetupted = true;
            queryIabInv();
            return;
        }
        if (this.iabPendingProduct != null) {
            ProgressDialog progressDialog = this.iabPendingDlg;
            if (progressDialog != null) {
                progressDialog.dismiss();
                this.iabPendingDlg = null;
            }
            ((LoggingService) getService("logging")).lambda$logEvent$0$LoggingServiceImpl("MembershipPurchaseError", "type", "IAP", "months", Integer.valueOf(this.iabPendingProduct.numberOfMonths), "sku", this.iabPendingProduct.skuList[0], "reason", IabUtils.getReason(iabResult.getResponse()), "code", Integer.valueOf(iabResult.getResponse()), AccountNotice.LEVEL_MESSAGE, iabResult.getMessage());
            this.iabPendingProduct = null;
            AlertDialog alertDialog = new AlertDialog(getContext());
            alertDialog.setMessage(IabUtils.getErrorMessage(iabResult));
            alertDialog.addButton(R.string.close, 0, (View.OnClickListener) null);
            alertDialog.show();
            return;
        }
        NVToast.makeText(getContext(), IabUtils.getErrorMessage(iabResult), 0).show();
    }

    @Override // com.narvii.wallet.util.IabHelper.QueryInventoryFinishedListener
    public void onQueryInventoryFinished(IabResult iabResult, Inventory inventory) {
        if (iabResult.isSuccess()) {
            this.inventory = inventory;
            List<Product> list = this.subProductList;
            if (list != null) {
                for (Product product : list) {
                    String[] strArr = product.skuList;
                    if (strArr != null) {
                        for (String str : strArr) {
                            if (inventory.hasPurchase(str)) {
                                Log.i("narvii_iab", "my purchase " + product.title + "[" + str + "]: " + inventory.getPurchase(str));
                            }
                        }
                    }
                }
            }
            Boolean boolCheckMembershipAndPayment = checkMembershipAndPayment();
            update();
            if (boolCheckMembershipAndPayment != Boolean.TRUE || this.iabPendingProduct == null) {
                return;
            }
            ProgressDialog progressDialog = this.iabPendingDlg;
            if (progressDialog != null) {
                progressDialog.dismiss();
                this.iabPendingDlg = null;
            }
            Product product2 = this.iabPendingProduct;
            this.iabPendingProduct = null;
            purchaseSubscribe(product2);
            return;
        }
        if (this.iabPendingProduct != null) {
            ProgressDialog progressDialog2 = this.iabPendingDlg;
            if (progressDialog2 != null) {
                progressDialog2.dismiss();
                this.iabPendingDlg = null;
            }
            ((LoggingService) getService("logging")).lambda$logEvent$0$LoggingServiceImpl("MembershipPurchaseError", "type", "IAP", "months", Integer.valueOf(this.iabPendingProduct.numberOfMonths), "sku", this.iabPendingProduct.skuList[0], "reason", IabUtils.getReason(iabResult.getResponse()), "code", Integer.valueOf(iabResult.getResponse()), AccountNotice.LEVEL_MESSAGE, iabResult.getMessage());
            this.iabPendingProduct = null;
            AlertDialog alertDialog = new AlertDialog(getContext());
            alertDialog.setMessage(IabUtils.getErrorMessage(iabResult));
            alertDialog.addButton(R.string.close, 0, (View.OnClickListener) null);
            alertDialog.show();
            return;
        }
        NVToast.makeText(getContext(), IabUtils.getErrorMessage(iabResult), 0).show();
    }

    @Override // com.narvii.wallet.util.IabHelper.OnIabPurchaseFinishedListener
    public void onIabPurchaseFinished(IabResult iabResult, Purchase purchase) {
        if (iabResult.isSuccess()) {
            final ProgressDialog progressDialog = new ProgressDialog(getContext());
            progressDialog.setCancelable(false);
            progressDialog.show();
            ApiRequest apiRequestBuild = ApiRequest.builder().post().path("/membership/product/subscribe").param("sku", purchase.getSku()).param("packageName", getContext().getPackageName()).param("paymentType", 5).param("paymentContext", JacksonUtils.createObjectNode(purchase.getOriginalJson())).build();
            final ApiService apiService = (ApiService) getService("api");
            apiService.exec(apiRequestBuild, new ApiResponseListener<MembershipResponse>(MembershipResponse.class) { // from class: com.narvii.wallet.MembershipSubscribeFragment.9
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, MembershipResponse membershipResponse) throws Exception {
                    progressDialog.dismiss();
                    LocalBroadcastManager.getInstance(MembershipSubscribeFragment.this.getContext()).sendBroadcast(new Intent(MembershipSubscribeFragment.ACTION_PURCHASED_SUB_CHANGED));
                    MembershipSubscribeFragment.this.done();
                    MembershipSubscribeFragment.this.cofetti();
                    MembershipSubscribeFragment.this.updateMembership(membershipResponse);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(final ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    progressDialog.dismiss();
                    AlertDialog alertDialog = new AlertDialog(MembershipSubscribeFragment.this.getContext());
                    alertDialog.setMessage(str);
                    alertDialog.addButton(R.string.close, 0, new View.OnClickListener() { // from class: com.narvii.wallet.MembershipSubscribeFragment.9.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            MembershipSubscribeFragment.this.done();
                        }
                    });
                    alertDialog.addButton(R.string.retry, 0, new View.OnClickListener() { // from class: com.narvii.wallet.MembershipSubscribeFragment.9.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            progressDialog.show();
                            apiService.exec(apiRequest, this);
                        }
                    });
                    alertDialog.show();
                }
            });
            return;
        }
        if (iabResult.getResponse() != -1005) {
            AlertDialog alertDialog = new AlertDialog(getContext());
            alertDialog.setMessage(IabUtils.getErrorMessage(iabResult));
            alertDialog.addButton(R.string.close, 0, (View.OnClickListener) null);
            alertDialog.show();
            LoggingService loggingService = (LoggingService) getService("logging");
            Object[] objArr = new Object[12];
            objArr[0] = "type";
            objArr[1] = "IAP";
            objArr[2] = "months";
            Product product = this.purchasingProduct;
            objArr[3] = Integer.valueOf(product == null ? 0 : product.numberOfMonths);
            objArr[4] = "sku";
            Product product2 = this.purchasingProduct;
            objArr[5] = product2 != null ? product2.skuList[0] : null;
            objArr[6] = "reason";
            objArr[7] = IabUtils.getReason(iabResult.getResponse());
            objArr[8] = "code";
            objArr[9] = Integer.valueOf(iabResult.getResponse());
            objArr[10] = AccountNotice.LEVEL_MESSAGE;
            objArr[11] = iabResult.getMessage();
            loggingService.lambda$logEvent$0$LoggingServiceImpl("MembershipPurchaseError", objArr);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == REQUEST_IAB_SUBSCRIBE) {
            IabHelper iabHelper = this.iabHelper;
            if (iabHelper != null) {
                iabHelper.handleActivityResult(i, i2, intent);
                return;
            }
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r13v3, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r13v4, types: [android.view.LayoutInflater] */
    /* JADX WARN: Type inference failed for: r13v5, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r16v0, types: [android.support.v4.app.Fragment, android.view.View$OnClickListener, com.narvii.app.NVFragment, com.narvii.wallet.MembershipSubscribeFragment, com.narvii.wallet.RedeemCouponComponent$IRedeemCouponCallback] */
    /* JADX WARN: Type inference failed for: r1v11, types: [android.view.LayoutInflater] */
    /* JADX WARN: Type inference failed for: r6v20, types: [android.view.ViewGroup] */
    void update() {
        MembershipStatus membershipStatus;
        String strTrim;
        String strGroup;
        boolean z = (this.membership == null || (this.paymentContext == null && this.paymentError == null)) ? false : true;
        setVisibleAnim(this.root, z);
        setVisibleAnim(this.progress, !z);
        List<Product> list = this.redeem ? this.redeemProductList : this.subProductList;
        Product product = this.redeem ? this.selectedRedeemProduct : this.selectedSubProduct;
        String str = this.redeem ? this.redeemProductError : this.subProductError;
        MembershipStatus membershipStatus2 = this.membership;
        boolean z2 = (membershipStatus2 != null && membershipStatus2.membershipStatus == 0) || ((membershipStatus = this.membership) != null && membershipStatus.membershipStatus == 1 && membershipStatus.paymentType == 1);
        setVisibleAnim(this.root.findViewById(R.id.progress), list == null && str == null);
        String str2 = null;
        ((TextView) this.root.findViewById(R.id.error)).setText(list == null ? str : null);
        setVisibleAnim(this.root.findViewById(R.id.retry), list == null && str != null);
        setVisibleAnim(this.root.findViewById(R.id.purchase), !this.redeem && str == null);
        setVisibleAnim(this.root.findViewById(R.id.purchase_text), !this.redeem && str == null);
        setVisibleAnim(this.redeemCouponComponent, this.redeem && str == null, true);
        setVisibleAnim(this.root.findViewById(R.id.switch_redeem), z2 && !this.redeem);
        ((TextView) this.root.findViewById(R.id.purchase_text)).setText(this.membershipService.freeTrial() ? R.string.membership_purchase_free_trial : R.string.membership_purchase);
        ImageView imageView = (ImageView) this.root.findViewById(R.id.back);
        TextView textView = (TextView) this.root.findViewById(R.id.purchase_directly);
        if (NVApplication.CLIENT_TYPE == 101) {
            imageView.setVisibility(4);
            textView.setVisibility(0);
        } else {
            setVisibleAnim(imageView, this.redeem);
            textView.setVisibility(8);
        }
        ThumbImageView thumbImageView = (ThumbImageView) this.root.findViewById(R.id.purchase);
        thumbImageView.defaultDrawable = getContext().getResources().getDrawable(R.drawable.membership_common_btn_bg);
        thumbImageView.setImageUrl(null);
        int size = list == null ? 0 : list.size();
        ?? r6 = (ViewGroup) this.root.findViewById(R.id.sublist);
        r6.removeAllViews();
        float f = 2.0f;
        if (!this.redeem) {
            int i = 0;
            while (i < size) {
                Product product2 = list.get(i);
                boolean z3 = product2 == product;
                ?? childAt = i < r6.getChildCount() ? r6.getChildAt(i) : str2;
                if (childAt == 0) {
                    childAt = this.inflater.inflate(R.layout.membership_sub_item, r6, false);
                    if (i == 0) {
                        MarginLayoutParamsCompat.setMarginStart((ViewGroup.MarginLayoutParams) childAt.getLayoutParams(), 0);
                    }
                    r6.addView(childAt);
                }
                ThumbImageView thumbImageView2 = (ThumbImageView) childAt.findViewById(R.id.background);
                if (thumbImageView2.defaultDrawable == null) {
                    thumbImageView2.defaultDrawable = new ColorDrawable(-1);
                }
                Context context = getContext();
                thumbImageView2.strokeWidth = z3 ? Utils.dpToPx(context, f) : Utils.dpToPx(context, 1.0f);
                thumbImageView2.strokeColor = z3 ? -678365 : -1644826;
                thumbImageView2.setShadowColor(z3 ? -678365 : 0);
                Matcher matcher = TITLE_PATTERN.matcher(product2.title);
                String str3 = product2.title;
                if (matcher.find()) {
                    strGroup = matcher.group();
                    strTrim = (product2.title.substring(0, matcher.start()) + product2.title.substring(matcher.end())).trim();
                } else {
                    strTrim = str3;
                    strGroup = str2;
                }
                TextView textView2 = (TextView) childAt.findViewById(R.id.text);
                textView2.setText(strGroup);
                textView2.setTextColor(z3 ? -20174 : -8224126);
                TextView textView3 = (TextView) childAt.findViewById(R.id.text2);
                textView3.setText(strTrim);
                textView3.setTextColor(z3 ? -20174 : -8224126);
                childAt.findViewById(R.id.top_shadow).setVisibility(z3 ? 4 : 0);
                TextView textView4 = (TextView) childAt.findViewById(R.id.price);
                if (this.inventory == null) {
                    textView4.setText(str2);
                } else {
                    SkuDetails inventory = getInventory(product2);
                    if (inventory == null) {
                        textView4.setText(R.string.price_unavailable);
                        childAt.setEnabled(false);
                    } else {
                        textView4.setText(inventory.getPrice());
                        childAt.setEnabled(true);
                    }
                }
                textView4.setTextColor(z3 ? -20174 : -8224126);
                TextView textView5 = (TextView) childAt.findViewById(R.id.saved);
                textView5.setText(product2.savePercent != 0 ? getContext().getString(R.string.save_percent, Integer.valueOf(product2.savePercent)) : null);
                textView5.setTextColor(z3 ? -20174 : -8224126);
                TextView textView6 = (TextView) childAt.findViewById(R.id.badge);
                String str4 = i == 1 ? "Most Popular" : i == 2 ? "Best Value" : null;
                textView6.setVisibility((!z3 || str4 == null) ? 4 : 0);
                textView6.setText(str4);
                childAt.setTag(product2);
                childAt.setOnClickListener(this);
                if (z3) {
                    ((OrderedLinearLayout) r6).setTopChildIndex(i);
                }
                i++;
                str2 = null;
                f = 2.0f;
            }
        } else if (this.selectedRedeemProduct != null) {
            View viewInflate = this.inflater.inflate(R.layout.membership_redeem_item, r6, false);
            r6.addView(viewInflate);
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
        while (r6.getChildCount() > size) {
            r6.removeViewAt(r6.getChildCount() - 1);
        }
    }

    private void setVisibleAnim(View view, boolean z) {
        setVisibleAnim(view, z, false);
    }

    private void setVisibleAnim(View view, boolean z, boolean z2) {
        if (view.getVisibility() == 0 && !z) {
            view.setVisibility(z2 ? 8 : 4);
            view.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_out_fast));
        } else {
            if (view.getVisibility() == 0 || !z) {
                return;
            }
            view.setVisibility(0);
            view.startAnimation(AnimationUtils.loadAnimation(getContext(), R.anim.fade_in));
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.back /* 2131296514 */:
                this.redeem = false;
                update();
                break;
            case R.id.overlay /* 2131298314 */:
                this.redeemCouponComponent.destroy();
                getFragmentManager().popBackStack(getTag(), 1);
                break;
            case R.id.purchase /* 2131298530 */:
                Product product = this.selectedSubProduct;
                if (product != null) {
                    purchaseSubscribe(product);
                    break;
                }
                break;
            case R.id.purchase_directly /* 2131298533 */:
                if (NVApplication.CLIENT_TYPE == 101) {
                    GuidePurchaseToMasterDialog.show(getContext(), "membership");
                    this.redeemCouponComponent.destroy();
                    getFragmentManager().popBackStack(getTag(), 1);
                    break;
                }
                break;
            case R.id.retry /* 2131298682 */:
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
                update();
                break;
            case R.id.switch_redeem /* 2131299120 */:
                switchToRedeem();
                break;
            default:
                if (view.getTag() instanceof Product) {
                    if (this.redeem) {
                        this.selectedRedeemProduct = (Product) view.getTag();
                    } else {
                        this.selectedSubProduct = (Product) view.getTag();
                    }
                    update();
                    break;
                }
                break;
        }
    }

    void purchaseSubscribe(final Product product) {
        if (this.inventory == null) {
            ProgressDialog progressDialog = this.iabPendingDlg;
            if (progressDialog != null) {
                progressDialog.dismiss();
            }
            this.iabPendingProduct = product;
            this.iabPendingDlg = new ProgressDialog(getContext());
            this.iabPendingDlg.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.wallet.MembershipSubscribeFragment.10
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    MembershipSubscribeFragment membershipSubscribeFragment = MembershipSubscribeFragment.this;
                    membershipSubscribeFragment.iabPendingDlg = null;
                    membershipSubscribeFragment.iabPendingProduct = null;
                }
            });
            this.iabPendingDlg.show();
            if (this.iabSetupted) {
                queryIabInv();
                return;
            } else {
                this.iabHelper.startSetup(this);
                return;
            }
        }
        if (checkMembershipAndPayment() != Boolean.TRUE) {
            if (this.checkMembershipAndPaymentResultReason != null) {
                ((LoggingService) getService("logging")).lambda$logEvent$0$LoggingServiceImpl("MembershipPurchaseError", "type", "IAP", "months", Integer.valueOf(product.numberOfMonths), "sku", product.skuList[0], "reason", this.checkMembershipAndPaymentResultReason, "code", Integer.valueOf(this.checkMembershipAndPaymentResultCode), AccountNotice.LEVEL_MESSAGE, this.checkMembershipAndPaymentResultMessage);
                return;
            }
            return;
        }
        final SkuDetails inventory = getInventory(product);
        if (inventory != null) {
            ((LoggingService) getService("logging")).lambda$logEvent$0$LoggingServiceImpl("MembershipPurchaseStarting", "type", "IAP", "months", Integer.valueOf(product.numberOfMonths), "sku", inventory.getSku());
            final ProgressDialog progressDialog2 = new ProgressDialog(getContext());
            final ApiRequest apiRequestBuild = ApiRequest.builder().global().post().path("/membership/product/pre-subscribe").param("sku", inventory.getSku()).param("packageName", getContext().getPackageName()).param("paymentType", 5).build();
            final ApiService apiService = (ApiService) getService("api");
            apiService.exec(apiRequestBuild, new ApiJsonResponseListener<ApiResponse>(ApiResponse.class) { // from class: com.narvii.wallet.MembershipSubscribeFragment.11
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                    progressDialog2.dismiss();
                    if (MembershipSubscribeFragment.this.isActive()) {
                        ArrayList arrayList = new ArrayList();
                        String userId = ((AccountService) MembershipSubscribeFragment.this.getService("account")).getUserId();
                        for (Purchase purchase : MembershipSubscribeFragment.this.inventory.getAllPurchases()) {
                            if (Utils.isEqualsNotNull(userId, JacksonUtils.nodeString(JacksonUtils.createObjectNode(purchase.getDeveloperPayload()), "uid"))) {
                                arrayList.add(purchase.getSku());
                            }
                        }
                        ObjectNode objectNode = (ObjectNode) JacksonUtils.nodePath(json(), ApiRequest.MULTIPART_NAME_PAYLOAD);
                        Log.i("narvii_iab", "start purchase " + inventory + " with oldSkus " + StringUtils.join(arrayList, ","));
                        try {
                            MembershipSubscribeFragment.this.iabHelper.launchSubscriptionPurchaseFlow(MembershipSubscribeFragment.this.getActivity(), inventory.getSku(), MembershipSubscribeFragment.REQUEST_IAB_SUBSCRIBE, MembershipSubscribeFragment.this, objectNode.toString());
                            MembershipSubscribeFragment.this.purchasingProduct = product;
                        } catch (Exception e) {
                            ((LoggingService) MembershipSubscribeFragment.this.getService("logging")).lambda$logEvent$0$LoggingServiceImpl("MembershipPurchaseError", "type", "IAP", "months", Integer.valueOf(product.numberOfMonths), "sku", inventory.getSku(), "reason", "IAB_EXCEPTION", "code", 40, AccountNotice.LEVEL_MESSAGE, e.getClass().getSimpleName() + ": " + e.getMessage());
                            StringBuilder sb = new StringBuilder();
                            sb.append("fail to purchase ");
                            sb.append(inventory.getSku());
                            Log.e("narvii_iab", sb.toString(), e);
                            NVToast.makeText(MembershipSubscribeFragment.this.getContext(), e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage(), 0).show();
                        }
                    }
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    progressDialog2.dismiss();
                    AlertDialog alertDialog = new AlertDialog(MembershipSubscribeFragment.this.getContext());
                    alertDialog.setMessage(str);
                    alertDialog.addButton(R.string.close, 0, (View.OnClickListener) null);
                    alertDialog.show();
                    ((LoggingService) MembershipSubscribeFragment.this.getService("logging")).lambda$logEvent$0$LoggingServiceImpl("MembershipPurchaseError", "type", "IAP", "months", Integer.valueOf(product.numberOfMonths), "sku", inventory.getSku(), "reason", "PRE_PURCHASE_ERROR", "code", Integer.valueOf(i), AccountNotice.LEVEL_MESSAGE, str);
                }
            });
            progressDialog2.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.wallet.MembershipSubscribeFragment.12
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    apiService.abort(apiRequestBuild);
                }
            });
            progressDialog2.show();
        }
    }

    void redeemSubscribe(final Product product, Coupon coupon) {
        CouponDetail couponDetail;
        Integer num;
        final int iIntValue = (coupon == null || (couponDetail = coupon.coupon) == null || (num = couponDetail.couponValue) == null) ? 0 : num.intValue();
        if (checkMembershipAndPayment() != Boolean.TRUE) {
            ((LoggingService) getService("logging")).lambda$logEvent$0$LoggingServiceImpl("MembershipPurchaseError", "type", "Coin", "months", Integer.valueOf(product.numberOfMonths), "reason", this.checkMembershipAndPaymentResultReason, "code", Integer.valueOf(this.checkMembershipAndPaymentResultCode), AccountNotice.LEVEL_MESSAGE, this.checkMembershipAndPaymentResultMessage);
            return;
        }
        LogEvent.clickBuilder(this, ActSemantic.purchase).area("PurchaseButton").send();
        ((LoggingService) getService("logging")).lambda$logEvent$0$LoggingServiceImpl("MembershipPurchaseStarting", "type", "Coin", "months", Integer.valueOf(product.numberOfMonths));
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("transactionId", this.redeemTransactionId);
        objectNodeCreateObjectNode.put("isAutoRenew", true);
        if (coupon != null) {
            ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
            arrayNodeCreateArrayNode.add(coupon.couponMappingId);
            objectNodeCreateObjectNode.put("couponMappingIdList", arrayNodeCreateArrayNode);
        }
        ((ApiService) getService("api")).exec(ApiRequest.builder().post().path("/membership/product/subscribe").param("sku", product.skuList[0]).param("packageName", getContext().getPackageName()).param("paymentType", 1).param("paymentContext", objectNodeCreateObjectNode).build(), new ApiResponseListener<MembershipResponse>(MembershipResponse.class) { // from class: com.narvii.wallet.MembershipSubscribeFragment.13
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, MembershipResponse membershipResponse) throws Exception {
                MembershipSubscribeFragment.this.done();
                MembershipSubscribeFragment.this.cofetti();
                MembershipSubscribeFragment.this.updateMembership(membershipResponse);
                ((MembershipService) MembershipSubscribeFragment.this.getService("membership")).refreshWallet(true);
                ((LoggingService) MembershipSubscribeFragment.this.getService("logging")).lambda$logEvent$0$LoggingServiceImpl("MembershipPurchaseSucceed", "type", "Coin", "months", Integer.valueOf(product.numberOfMonths));
                LogEvent.clickBuilder(MembershipSubscribeFragment.this, ActSemantic.purchaseSuccess).area("PurchaseButton").send();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                if (i == 4300) {
                    PurchaseCoinFragment.show(MembershipSubscribeFragment.this, true);
                } else {
                    AlertDialog alertDialog = new AlertDialog(MembershipSubscribeFragment.this.getContext());
                    alertDialog.setMessage(str);
                    alertDialog.addButton(R.string.close, 0, (View.OnClickListener) null);
                    alertDialog.show();
                }
                MembershipSubscribeFragment.this.update();
                LoggingService loggingService = (LoggingService) MembershipSubscribeFragment.this.getService("logging");
                Object[] objArr = new Object[10];
                objArr[0] = "type";
                objArr[1] = "IAP";
                objArr[2] = "months";
                objArr[3] = Integer.valueOf(product.numberOfMonths);
                objArr[4] = "reason";
                objArr[5] = i == 4300 ? "NO_ENOUGH_COINS" : null;
                objArr[6] = "code";
                objArr[7] = Integer.valueOf(i);
                objArr[8] = AccountNotice.LEVEL_MESSAGE;
                objArr[9] = str;
                loggingService.lambda$logEvent$0$LoggingServiceImpl("MembershipPurchaseError", objArr);
            }
        });
    }

    SkuDetails getInventory(Product product) {
        SkuDetails skuDetails;
        if (product != null && this.inventory != null && product.skuList != null) {
            String userId = ((AccountService) getService("account")).getUserId();
            for (String str : product.skuList) {
                Purchase purchase = this.inventory.getPurchase(str);
                if ((purchase == null || Utils.isEqualsNotNull(userId, JacksonUtils.nodeString(JacksonUtils.createObjectNode(purchase.getDeveloperPayload()), "uid"))) && (skuDetails = this.inventory.getSkuDetails(str)) != null) {
                    return skuDetails;
                }
            }
        }
        return null;
    }

    Purchase getMyPurchase(Product product) {
        if (product != null && this.inventory != null && product.skuList != null) {
            String userId = ((AccountService) getService("account")).getUserId();
            for (String str : product.skuList) {
                Purchase purchase = this.inventory.getPurchase(str);
                if (purchase != null && Utils.isEqualsNotNull(userId, JacksonUtils.nodeString(JacksonUtils.createObjectNode(purchase.getDeveloperPayload()), "uid"))) {
                    return purchase;
                }
            }
        }
        return null;
    }

    @Override // com.narvii.wallet.RedeemCouponComponent.IRedeemCouponCallback
    public void onRedeemRequested(IBaseProduct iBaseProduct, Coupon coupon) {
        if (iBaseProduct instanceof Product) {
            redeemSubscribe((Product) iBaseProduct, coupon);
        }
    }
}
