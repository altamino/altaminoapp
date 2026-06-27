package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzczl<O> {
    private final E zzgme;
    private final String zzgmf;
    private final List<zzbbh<?>> zzgmj;
    final /* synthetic */ zzczf zzgmk;
    private final zzbbh<?> zzgmm;
    private final zzbbh<O> zzgmn;

    private zzczl(zzczf zzczfVar, E e, String str, zzbbh<?> zzbbhVar, List<zzbbh<?>> list, zzbbh<O> zzbbhVar2) {
        this.zzgmk = zzczfVar;
        this.zzgme = e;
        this.zzgmf = str;
        this.zzgmm = zzbbhVar;
        this.zzgmj = list;
        this.zzgmn = zzbbhVar2;
    }

    public final zzczl<O> zzfy(String str) {
        return new zzczl<>(this.zzgmk, this.zzgme, str, this.zzgmm, this.zzgmj, this.zzgmn);
    }

    public final <O2> zzczl<O2> zzb(final zzczc<O, O2> zzczcVar) {
        return zza(new zzbal(zzczcVar) { // from class: com.google.android.gms.internal.ads.zzczm
            private final zzczc zzgmo;

            {
                this.zzgmo = zzczcVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return zzbar.zzm(this.zzgmo.apply(obj));
            }
        });
    }

    public final <O2> zzczl<O2> zza(zzbal<O, O2> zzbalVar) {
        return zza(zzbalVar, this.zzgmk.zzfqw);
    }

    private final <O2> zzczl<O2> zza(zzbal<O, O2> zzbalVar, Executor executor) {
        return new zzczl<>(this.zzgmk, this.zzgme, this.zzgmf, this.zzgmm, this.zzgmj, zzbar.zza(this.zzgmn, zzbalVar, executor));
    }

    public final <O2> zzczl<O2> zzb(final zzbbh<O2> zzbbhVar) {
        return zza(new zzbal(zzbbhVar) { // from class: com.google.android.gms.internal.ads.zzczn
            private final zzbbh zzdzo;

            {
                this.zzdzo = zzbbhVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return this.zzdzo;
            }
        }, zzbbm.zzeaf);
    }

    public final <T extends Throwable> zzczl<O> zza(Class<T> cls, final zzczc<T, O> zzczcVar) {
        return zza(cls, new zzbal(zzczcVar) { // from class: com.google.android.gms.internal.ads.zzczo
            private final zzczc zzgmo;

            {
                this.zzgmo = zzczcVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return zzbar.zzm(this.zzgmo.apply((Throwable) obj));
            }
        });
    }

    public final <T extends Throwable> zzczl<O> zza(Class<T> cls, zzbal<T, O> zzbalVar) {
        zzczf zzczfVar = this.zzgmk;
        return new zzczl<>(zzczfVar, this.zzgme, this.zzgmf, this.zzgmm, this.zzgmj, zzbar.zza(this.zzgmn, cls, zzbalVar, zzczfVar.zzfqw));
    }

    public final zzczl<O> zza(long j, TimeUnit timeUnit) {
        zzczf zzczfVar = this.zzgmk;
        return new zzczl<>(zzczfVar, this.zzgme, this.zzgmf, this.zzgmm, this.zzgmj, zzbar.zza(this.zzgmn, j, timeUnit, zzczfVar.zzfkf));
    }

    public final zzcze<E, O> zzane() {
        E e = this.zzgme;
        String strZzw = this.zzgmf;
        if (strZzw == null) {
            strZzw = this.zzgmk.zzw(e);
        }
        final zzcze<E, O> zzczeVar = new zzcze<>(e, strZzw, this.zzgmn);
        this.zzgmk.zzgmi.zza(zzczeVar);
        this.zzgmm.zza(new Runnable(this, zzczeVar) { // from class: com.google.android.gms.internal.ads.zzczp
            private final zzczl zzgmp;
            private final zzcze zzgmq;

            {
                this.zzgmp = this;
                this.zzgmq = zzczeVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzczl zzczlVar = this.zzgmp;
                zzczlVar.zzgmk.zzgmi.zzb(this.zzgmq);
            }
        }, zzbbm.zzeaf);
        zzbar.zza(zzczeVar, new zzczq(this, zzczeVar), zzbbm.zzeaf);
        return zzczeVar;
    }

    public final zzczl<O> zzx(E e) {
        return this.zzgmk.zza((zzczf) e, (zzbbh) zzane());
    }
}
