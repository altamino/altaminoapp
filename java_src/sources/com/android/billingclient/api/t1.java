package com.android.billingclient.api;

import android.content.Context;
import android.content.IntentFilter;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class t1 {
    private final Context zza;
    private final s1 zzb;

    /* JADX WARN: Multi-variable type inference failed */
    t1(Context context, v0 v0Var, n0 n0Var) {
        this.zza = context;
        this.zzb = new s1(this, null, n0Var, 0 == true ? 1 : 0);
    }

    t1(Context context, p pVar, d dVar, n0 n0Var) {
        this.zza = context;
        this.zzb = new s1(this, pVar, dVar, n0Var, null);
    }

    @Nullable
    final v0 c() {
        s1.a(this.zzb);
        return null;
    }

    @Nullable
    final p d() {
        return this.zzb.zzb;
    }

    final void e() {
        this.zzb.d(this.zza);
    }

    final void f(boolean z6) {
        IntentFilter intentFilter = new IntentFilter("com.android.vending.billing.PURCHASES_UPDATED");
        this.zza.getApplicationContext().getPackageName();
        intentFilter.addAction("com.android.vending.billing.ALTERNATIVE_BILLING");
        this.zzb.c(this.zza, intentFilter, null, null);
    }
}
