package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final class zzcq implements Callable<List<zzgc>> {
    private final /* synthetic */ zzm zzos;
    private final /* synthetic */ zzca zzot;

    zzcq(zzca zzcaVar, zzm zzmVar) {
        this.zzot = zzcaVar;
        this.zzos = zzmVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzgc> call() throws Exception {
        this.zzot.zzkt.zzgf();
        return this.zzot.zzkt.zzdo().zzad(this.zzos.packageName);
    }
}
