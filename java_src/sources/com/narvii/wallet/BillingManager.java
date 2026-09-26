package com.narvii.wallet;

import android.content.Context;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.android.billingclient.api.BillingClient;
import com.android.billingclient.api.Purchase;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class BillingManager {

    @NotNull
    private static final MutableLiveData<com.android.billingclient.api.h> _setupFinished;
    public static BillingClient billingClient;

    @NotNull
    private static final defpackage.a<PurchasesUpdate> purchasesUpdate;
    private static boolean retryConnection;

    @NotNull
    private static final LiveData<com.android.billingclient.api.h> setupFinished;

    @NotNull
    public static final BillingManager INSTANCE = new BillingManager();

    @NotNull
    private static BillingState billingState = BillingState.Idle.INSTANCE;

    @NotNull
    public final BillingState getBillingState() {
        return billingState;
    }

    @NotNull
    public final defpackage.a<PurchasesUpdate> getPurchasesUpdate() {
        return purchasesUpdate;
    }

    @NotNull
    public final LiveData<com.android.billingclient.api.h> getSetupFinished() {
        return setupFinished;
    }

    public final boolean isBillingInitialized() {
        return billingClient != null;
    }

    public final void setBillingClient(@NotNull BillingClient billingClient2) {
        kotlin.jvm.internal.t.j(billingClient2, "<set-?>");
        billingClient = billingClient2;
    }

    public final void setBillingState(@NotNull BillingState billingState2) {
        kotlin.jvm.internal.t.j(billingState2, "<set-?>");
        billingState = billingState2;
    }

    static {
        MutableLiveData<com.android.billingclient.api.h> mutableLiveData = new MutableLiveData<>();
        _setupFinished = mutableLiveData;
        setupFinished = mutableLiveData;
        purchasesUpdate = new defpackage.a<>();
        retryConnection = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void init$lambda$1$lambda$0(com.android.billingclient.api.h billingResult, List list) {
        kotlin.jvm.internal.t.j(billingResult, "billingResult");
        Log.d("BillingManager2", "Purchase updated " + billingResult.b());
        purchasesUpdate.p(new PurchasesUpdate(billingResult, list));
    }

    public final boolean checkPurchaseForAminoId(@NotNull Purchase purchase, @NotNull String userId) {
        kotlin.jvm.internal.t.j(purchase, "purchase");
        kotlin.jvm.internal.t.j(userId, "userId");
        String strNodeString = JacksonUtils.nodeString(JacksonUtils.createObjectNode(purchase.b()), "udi");
        if (strNodeString == null) {
            strNodeString = "";
        }
        com.android.billingclient.api.a aVarA = purchase.a();
        String strA = aVarA != null ? aVarA.a() : null;
        return kotlin.jvm.internal.t.e(strNodeString, userId) || kotlin.jvm.internal.t.e(strA != null ? strA : "", userId);
    }

    public final void clear() {
        Log.d("BillingManager2", "clear BillingManager2");
        if (isBillingInitialized() && getBillingClient().d()) {
            Log.d("BillingManager2", "Ending connection...");
            getBillingClient().c();
        }
        billingState = BillingState.Idle.INSTANCE;
    }

    @NotNull
    public final BillingClient getBillingClient() {
        BillingClient billingClient2 = billingClient;
        if (billingClient2 != null) {
            return billingClient2;
        }
        kotlin.jvm.internal.t.B("billingClient");
        return null;
    }

    public final void init(@NotNull Context context) {
        kotlin.jvm.internal.t.j(context, "context");
        Log.d("BillingManager2", "init BillingManager2");
        synchronized (this) {
            BillingManager billingManager = INSTANCE;
            BillingClient billingClientA = BillingClient.f(context).b().c(new com.android.billingclient.api.p() { // from class: com.narvii.wallet.a
                @Override // com.android.billingclient.api.p
                public final void a(com.android.billingclient.api.h hVar, List list) {
                    BillingManager.init$lambda$1$lambda$0(hVar, list);
                }
            }).a();
            kotlin.jvm.internal.t.i(billingClientA, "build(...)");
            billingManager.setBillingClient(billingClientA);
            billingManager.connectBillingClient();
            w7.l0 l0Var = w7.l0.INSTANCE;
        }
    }

    private BillingManager() {
    }

    public final void connectBillingClient() {
        if (isBillingInitialized() && !getBillingClient().d()) {
            BillingState billingState2 = billingState;
            BillingState.Connecting connecting = BillingState.Connecting.INSTANCE;
            if (!kotlin.jvm.internal.t.e(billingState2, connecting)) {
                billingState = connecting;
                getBillingClient().j(new com.android.billingclient.api.f() { // from class: com.narvii.wallet.BillingManager.connectBillingClient.1
                    @Override // com.android.billingclient.api.f
                    public void onBillingServiceDisconnected() {
                        Log.d("BillingManager2", "Billing service disconnected");
                        BillingManager billingManager = BillingManager.INSTANCE;
                        billingManager.setBillingState(BillingState.Idle.INSTANCE);
                        if (BillingManager.retryConnection) {
                            BillingManager.retryConnection = false;
                            billingManager.connectBillingClient();
                        }
                    }

                    @Override // com.android.billingclient.api.f
                    public void onBillingSetupFinished(@NotNull com.android.billingclient.api.h billingResult) {
                        kotlin.jvm.internal.t.j(billingResult, "billingResult");
                        Log.d("BillingManager2", "Billing setup finished " + billingResult.b());
                        BillingManager.INSTANCE.setBillingState(BillingKt.isSuccess(billingResult) ? BillingState.Connected.INSTANCE : BillingState.Idle.INSTANCE);
                        BillingManager._setupFinished.p(billingResult);
                    }
                });
                return;
            }
        }
        Log.d("BillingManager2", "Billing client is not initialized or already connected");
    }
}
