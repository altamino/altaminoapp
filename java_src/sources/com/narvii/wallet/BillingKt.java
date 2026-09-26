package com.narvii.wallet;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class BillingKt {
    public static final boolean isSuccess(@NotNull com.android.billingclient.api.h hVar) {
        kotlin.jvm.internal.t.j(hVar, "<this>");
        return hVar.b() == 0;
    }

    public static final boolean userCanceled(@NotNull com.android.billingclient.api.h hVar) {
        kotlin.jvm.internal.t.j(hVar, "<this>");
        return hVar.b() == 1;
    }
}
