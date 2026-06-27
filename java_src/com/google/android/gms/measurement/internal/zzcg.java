package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final class zzcg implements Callable<List<zzgc>> {
    private final /* synthetic */ String zzao;
    private final /* synthetic */ String zzav;
    private final /* synthetic */ zzm zzos;
    private final /* synthetic */ zzca zzot;

    zzcg(zzca zzcaVar, zzm zzmVar, String str, String str2) {
        this.zzot = zzcaVar;
        this.zzos = zzmVar;
        this.zzao = str;
        this.zzav = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzgc> call() throws Exception {
        this.zzot.zzkt.zzgf();
        return this.zzot.zzkt.zzdo().zza(this.zzos.packageName, this.zzao, this.zzav);
    }
}
