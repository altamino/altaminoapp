package com.narvii.wallet;

import com.android.billingclient.api.Purchase;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class PurchasesUpdate {

    @NotNull
    private final com.android.billingclient.api.h billingResult;

    @Nullable
    private final List<Purchase> purchases;

    @NotNull
    public final com.android.billingclient.api.h getBillingResult() {
        return this.billingResult;
    }

    @Nullable
    public final List<Purchase> getPurchases() {
        return this.purchases;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public PurchasesUpdate(@NotNull com.android.billingclient.api.h billingResult, @Nullable List<? extends Purchase> list) {
        kotlin.jvm.internal.t.j(billingResult, "billingResult");
        this.billingResult = billingResult;
        this.purchases = list;
    }

    public final boolean isSuccess() {
        return BillingKt.isSuccess(this.billingResult);
    }

    public final boolean userCanceled() {
        return BillingKt.userCanceled(this.billingResult);
    }
}
