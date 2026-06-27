package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzczh {
    private final E zzgme;
    private final List<zzbbh<?>> zzgmj;
    private final /* synthetic */ zzczf zzgmk;

    private zzczh(zzczf zzczfVar, E e, List<zzbbh<?>> list) {
        this.zzgmk = zzczfVar;
        this.zzgme = e;
        this.zzgmj = list;
    }

    public final <O> zzczl<O> zzc(Callable<O> callable) {
        zzbbc zzbbcVarZzf = zzbar.zzf(this.zzgmj);
        zzbbh zzbbhVarZza = zzbbcVarZzf.zza(zzczi.zzghi, zzbbm.zzeaf);
        zzczf zzczfVar = this.zzgmk;
        return new zzczl<>(zzczfVar, this.zzgme, zzbbhVarZza, this.zzgmj, zzbbcVarZzf.zza(callable, zzczfVar.zzfqw));
    }
}
