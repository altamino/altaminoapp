package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final class zzcj implements Callable<List<zzr>> {
    private final /* synthetic */ String zzao;
    private final /* synthetic */ String zzav;
    private final /* synthetic */ String zzdk;
    private final /* synthetic */ zzca zzot;

    zzcj(zzca zzcaVar, String str, String str2, String str3) {
        this.zzot = zzcaVar;
        this.zzdk = str;
        this.zzao = str2;
        this.zzav = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzr> call() throws Exception {
        this.zzot.zzkt.zzgf();
        return this.zzot.zzkt.zzdo().zzb(this.zzdk, this.zzao, this.zzav);
    }
}
