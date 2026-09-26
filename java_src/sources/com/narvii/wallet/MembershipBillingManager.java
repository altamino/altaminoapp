package com.narvii.wallet;

import android.app.Activity;
import com.android.billingclient.api.Purchase;
import com.narvii.account.AccountService;
import com.narvii.app.NVContext;
import com.narvii.util.Log;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class MembershipBillingManager {

    @NotNull
    private static final String TAG = "MembershipBillingManager";

    @NotNull
    private static List<? extends Purchase> purchaseList;

    @NotNull
    private static final Map<String, Purchase> purchaseMap;

    @NotNull
    private static List<com.android.billingclient.api.l> subsDetails;

    @NotNull
    private static final defpackage.a<com.android.billingclient.api.h> subsUpdate;

    @NotNull
    public static final MembershipBillingManager INSTANCE = new MembershipBillingManager();

    @NotNull
    private static WeakReference<NVContext> nvContext = new WeakReference<>(null);

    @NotNull
    private static final Map<String, com.android.billingclient.api.l> subscriptionMap = new LinkedHashMap();

    @NotNull
    public final List<Purchase> getPurchaseList() {
        return purchaseList;
    }

    @NotNull
    public final List<com.android.billingclient.api.l> getSubsDetails() {
        return subsDetails;
    }

    @NotNull
    public final defpackage.a<com.android.billingclient.api.h> getSubsUpdate() {
        return subsUpdate;
    }

    public final void setPurchaseList(@NotNull List<? extends Purchase> list) {
        kotlin.jvm.internal.t.j(list, "<set-?>");
        purchaseList = list;
    }

    public final void setSubsDetails(@NotNull List<com.android.billingclient.api.l> list) {
        kotlin.jvm.internal.t.j(list, "<set-?>");
        subsDetails = list;
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        purchaseMap = linkedHashMap;
        purchaseList = kotlin.collections.d0.U0(linkedHashMap.values());
        subsDetails = kotlin.collections.v.m();
        subsUpdate = new defpackage.a<>();
    }

    private final void acknowledgeNonConsumablePurchases(List<? extends Purchase> list) {
        for (final Purchase purchase : list) {
            com.android.billingclient.api.b bVarA = com.android.billingclient.api.b.b().b(purchase.h()).a();
            kotlin.jvm.internal.t.i(bVarA, "build(...)");
            BillingManager.INSTANCE.getBillingClient().a(bVarA, new com.android.billingclient.api.c() { // from class: com.narvii.wallet.k
                @Override // com.android.billingclient.api.c
                public final void a(com.android.billingclient.api.h hVar) {
                    MembershipBillingManager.acknowledgeNonConsumablePurchases$lambda$7$lambda$6(purchase, hVar);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void acknowledgeNonConsumablePurchases$lambda$7$lambda$6(Purchase it, com.android.billingclient.api.h billingResult) {
        kotlin.jvm.internal.t.j(it, "$it");
        kotlin.jvm.internal.t.j(billingResult, "billingResult");
        if (!BillingKt.isSuccess(billingResult)) {
            Log.e(TAG, billingResult.a());
            return;
        }
        ArrayList<String> arrayListJ = it.j();
        kotlin.jvm.internal.t.i(arrayListJ, "getSkus(...)");
        Log.d(TAG, "Purchase  " + kotlin.collections.d0.l0(arrayListJ) + " acknowledged.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void querySubsDetails$lambda$2(e8.a update, com.android.billingclient.api.h billingResult, List productDetailsList) {
        kotlin.jvm.internal.t.j(update, "$update");
        kotlin.jvm.internal.t.j(billingResult, "billingResult");
        kotlin.jvm.internal.t.j(productDetailsList, "productDetailsList");
        Log.d(TAG, "SKU details response size: " + productDetailsList.size());
        if (BillingKt.isSuccess(billingResult) && (!productDetailsList.isEmpty())) {
            subsDetails = productDetailsList;
            subscriptionMap.clear();
            Iterator it = productDetailsList.iterator();
            while (it.hasNext()) {
                com.android.billingclient.api.l lVar = (com.android.billingclient.api.l) it.next();
                Map<String, com.android.billingclient.api.l> map = subscriptionMap;
                String strB = lVar.b();
                kotlin.jvm.internal.t.i(strB, "getProductId(...)");
                kotlin.jvm.internal.t.g(lVar);
                map.put(strB, lVar);
            }
            update.invoke();
        } else {
            INSTANCE.clearSubs();
        }
        subsUpdate.p(billingResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void querySubsPurchases$lambda$3(e8.l onFinish, com.android.billingclient.api.h hVar, List purchaseList2) {
        kotlin.jvm.internal.t.j(onFinish, "$onFinish");
        kotlin.jvm.internal.t.j(hVar, "<anonymous parameter 0>");
        kotlin.jvm.internal.t.j(purchaseList2, "purchaseList");
        INSTANCE.processPurchases(purchaseList2);
        onFinish.invoke(purchaseList2);
    }

    private final NVContext requireContext() {
        NVContext nVContext = nvContext.get();
        if (nVContext != null) {
            return nVContext;
        }
        throw new IllegalStateException("NVContext is null");
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:17:0x003e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:9:0x0033  */
    @Nullable
    public final com.android.billingclient.api.l getProductDetails(@NotNull String[] skuList) {
        com.android.billingclient.api.l lVar;
        kotlin.jvm.internal.t.j(skuList, "skuList");
        for (String str : skuList) {
            Purchase purchase = purchaseMap.get(str);
            AccountService accountService = (AccountService) requireContext().getService("account");
            if (purchase != null) {
                BillingManager billingManager = BillingManager.INSTANCE;
                String userId = accountService.getUserId();
                kotlin.jvm.internal.t.i(userId, "getUserId(...)");
                if (billingManager.checkPurchaseForAminoId(purchase, userId)) {
                    lVar = subscriptionMap.get(str);
                    if (lVar != null) {
                        return lVar;
                    }
                } else {
                    continue;
                }
            } else {
                lVar = subscriptionMap.get(str);
                if (lVar != null) {
                    return lVar;
                }
            }
        }
        return null;
    }

    public final void initialize(@NotNull NVContext ctx) {
        kotlin.jvm.internal.t.j(ctx, "ctx");
        nvContext = new WeakReference<>(ctx);
    }

    public final void processPurchase(@NotNull Purchase purchase) {
        kotlin.jvm.internal.t.j(purchase, "purchase");
        Map<String, Purchase> map = purchaseMap;
        ArrayList<String> arrayListJ = purchase.j();
        kotlin.jvm.internal.t.i(arrayListJ, "getSkus(...)");
        String str = (String) kotlin.collections.d0.l0(arrayListJ);
        if (str == null) {
            str = "";
        }
        map.put(str, purchase);
        processPurchases(kotlin.collections.u.e(purchase));
    }

    public final void purchaseSub(@NotNull Activity activity, @NotNull com.android.billingclient.api.l productDetails) {
        List<com.android.billingclient.api.l.d> listD;
        com.android.billingclient.api.l.d dVar;
        String strA;
        kotlin.jvm.internal.t.j(activity, "activity");
        kotlin.jvm.internal.t.j(productDetails, "productDetails");
        BillingManager billingManager = BillingManager.INSTANCE;
        if (!billingManager.getBillingState().isConnected() || (listD = productDetails.d()) == null || (dVar = (com.android.billingclient.api.l.d) kotlin.collections.d0.l0(listD)) == null || (strA = dVar.a()) == null) {
            return;
        }
        if (strA.length() == 0) {
            Log.e(TAG, "Offer token is empty");
            return;
        }
        com.android.billingclient.api.g gVarA = com.android.billingclient.api.g.a().c(kotlin.collections.u.e(com.android.billingclient.api.g.b.a().c(productDetails).b(strA).a())).b(((AccountService) requireContext().getService("account")).getUserId()).a();
        kotlin.jvm.internal.t.i(gVarA, "build(...)");
        billingManager.getBillingClient().e(activity, gVarA);
    }

    public final void querySubsDetails(@NotNull ArrayList<String> skuList, @NotNull final e8.a<w7.l0> update) {
        kotlin.jvm.internal.t.j(skuList, "skuList");
        kotlin.jvm.internal.t.j(update, "update");
        ArrayList arrayList = new ArrayList(kotlin.collections.w.x(skuList, 10));
        Iterator<T> it = skuList.iterator();
        while (it.hasNext()) {
            arrayList.add(com.android.billingclient.api.q.b.a().b((String) it.next()).c("subs").a());
        }
        com.android.billingclient.api.q.a aVarB = com.android.billingclient.api.q.a().b(arrayList);
        kotlin.jvm.internal.t.i(aVarB, "setProductList(...)");
        BillingManager.INSTANCE.getBillingClient().g(aVarB.a(), new com.android.billingclient.api.m() { // from class: com.narvii.wallet.j
            @Override // com.android.billingclient.api.m
            public final void a(com.android.billingclient.api.h hVar, List list) {
                MembershipBillingManager.querySubsDetails$lambda$2(update, hVar, list);
            }
        });
    }

    public final void querySubsPurchases(@NotNull final e8.l<? super List<? extends Purchase>, w7.l0> onFinish) {
        kotlin.jvm.internal.t.j(onFinish, "onFinish");
        BillingManager.INSTANCE.getBillingClient().h(com.android.billingclient.api.r.a().b("subs").a(), new com.android.billingclient.api.o() { // from class: com.narvii.wallet.i
            @Override // com.android.billingclient.api.o
            public final void a(com.android.billingclient.api.h hVar, List list) {
                MembershipBillingManager.querySubsPurchases$lambda$3(onFinish, hVar, list);
            }
        });
    }

    private MembershipBillingManager() {
    }

    private final void processPurchases(List<? extends Purchase> list) {
        Log.d(TAG, "Process purchases: " + list.size());
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            Purchase purchase = (Purchase) obj;
            AccountService accountService = (AccountService) INSTANCE.requireContext().getService("account");
            if (purchase.f() == 1 && !purchase.k()) {
                BillingManager billingManager = BillingManager.INSTANCE;
                String userId = accountService.getUserId();
                kotlin.jvm.internal.t.i(userId, "getUserId(...)");
                if (billingManager.checkPurchaseForAminoId(purchase, userId)) {
                    arrayList.add(obj);
                }
            }
        }
        INSTANCE.acknowledgeNonConsumablePurchases(arrayList);
    }

    public final void clearSubs() {
        subsDetails = kotlin.collections.v.m();
        subscriptionMap.clear();
    }
}
