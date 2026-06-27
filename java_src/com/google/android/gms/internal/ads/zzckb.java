package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzckb implements zzcjv<zzbnf> {
    private final Executor zzffv;
    private final zzcxv zzfjp;
    private final zzcdn zzfqh;
    private final zzboc zzfzo;
    private final zzbam<zzcxm, zzayb> zzfzp;
    private final Context zzlj;

    public zzckb(zzboc zzbocVar, Context context, Executor executor, zzcdn zzcdnVar, zzcxv zzcxvVar, zzbam<zzcxm, zzayb> zzbamVar) {
        this.zzlj = context;
        this.zzfzo = zzbocVar;
        this.zzffv = executor;
        this.zzfqh = zzcdnVar;
        this.zzfjp = zzcxvVar;
        this.zzfzp = zzbamVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final boolean zza(zzcxu zzcxuVar, zzcxm zzcxmVar) {
        zzcxq zzcxqVar = zzcxmVar.zzgke;
        return (zzcxqVar == null || zzcxqVar.zzdkp == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final zzbbh<zzbnf> zzb(final zzcxu zzcxuVar, final zzcxm zzcxmVar) {
        return zzbar.zza(zzbar.zzm(null), new zzbal(this, zzcxuVar, zzcxmVar) { // from class: com.google.android.gms.internal.ads.zzckc
            private final zzcxm zzfhm;
            private final zzcxu zzfra;
            private final zzckb zzfzq;

            {
                this.zzfzq = this;
                this.zzfra = zzcxuVar;
                this.zzfhm = zzcxmVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return this.zzfzq.zza(this.zzfra, this.zzfhm, obj);
            }
        }, this.zzffv);
    }

    final /* synthetic */ void zzm(zzbgz zzbgzVar) {
        zzbgzVar.zzaac();
        zzbhq zzbhqVarZzyb = zzbgzVar.zzyb();
        zzacd zzacdVar = this.zzfjp.zzgla;
        if (zzacdVar == null || zzbhqVarZzyb == null) {
            return;
        }
        zzbhqVarZzyb.zzb(zzacdVar);
    }

    final /* synthetic */ zzbbh zza(zzcxu zzcxuVar, zzcxm zzcxmVar, Object obj) throws Exception {
        zzcxn zzcxnVar;
        zzyd zzydVarZza = zzcxy.zza(this.zzlj, zzcxmVar.zzgkg);
        final zzbgz zzbgzVarZzc = this.zzfqh.zzc(zzydVarZza);
        zzbgzVarZzc.zzat(zzcxmVar.zzdok);
        zzboc zzbocVar = this.zzfzo;
        zzbpr zzbprVar = new zzbpr(zzcxuVar, zzcxmVar, null);
        zzcec zzcecVar = new zzcec(this.zzlj, zzbgzVarZzc.getView(), this.zzfzp.apply(zzcxmVar));
        zzbgzVarZzc.getClass();
        zzbpb zzbpbVarZzn = zzckd.zzn(zzbgzVarZzc);
        if (zzydVarZza.zzchh) {
            zzcxnVar = new zzcxn(-3, 0, true);
        } else {
            zzcxnVar = new zzcxn(zzydVarZza.width, zzydVarZza.height, false);
        }
        final zzbng zzbngVarZza = zzbocVar.zza(zzbprVar, new zzbnk(zzcecVar, zzbgzVarZzc, zzbpbVarZzn, zzcxnVar));
        zzbngVarZza.zzady().zzb(zzbgzVarZzc, false);
        zzbngVarZza.zzadg().zza(new zzbrw(zzbgzVarZzc) { // from class: com.google.android.gms.internal.ads.zzcke
            private final zzbgz zzemf;

            {
                this.zzemf = zzbgzVarZzc;
            }

            @Override // com.google.android.gms.internal.ads.zzbrw
            public final void onAdImpression() {
                zzbgz zzbgzVar = this.zzemf;
                if (zzbgzVar.zzaai() != null) {
                    zzbgzVar.zzaai().zzabd();
                }
            }
        }, zzbbm.zzeaf);
        zzbngVarZza.zzady();
        zzcxq zzcxqVar = zzcxmVar.zzgke;
        zzbbh<?> zzbbhVarZza = zzcdp.zza(zzbgzVarZzc, zzcxqVar.zzdkn, zzcxqVar.zzdkp);
        if (zzcxmVar.zzdpc) {
            zzbgzVarZzc.getClass();
            zzbbhVarZza.zza(zzckf.zzo(zzbgzVarZzc), this.zzffv);
        }
        zzbbhVarZza.zza(new Runnable(this, zzbgzVarZzc) { // from class: com.google.android.gms.internal.ads.zzckg
            private final zzbgz zzfrw;
            private final zzckb zzfzq;

            {
                this.zzfzq = this;
                this.zzfrw = zzbgzVarZzc;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzfzq.zzm(this.zzfrw);
            }
        }, this.zzffv);
        return zzbar.zza(zzbbhVarZza, new zzbam(zzbngVarZza) { // from class: com.google.android.gms.internal.ads.zzckh
            private final zzbng zzfzr;

            {
                this.zzfzr = zzbngVarZza;
            }

            @Override // com.google.android.gms.internal.ads.zzbam
            public final Object apply(Object obj2) {
                return this.zzfzr.zzadx();
            }
        }, zzbbm.zzeaf);
    }
}
