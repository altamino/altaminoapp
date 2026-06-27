package com.narvii.wallet;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import com.narvii.wallet.util.IabHelper;
import com.narvii.wallet.util.IabResult;
import com.narvii.wallet.util.Inventory;
import com.narvii.wallet.util.Purchase;
import com.narvii.wallet.util.SkuDetails;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class IabPurchaseManager extends ApiResponseListener<ProductListResponse> implements IabHelper.OnIabSetupFinishedListener, IabHelper.QueryInventoryFinishedListener, IabHelper.OnIabPurchaseFinishedListener, IabHelper.OnConsumeFinishedListener {
    public static final int FROM_PURCHASE_COIN_DIALOG = 2;
    public static final int FROM_WALLET_FRAGMENT = 1;
    public static final int REQUEST_IAB_PURCHASE = 59423;
    NVContext context;
    int from;
    IabResult iabError;
    IabHelper iabHelper;
    boolean iabSetupted;
    Inventory inventory;
    Object pendingAction;
    ProgressDialog pendingDlg;
    ProductListResponse productListResponse;
    Product purchasingProduct;

    @Override // com.narvii.wallet.util.IabHelper.OnIabPurchaseFinishedListener
    public void onIabPurchaseFinished(IabResult iabResult, Purchase purchase) {
    }

    public IabPurchaseManager(NVContext nVContext) {
        super(ProductListResponse.class);
        this.from = 1;
        this.context = nVContext;
    }

    public void init() {
        init(1);
    }

    public void init(int i) {
        this.from = i;
        this.iabHelper = IabUtils.createIabHelper(this.context.getContext());
        this.iabHelper.startSetup(this);
        sendProductRequest();
    }

    public void destroy() {
        IabHelper iabHelper = this.iabHelper;
        if (iabHelper != null) {
            try {
                iabHelper.dispose();
            } catch (Exception unused) {
            }
            this.iabHelper = null;
        }
    }

    public boolean isDestroyed() {
        return this.iabHelper == null;
    }

    public void sendProductRequest() {
        ApiRequest apiRequestBuild;
        if (NVApplication.CLIENT_TYPE == 101) {
            ApiRequest.Builder builderParam = ApiRequest.builder().path("/wallet/product/master").param("paymentType", 4);
            if (this.from == 2) {
                builderParam.param("page", "rcmd");
            }
            apiRequestBuild = builderParam.build();
        } else {
            ApiRequest.Builder builderParam2 = ApiRequest.builder().path("/wallet/product").param("paymentType", 4).param("packageName", this.context.getContext().getPackageName());
            if (this.from == 2) {
                builderParam2.param("page", "rcmd");
            }
            apiRequestBuild = builderParam2.build();
        }
        ((ApiService) this.context.getService("api")).exec(apiRequestBuild, this);
    }

    @Override // com.narvii.util.http.ApiResponseListener
    public void onFinish(ApiRequest apiRequest, ProductListResponse productListResponse) throws Exception {
        super.onFinish(apiRequest, (ApiRequest) productListResponse);
        this.productListResponse = productListResponse;
        if (this.iabSetupted) {
            queryInv();
        }
    }

    void showPendingDlg() {
        if (isDestroyed()) {
            return;
        }
        this.pendingDlg = new ProgressDialog(this.context.getContext());
        this.pendingDlg.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.wallet.IabPurchaseManager.1
            @Override // android.content.DialogInterface.OnCancelListener
            public void onCancel(DialogInterface dialogInterface) {
                IabPurchaseManager iabPurchaseManager = IabPurchaseManager.this;
                iabPurchaseManager.pendingAction = null;
                iabPurchaseManager.pendingDlg = null;
            }
        });
        this.pendingDlg.show();
    }

    void clearPending() {
        this.pendingAction = null;
        ProgressDialog progressDialog = this.pendingDlg;
        if (progressDialog != null) {
            progressDialog.dismiss();
            this.pendingDlg = null;
        }
    }

    void purchase(Product product) {
        IabResult iabResult;
        clearPending();
        if (this.inventory != null) {
            AccountService accountService = (AccountService) this.context.getService("account");
            this.purchasingProduct = product;
            LoggingService loggingService = (LoggingService) this.context.getService("logging");
            loggingService.lambda$logEvent$0$LoggingServiceImpl("WalletPurchaseStarting", "sku", product.skuList[0]);
            try {
                ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                objectNodeCreateObjectNode.put("uid", accountService.getUserId());
                this.iabHelper.launchPurchaseFlow((Activity) this.context.getContext(), product.skuList[0], REQUEST_IAB_PURCHASE, this, objectNodeCreateObjectNode.toString());
            } catch (Exception e) {
                loggingService.lambda$logEvent$0$LoggingServiceImpl("WalletPurchaseError", "sku", product.skuList[0], "reason", "IAB_EXCEPTION", "code", 40, AccountNotice.LEVEL_MESSAGE, e.getClass().getSimpleName() + ": " + e.getMessage());
                Log.e("fail to launch iab purchase", e);
                NVToast.makeText(this.context.getContext(), e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage(), 0).show();
            }
        } else {
            this.pendingAction = product;
            showPendingDlg();
        }
        if (this.pendingAction != product || (iabResult = this.iabError) == null) {
            return;
        }
        onIabSetupFinished(iabResult);
    }

    public boolean handleActivityResult(int i, int i2, Intent intent) {
        return this.iabHelper.handleActivityResult(i, i2, intent);
    }

    private void queryInv() {
        try {
            ArrayList arrayList = new ArrayList();
            Iterator<Product> it = this.productListResponse.productList.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().skuList[0]);
            }
            if (this.iabHelper != null) {
                this.iabHelper.queryInventoryAsync(true, arrayList, new ArrayList(), this);
            }
        } catch (Exception e) {
            Log.e("fail to query inventory", e);
        }
    }

    @Override // com.narvii.wallet.util.IabHelper.OnIabSetupFinishedListener
    public void onIabSetupFinished(IabResult iabResult) {
        if (iabResult.isSuccess()) {
            this.iabSetupted = true;
            if (this.productListResponse != null) {
                queryInv();
                return;
            }
            return;
        }
        this.iabError = iabResult;
        Object obj = this.pendingAction;
        if (obj instanceof Product) {
            clearPending();
            AlertDialog alertDialog = new AlertDialog(this.context.getContext());
            alertDialog.setMessage(IabUtils.getErrorMessage(iabResult));
            alertDialog.addButton(R.string.close, 0, (View.OnClickListener) null);
            alertDialog.show();
            ((LoggingService) this.context.getService("logging")).lambda$logEvent$0$LoggingServiceImpl("WalletPurchaseError", "sku", ((Product) obj).skuList[0], "reason", IabUtils.getReason(iabResult.getResponse()), "code", Integer.valueOf(iabResult.getResponse()), AccountNotice.LEVEL_MESSAGE, iabResult.getMessage());
        }
    }

    @Override // com.narvii.wallet.util.IabHelper.QueryInventoryFinishedListener
    public void onQueryInventoryFinished(IabResult iabResult, Inventory inventory) {
        if (iabResult.isSuccess()) {
            this.inventory = inventory;
            String userId = ((AccountService) this.context.getService("account")).getUserId();
            for (Purchase purchase : inventory.getAllPurchases()) {
                if (IabHelper.ITEM_TYPE_INAPP.equals(purchase.getItemType()) && Utils.isEqualsNotNull(userId, JacksonUtils.nodeString(JacksonUtils.createObjectNode(purchase.getDeveloperPayload()), "uid"))) {
                    consumeProduct(purchase, true);
                }
            }
            Object obj = this.pendingAction;
            if (obj instanceof Product) {
                clearPending();
                purchase((Product) obj);
                return;
            }
            return;
        }
        this.iabError = iabResult;
        Object obj2 = this.pendingAction;
        if (obj2 instanceof Product) {
            clearPending();
            AlertDialog alertDialog = new AlertDialog(this.context.getContext());
            alertDialog.setMessage(IabUtils.getErrorMessage(iabResult));
            alertDialog.addButton(R.string.close, 0, (View.OnClickListener) null);
            alertDialog.show();
            ((LoggingService) this.context.getService("logging")).lambda$logEvent$0$LoggingServiceImpl("WalletPurchaseError", "sku", ((Product) obj2).skuList[0], "reason", IabUtils.getReason(iabResult.getResponse()), "code", Integer.valueOf(iabResult.getResponse()), AccountNotice.LEVEL_MESSAGE, iabResult.getMessage());
        }
    }

    public SkuDetails getSkuDetail(String str) {
        Inventory inventory = this.inventory;
        if (inventory == null) {
            return null;
        }
        return inventory.getSkuDetails(str);
    }

    @Override // com.narvii.wallet.util.IabHelper.OnConsumeFinishedListener
    public void onConsumeFinished(Purchase purchase, IabResult iabResult) {
        if (iabResult.isSuccess()) {
            Log.i("narvii_iab", "consumed " + purchase);
            return;
        }
        NVToast.makeText(this.context.getContext(), IabUtils.getErrorMessage(iabResult), 1).show();
        Log.e("narvii_iab", "fail to consume " + iabResult.getMessage() + " " + purchase);
    }

    void consumeProduct(final Purchase purchase, final boolean z) {
        final ProgressDialog progressDialog = z ? null : new ProgressDialog(this.context.getContext());
        if (progressDialog != null) {
            progressDialog.show();
        }
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().post().path("/wallet/product/purchase").param("sku", purchase.getSku()).param("packageName", this.context.getContext().getPackageName()).param("paymentType", 4).param("paymentContext", JacksonUtils.createObjectNode(purchase.getOriginalJson())).build(), new ApiResponseListener<WalletResponse>(WalletResponse.class) { // from class: com.narvii.wallet.IabPurchaseManager.2
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, WalletResponse walletResponse) throws Exception {
                ProgressDialog progressDialog2 = progressDialog;
                if (progressDialog2 != null) {
                    progressDialog2.dismiss();
                }
                IabPurchaseManager.this.onWalletResponse(walletResponse);
                try {
                    IabPurchaseManager.this.iabHelper.consumeAsync(purchase, IabPurchaseManager.this);
                } catch (Exception e) {
                    NVToast.makeText(IabPurchaseManager.this.context.getContext(), e.getMessage() == null ? e.getClass().getSimpleName() : e.getMessage(), 1).show();
                    Log.e("fail to consume product " + purchase, e);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                ProgressDialog progressDialog2 = progressDialog;
                if (progressDialog2 != null) {
                    progressDialog2.dismiss();
                }
                if (z) {
                    NVToast.makeText(IabPurchaseManager.this.context.getContext(), str, 1).show();
                    return;
                }
                AlertDialog alertDialog = new AlertDialog(IabPurchaseManager.this.context.getContext());
                alertDialog.setMessage(str);
                alertDialog.addButton(R.string.close, 0, (View.OnClickListener) null);
                alertDialog.show();
            }
        });
    }

    public void onWalletResponse(WalletResponse walletResponse) {
        ((MembershipService) this.context.getService("membership")).updateWalletBalance(walletResponse);
    }
}
