package com.android.billingclient.api;

import com.google.android.gms.internal.play_billing.zzaf;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes5.dex */
final class a0 implements Callable {
    final /* synthetic */ String zza;
    final /* synthetic */ o zzb;
    final /* synthetic */ e zzc;

    a0(e eVar, String str, o oVar) {
        this.zzc = eVar;
        this.zza = str;
        this.zzb = oVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() throws Exception {
        g1 g1VarD = e.D(this.zzc, this.zza, 9);
        if (g1VarD.b() != null) {
            this.zzb.a(g1VarD.a(), g1VarD.b());
            return null;
        }
        this.zzb.a(g1VarD.a(), zzaf.zzk());
        return null;
    }
}
