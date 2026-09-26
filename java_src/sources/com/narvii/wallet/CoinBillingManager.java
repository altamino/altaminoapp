package com.narvii.wallet;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.android.billingclient.api.Purchase;
import com.android.billingclient.api.SkuDetails;
import com.narvii.account.AccountService;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.master.R;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.logging.LoggingService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class CoinBillingManager {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @Nullable
    private static volatile CoinBillingManager INSTANCE = null;

    @NotNull
    private static final String TAG = "CoinBillingManager";

    @NotNull
    private List<Product> _productList;
    private boolean billingError;

    @Nullable
    private Context context;

    @Nullable
    private AlertDialog errorDialog;

    @NotNull
    private final LoggingService logging;

    @NotNull
    private final NVContext nvContext;

    @NotNull
    private final defpackage.a<WalletResponse> onWalletChangedLive;

    @Nullable
    private ProgressDialog pendingDialog;

    @Nullable
    private Product pendingProduct;

    @NotNull
    private final Map<String, SkuDetails> productMap;

    @Nullable
    private ProgressDialog progressDialog;

    @NotNull
    private List<? extends Purchase> purchaseList;

    @Nullable
    private Product purchasingProduct;

    @NotNull
    private final MutableLiveData<Boolean> queryInAppFinishedLive;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        public final void refreshInstance() {
            CoinBillingManager.INSTANCE = new CoinBillingManager(null);
        }

        @NotNull
        public final CoinBillingManager getInstance() {
            CoinBillingManager coinBillingManager = CoinBillingManager.INSTANCE;
            if (coinBillingManager == null) {
                synchronized (this) {
                    coinBillingManager = CoinBillingManager.INSTANCE;
                    if (coinBillingManager == null) {
                        coinBillingManager = new CoinBillingManager(null);
                        CoinBillingManager.INSTANCE = coinBillingManager;
                    }
                }
            }
            return coinBillingManager;
        }
    }

    /* JADX INFO: renamed from: com.narvii.wallet.CoinBillingManager$observeBillingManager$1, reason: invalid class name and case insensitive filesystem */
    static final class C05821 extends kotlin.jvm.internal.v implements e8.l<com.android.billingclient.api.h, w7.l0> {
        C05821() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ w7.l0 invoke(com.android.billingclient.api.h hVar) {
            invoke2(hVar);
            return w7.l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(com.android.billingclient.api.h hVar) {
            if (BillingManager.INSTANCE.getBillingState().isConnected()) {
                CoinBillingManager.this.billingError = false;
                CoinBillingManager.this.queryInAppProductDetails();
            } else {
                if (CoinBillingManager.this.billingError) {
                    return;
                }
                CoinBillingManager.this.billingError = true;
                CoinBillingManager coinBillingManager = CoinBillingManager.this;
                kotlin.jvm.internal.t.g(hVar);
                coinBillingManager.handleBillingResultError(hVar, CoinBillingManager.this.pendingProduct);
            }
        }
    }

    /* JADX INFO: renamed from: com.narvii.wallet.CoinBillingManager$observeBillingManager$2, reason: invalid class name */
    static final class AnonymousClass2 extends kotlin.jvm.internal.v implements e8.l<PurchasesUpdate, w7.l0> {
        AnonymousClass2() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ w7.l0 invoke(PurchasesUpdate purchasesUpdate) {
            invoke2(purchasesUpdate);
            return w7.l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull PurchasesUpdate it) {
            kotlin.jvm.internal.t.j(it, "it");
            int iB = it.getBillingResult().b();
            if (iB == 0) {
                CoinBillingManager.this.progressDialog = new ProgressDialog(CoinBillingManager.this.getContext());
                ProgressDialog progressDialog = CoinBillingManager.this.progressDialog;
                if (progressDialog != null) {
                    progressDialog.show();
                }
                List<Purchase> purchases = it.getPurchases();
                if (purchases != null) {
                    CoinBillingManager.this.processPurchases(purchases);
                    return;
                }
                return;
            }
            if (iB != 1) {
                if (iB != 7) {
                    CoinBillingManager.this.handleBillingResultError(it.getBillingResult(), CoinBillingManager.this.purchasingProduct);
                    return;
                }
                CoinBillingManager.this.progressDialog = new ProgressDialog(CoinBillingManager.this.getContext());
                ProgressDialog progressDialog2 = CoinBillingManager.this.progressDialog;
                if (progressDialog2 != null) {
                    progressDialog2.show();
                }
                it.getPurchases();
                CoinBillingManager.this.queryInAppPurchases();
            }
        }
    }

    /* JADX INFO: renamed from: com.narvii.wallet.CoinBillingManager$observeBillingManager$3, reason: invalid class name */
    static final class AnonymousClass3 extends kotlin.jvm.internal.v implements e8.l<PurchasesUpdate, w7.l0> {
        AnonymousClass3() {
            super(1);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ w7.l0 invoke(PurchasesUpdate purchasesUpdate) {
            invoke2(purchasesUpdate);
            return w7.l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull PurchasesUpdate it) {
            kotlin.jvm.internal.t.j(it, "it");
            int iB = it.getBillingResult().b();
            if (iB == 0) {
                CoinBillingManager.this.progressDialog = new ProgressDialog(CoinBillingManager.this.getContext());
                ProgressDialog progressDialog = CoinBillingManager.this.progressDialog;
                if (progressDialog != null) {
                    progressDialog.show();
                }
                List<Purchase> purchases = it.getPurchases();
                if (purchases != null) {
                    CoinBillingManager.this.processPurchases(purchases);
                    return;
                }
                return;
            }
            if (iB != 1) {
                if (iB != 7) {
                    CoinBillingManager.this.handleBillingResultError(it.getBillingResult(), CoinBillingManager.this.purchasingProduct);
                    return;
                }
                CoinBillingManager.this.progressDialog = new ProgressDialog(CoinBillingManager.this.getContext());
                ProgressDialog progressDialog2 = CoinBillingManager.this.progressDialog;
                if (progressDialog2 != null) {
                    progressDialog2.show();
                }
                it.getPurchases();
                CoinBillingManager.this.queryInAppPurchases();
            }
        }
    }

    public /* synthetic */ CoinBillingManager(kotlin.jvm.internal.k kVar) {
        this();
    }

    private final void clearPending() {
        this.pendingProduct = null;
        ProgressDialog progressDialog = this.pendingDialog;
        if (progressDialog != null) {
            progressDialog.dismiss();
        }
        this.pendingDialog = null;
    }

    @NotNull
    public static final CoinBillingManager getInstance() {
        return Companion.getInstance();
    }

    private final void handleConsumablePurchases(final List<? extends Purchase> list) {
        for (final Purchase purchase : list) {
            ApiRequest.Builder builderPath = ApiRequest.builder().post().path("/wallet/product/purchase");
            ArrayList<String> arrayListJ = purchase.j();
            kotlin.jvm.internal.t.i(arrayListJ, "getSkus(...)");
            ApiRequest apiRequestBuild = builderPath.param("sku", kotlin.collections.d0.l0(arrayListJ)).param("packageName", this.nvContext.getContext().getPackageName()).param("paymentType", 4).param("paymentContext", JacksonUtils.createObjectNode(purchase.d())).build();
            Object service = this.nvContext.getService("api");
            kotlin.jvm.internal.t.i(service, "getService(...)");
            final Class<WalletResponse> cls = WalletResponse.class;
            ((ApiService) service).exec(apiRequestBuild, new ApiResponseListener<WalletResponse>(cls) { // from class: com.narvii.wallet.CoinBillingManager$handleConsumablePurchases$1$1
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list2, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                    ProgressDialog progressDialog = this.this$0.progressDialog;
                    if (progressDialog != null) {
                        progressDialog.dismiss();
                    }
                    CoinBillingManager coinBillingManager = this.this$0;
                    if (str == null) {
                        str = "";
                    }
                    coinBillingManager.showErrorAlert(str);
                }

                @Override // com.narvii.util.http.ApiResponseListener
                public void onFinish(@Nullable ApiRequest apiRequest, @Nullable WalletResponse walletResponse) {
                    ProgressDialog progressDialog = this.this$0.progressDialog;
                    if (progressDialog != null) {
                        progressDialog.dismiss();
                    }
                    defpackage.a<WalletResponse> onWalletChangedLive = this.this$0.getOnWalletChangedLive();
                    kotlin.jvm.internal.t.g(walletResponse);
                    onWalletChangedLive.p(walletResponse);
                    Object service2 = this.this$0.nvContext.getService("membership");
                    kotlin.jvm.internal.t.i(service2, "getService(...)");
                    ((MembershipService) service2).updateWalletBalance(walletResponse);
                    CoinBillingManager coinBillingManager = this.this$0;
                    Purchase purchase2 = purchase;
                    ArrayList<String> arrayListJ2 = purchase2.j();
                    kotlin.jvm.internal.t.i(arrayListJ2, "getSkus(...)");
                    Object objL0 = kotlin.collections.d0.l0(arrayListJ2);
                    ArrayList<String> arrayListJ3 = ((Purchase) kotlin.collections.d0.v0(list)).j();
                    kotlin.jvm.internal.t.i(arrayListJ3, "getSkus(...)");
                    coinBillingManager.handleConsumablePurchase(purchase2, kotlin.jvm.internal.t.e(objL0, kotlin.collections.d0.l0(arrayListJ3)));
                }
            });
        }
    }

    public static final void refreshInstance() {
        Companion.refreshInstance();
    }

    public final void fetchInAppProducts(@NotNull ApiResponseListener<ProductListResponse> listener) {
        kotlin.jvm.internal.t.j(listener, "listener");
        fetchInAppProducts$default(this, false, listener, 1, null);
    }

    @NotNull
    public final defpackage.a<WalletResponse> getOnWalletChangedLive() {
        return this.onWalletChangedLive;
    }

    @NotNull
    public final List<Product> getProductList() {
        return this._productList;
    }

    @NotNull
    public final MutableLiveData<Boolean> getQueryInAppFinishedLive() {
        return this.queryInAppFinishedLive;
    }

    private CoinBillingManager() {
        NVApplication nVApplicationInstance = NVApplication.instance();
        kotlin.jvm.internal.t.h(nVApplicationInstance, "null cannot be cast to non-null type com.narvii.app.NVContext");
        this.nvContext = nVApplicationInstance;
        Object service = nVApplicationInstance.getService("logging");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        this.logging = (LoggingService) service;
        this.purchaseList = kotlin.collections.v.m();
        this.productMap = new LinkedHashMap();
        this._productList = new ArrayList();
        this.queryInAppFinishedLive = new MutableLiveData<>();
        this.onWalletChangedLive = new defpackage.a<>();
    }

    public static /* synthetic */ void fetchInAppProducts$default(CoinBillingManager coinBillingManager, boolean z6, ApiResponseListener apiResponseListener, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        coinBillingManager.fetchInAppProducts(z6, apiResponseListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleBillingResultError(com.android.billingclient.api.h hVar, Product product) {
        if (product != null) {
            clearPending();
            showErrorAlert$default(this, null, 1, null);
            this.logging.lambda$logEvent$0("WalletPurchaseError", "sku", product.skuList[0], "reason", IabUtils.getReason(hVar.b()), "code", Integer.valueOf(hVar.b()), AccountNotice.LEVEL_MESSAGE, hVar.a());
        }
    }

    private final void launchBillingFlow(Activity activity, SkuDetails skuDetails) {
        BillingManager billingManager = BillingManager.INSTANCE;
        if (!billingManager.getBillingState().isConnected()) {
            this.logging.lambda$logEvent$0("WalletPurchaseError", "sku", skuDetails.b(), AccountNotice.LEVEL_MESSAGE, "Unable to launch billing flow, client is not active.");
            return;
        }
        com.android.billingclient.api.g gVarA = com.android.billingclient.api.g.a().d(skuDetails).b(((AccountService) this.nvContext.getService("account")).getUserId()).a();
        kotlin.jvm.internal.t.i(gVarA, "build(...)");
        billingManager.getBillingClient().e(activity, gVarA);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void observeBillingManager(Context context) {
        if (context == 0 && getContext() != null && (getContext() instanceof LifecycleOwner)) {
            LiveData<com.android.billingclient.api.h> setupFinished = BillingManager.INSTANCE.getSetupFinished();
            Object context2 = getContext();
            kotlin.jvm.internal.t.g(context2);
            setupFinished.o((LifecycleOwner) context2);
            return;
        }
        if (context != 0) {
            BillingManager billingManager = BillingManager.INSTANCE;
            LifecycleOwner lifecycleOwner = (LifecycleOwner) context;
            billingManager.getSetupFinished().i(lifecycleOwner, new CoinBillingManager$sam$androidx_lifecycle_Observer$0(new C05821()));
            billingManager.getPurchasesUpdate().i(lifecycleOwner, new CoinBillingManager$sam$androidx_lifecycle_Observer$0(new AnonymousClass2()));
            billingManager.getPurchasesUpdate().i(lifecycleOwner, new CoinBillingManager$sam$androidx_lifecycle_Observer$0(new AnonymousClass3()));
        }
    }

    private final void onQuerySkuDetailsFinished() {
        if (this.pendingProduct != null) {
            clearPending();
            if (this.billingError) {
                showErrorAlert$default(this, null, 1, null);
            }
        }
        this.queryInAppFinishedLive.p(Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void queryInAppProductDetails() {
        if (!(!this._productList.isEmpty()) || !this.productMap.isEmpty() || !BillingManager.INSTANCE.isBillingInitialized()) {
            queryInAppPurchases();
            return;
        }
        com.android.billingclient.api.s.a aVarC = com.android.billingclient.api.s.c().c("inapp");
        List<Product> list = this._productList;
        ArrayList arrayList = new ArrayList(kotlin.collections.w.x(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((Product) it.next()).skuList[0]);
        }
        com.android.billingclient.api.s sVarA = aVarC.b(arrayList).a();
        kotlin.jvm.internal.t.i(sVarA, "build(...)");
        BillingManager.INSTANCE.getBillingClient().i(sVarA, new com.android.billingclient.api.t() { // from class: com.narvii.wallet.e
            @Override // com.android.billingclient.api.t
            public final void a(com.android.billingclient.api.h hVar, List list2) {
                CoinBillingManager.queryInAppProductDetails$lambda$3(this.f3010a, hVar, list2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void queryInAppPurchases() {
        BillingManager billingManager = BillingManager.INSTANCE;
        if (billingManager.isBillingInitialized()) {
            billingManager.getBillingClient().h(com.android.billingclient.api.r.a().b("inapp").a(), new com.android.billingclient.api.o() { // from class: com.narvii.wallet.f
                @Override // com.android.billingclient.api.o
                public final void a(com.android.billingclient.api.h hVar, List list) {
                    CoinBillingManager.queryInAppPurchases$lambda$4(this.f3012a, hVar, list);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showErrorAlert(String str) {
        AlertDialog alertDialog = this.errorDialog;
        if (alertDialog != null) {
            alertDialog.dismiss();
        }
        AlertDialog alertDialog2 = new AlertDialog(getContext());
        alertDialog2.setMessage(str);
        alertDialog2.addButton(R.string.close, 0, (View.OnClickListener) null);
        alertDialog2.show();
        this.errorDialog = alertDialog2;
    }

    static /* synthetic */ void showErrorAlert$default(CoinBillingManager coinBillingManager, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            Context context = coinBillingManager.getContext();
            kotlin.jvm.internal.t.g(context);
            str = context.getString(R.string.iab_billing_unavailable_message);
            kotlin.jvm.internal.t.i(str, "getString(...)");
        }
        coinBillingManager.showErrorAlert(str);
    }

    private final void showPending() {
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        this.pendingDialog = progressDialog;
        progressDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.wallet.d
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                CoinBillingManager.showPending$lambda$9(this.f3008a, dialogInterface);
            }
        });
        ProgressDialog progressDialog2 = this.pendingDialog;
        if (progressDialog2 != null) {
            progressDialog2.show();
        }
    }

    public final void fetchInAppProducts(boolean z6, @NotNull final ApiResponseListener<ProductListResponse> listener) {
        kotlin.jvm.internal.t.j(listener, "listener");
        if (!this._productList.isEmpty()) {
            queryInAppProductDetails();
            return;
        }
        Object service = this.nvContext.getService("api");
        kotlin.jvm.internal.t.i(service, "getService(...)");
        ((ApiService) service).exec(createInAppRequest(z6), new ApiResponseListener<ProductListResponse>(ProductListResponse.class) { // from class: com.narvii.wallet.CoinBillingManager.fetchInAppProducts.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(@Nullable ApiRequest apiRequest, int i10, @Nullable List<NameValuePair> list, @Nullable String str, @Nullable ApiResponse apiResponse, @Nullable Throwable th) {
                listener.onFail(apiRequest, i10, list, str, apiResponse, th);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(@Nullable ApiRequest apiRequest, @Nullable ProductListResponse productListResponse) throws Exception {
                listener.onFinish(apiRequest, productListResponse);
                CoinBillingManager coinBillingManager = this;
                kotlin.jvm.internal.t.g(productListResponse);
                ArrayList<Product> productList = productListResponse.productList;
                kotlin.jvm.internal.t.i(productList, "productList");
                coinBillingManager._productList = productList;
                BillingManager billingManager = BillingManager.INSTANCE;
                if (billingManager.isBillingInitialized() && billingManager.getBillingState().isConnected()) {
                    this.queryInAppProductDetails();
                }
            }
        });
    }

    @Nullable
    public final Context getContext() {
        Context context = this.context;
        return context == null ? this.nvContext.getContext() : context;
    }

    @Nullable
    public final SkuDetails getSkuDetails(@NotNull String sku) {
        kotlin.jvm.internal.t.j(sku, "sku");
        return this.productMap.get(sku);
    }

    public final void purchaseInAppProduct(@NotNull Activity activity, @NotNull Product product) {
        kotlin.jvm.internal.t.j(activity, "activity");
        kotlin.jvm.internal.t.j(product, "product");
        clearPending();
        if (!this.productMap.isEmpty()) {
            this.logging.lambda$logEvent$0("WalletPurchaseStarting", "sku", product.skuList[0]);
            this.purchasingProduct = product;
            SkuDetails skuDetails = this.productMap.get(product.skuList[0]);
            kotlin.jvm.internal.t.g(skuDetails);
            launchBillingFlow(activity, skuDetails);
        } else {
            this.pendingProduct = product;
            showPending();
        }
        if (kotlin.jvm.internal.t.e(this.pendingProduct, product) && this.billingError) {
            clearPending();
            showErrorAlert$default(this, null, 1, null);
            this.logging.lambda$logEvent$0("WalletPurchaseError", "sku", product.skuList[0], AccountNotice.LEVEL_MESSAGE, "Product list is empty.");
        }
    }

    private final ApiRequest createInAppRequest(boolean z6) {
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.path("/wallet/product");
        builder.param("paymentType", 4);
        builder.param("packageName", this.nvContext.getContext().getPackageName());
        if (z6) {
            builder.param("page", "rcmd");
        }
        ApiRequest apiRequestBuild = builder.build();
        kotlin.jvm.internal.t.i(apiRequestBuild, "build(...)");
        return apiRequestBuild;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleConsumablePurchase(final Purchase purchase, final boolean z6) {
        com.android.billingclient.api.i iVarA = com.android.billingclient.api.i.b().b(purchase.h()).a();
        kotlin.jvm.internal.t.i(iVarA, "build(...)");
        BillingManager.INSTANCE.getBillingClient().b(iVarA, new com.android.billingclient.api.j() { // from class: com.narvii.wallet.g
            @Override // com.android.billingclient.api.j
            public final void a(com.android.billingclient.api.h hVar, String str) {
                CoinBillingManager.handleConsumablePurchase$lambda$8(z6, this, purchase, hVar, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void handleConsumablePurchase$lambda$8(boolean z6, CoinBillingManager this$0, Purchase purchase, com.android.billingclient.api.h billingResult, String str) {
        ProgressDialog progressDialog;
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(purchase, "$purchase");
        kotlin.jvm.internal.t.j(billingResult, "billingResult");
        kotlin.jvm.internal.t.j(str, "<anonymous parameter 1>");
        if (z6 && (progressDialog = this$0.progressDialog) != null) {
            progressDialog.dismiss();
        }
        if (billingResult.b() == 0) {
            ArrayList<String> arrayListJ = purchase.j();
            kotlin.jvm.internal.t.i(arrayListJ, "getSkus(...)");
            Log.d(TAG, "Purchase " + kotlin.collections.d0.l0(arrayListJ) + " consumed.");
            return;
        }
        Log.e(TAG, billingResult.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void processPurchases(List<? extends Purchase> list) {
        Log.d(TAG, "Process purchases: " + list.size());
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            Purchase purchase = (Purchase) obj;
            AccountService accountService = (AccountService) this.nvContext.getService("account");
            Map<String, SkuDetails> map = this.productMap;
            ArrayList<String> arrayListJ = purchase.j();
            kotlin.jvm.internal.t.i(arrayListJ, "getSkus(...)");
            if (map.containsKey(kotlin.collections.d0.l0(arrayListJ)) && purchase.f() == 1) {
                BillingManager billingManager = BillingManager.INSTANCE;
                String userId = accountService.getUserId();
                kotlin.jvm.internal.t.i(userId, "getUserId(...)");
                if (billingManager.checkPurchaseForAminoId(purchase, userId)) {
                    arrayList.add(obj);
                }
            }
        }
        this.purchaseList = arrayList;
        handleConsumablePurchases(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void queryInAppProductDetails$lambda$3(CoinBillingManager this$0, com.android.billingclient.api.h billingResult, List list) {
        Integer numValueOf;
        List list2;
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(billingResult, "billingResult");
        if (list != null) {
            numValueOf = Integer.valueOf(list.size());
        } else {
            numValueOf = null;
        }
        Log.d(TAG, "SKU details response size: " + numValueOf);
        if (billingResult.b() == 0 && (list2 = list) != null && !list2.isEmpty()) {
            this$0.billingError = false;
            this$0.productMap.clear();
            kotlin.jvm.internal.t.g(list);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                SkuDetails skuDetails = (SkuDetails) it.next();
                Map<String, SkuDetails> map = this$0.productMap;
                String strB = skuDetails.b();
                kotlin.jvm.internal.t.i(strB, "getSku(...)");
                kotlin.jvm.internal.t.g(skuDetails);
                map.put(strB, skuDetails);
            }
            this$0.queryInAppPurchases();
        } else {
            this$0.billingError = true;
        }
        this$0.onQuerySkuDetailsFinished();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void queryInAppPurchases$lambda$4(CoinBillingManager this$0, com.android.billingclient.api.h hVar, List purchaseList) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        kotlin.jvm.internal.t.j(hVar, "<anonymous parameter 0>");
        kotlin.jvm.internal.t.j(purchaseList, "purchaseList");
        this$0.processPurchases(purchaseList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showPending$lambda$9(CoinBillingManager this$0, DialogInterface dialogInterface) {
        kotlin.jvm.internal.t.j(this$0, "this$0");
        this$0.pendingProduct = null;
        this$0.pendingDialog = null;
    }

    public final void setContext(@Nullable Context context) {
        observeBillingManager(context);
        this.context = context;
    }
}
