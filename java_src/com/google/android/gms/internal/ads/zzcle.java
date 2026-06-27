package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcle implements zzcjv<zzbvx> {
    private final zzbai zzbrc;
    private final Executor zzffv;
    private final zzcxv zzfjp;
    private final zzcdn zzfqh;
    private final zzbws zzfzy;
    private final Context zzlj;

    public zzcle(Context context, zzbai zzbaiVar, zzcxv zzcxvVar, Executor executor, zzbws zzbwsVar, zzcdn zzcdnVar) {
        this.zzlj = context;
        this.zzfjp = zzcxvVar;
        this.zzfzy = zzbwsVar;
        this.zzffv = executor;
        this.zzbrc = zzbaiVar;
        this.zzfqh = zzcdnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final boolean zza(zzcxu zzcxuVar, zzcxm zzcxmVar) {
        zzcxq zzcxqVar = zzcxmVar.zzgke;
        return (zzcxqVar == null || zzcxqVar.zzdkp == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final zzbbh<zzbvx> zzb(final zzcxu zzcxuVar, final zzcxm zzcxmVar) {
        final zzced zzcedVar = new zzced();
        zzbbh<zzbvx> zzbbhVarZza = zzbar.zza(zzbar.zzm(null), new zzbal(this, zzcxmVar, zzcedVar, zzcxuVar) { // from class: com.google.android.gms.internal.ads.zzclf
            private final zzcle zzgan;
            private final zzcxm zzgao;
            private final zzced zzgap;
            private final zzcxu zzgaq;

            {
                this.zzgan = this;
                this.zzgao = zzcxmVar;
                this.zzgap = zzcedVar;
                this.zzgaq = zzcxuVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return this.zzgan.zza(this.zzgao, this.zzgap, this.zzgaq, obj);
            }
        }, this.zzffv);
        zzbbhVarZza.zza(zzclg.zza(zzcedVar), this.zzffv);
        return zzbbhVarZza;
    }

    final /* synthetic */ zzbbh zza(final zzcxm zzcxmVar, zzced zzcedVar, zzcxu zzcxuVar, Object obj) throws Exception {
        final zzbgz zzbgzVarZzc = this.zzfqh.zzc(this.zzfjp.zzdll);
        zzbgzVarZzc.zzat(zzcxmVar.zzdok);
        zzcedVar.zza(this.zzlj, zzbgzVarZzc.getView());
        final zzbbr zzbbrVar = new zzbbr();
        final zzbvy zzbvyVarZza = this.zzfzy.zza(new zzbpr(zzcxuVar, zzcxmVar, null), new zzbvz(new zzbwz(this, zzbgzVarZzc, zzcxmVar, zzbbrVar) { // from class: com.google.android.gms.internal.ads.zzclh
            private final zzbbr zzbxg;
            private final zzcxm zzfhm;
            private final zzbgz zzfrw;
            private final zzcle zzgan;

            {
                this.zzgan = this;
                this.zzfrw = zzbgzVarZzc;
                this.zzfhm = zzcxmVar;
                this.zzbxg = zzbbrVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbwz
            public final void zza(boolean z, Context context) {
                this.zzgan.zza(this.zzfrw, this.zzfhm, this.zzbxg, z, context);
            }
        }, zzbgzVarZzc));
        zzbbrVar.set(zzbvyVarZza);
        zzbvyVarZza.zzadg().zza(new zzbrw(zzbgzVarZzc) { // from class: com.google.android.gms.internal.ads.zzcli
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
        zzbvyVarZza.zzady().zzb(zzbgzVarZzc, true);
        zzbvyVarZza.zzady();
        zzcxq zzcxqVar = zzcxmVar.zzgke;
        zzbbh<?> zzbbhVarZza = zzcdp.zza(zzbgzVarZzc, zzcxqVar.zzdkn, zzcxqVar.zzdkp);
        if (zzcxmVar.zzdpc) {
            zzbbhVarZza.zza(new Runnable(zzbgzVarZzc) { // from class: com.google.android.gms.internal.ads.zzclj
                private final zzbgz zzemf;

                {
                    this.zzemf = zzbgzVarZzc;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzemf.zzaav();
                }
            }, this.zzffv);
        }
        zzbbhVarZza.zza(new Runnable(zzbgzVarZzc) { // from class: com.google.android.gms.internal.ads.zzclk
            private final zzbgz zzemf;

            {
                this.zzemf = zzbgzVarZzc;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzemf.zzaac();
            }
        }, this.zzffv);
        return zzbar.zza(zzbbhVarZza, new zzbam(zzbvyVarZza) { // from class: com.google.android.gms.internal.ads.zzcll
            private final zzbvy zzgas;

            {
                this.zzgas = zzbvyVarZza;
            }

            @Override // com.google.android.gms.internal.ads.zzbam
            public final Object apply(Object obj2) {
                return this.zzgas.zzaee();
            }
        }, zzbbm.zzeaf);
    }

    final /* synthetic */ void zza(zzbgz zzbgzVar, zzcxm zzcxmVar, zzbbr zzbbrVar, boolean z, Context context) {
        try {
            zzbgzVar.zzaq(true);
            com.google.android.gms.ads.internal.zzk.zzlg();
            com.google.android.gms.ads.internal.zzh zzhVar = new com.google.android.gms.ads.internal.zzh(false, zzaxi.zzax(this.zzlj), false, 0.0f, -1, z, zzcxmVar.zzgkl, false);
            com.google.android.gms.ads.internal.zzk.zzlf();
            com.google.android.gms.ads.internal.overlay.zzm.zza(context, new AdOverlayInfoParcel(null, ((zzbvy) zzbbrVar.get()).zzaeg(), null, zzbgzVar, zzcxmVar.zzgkm, this.zzbrc, zzcxmVar.zzdno, zzhVar), true);
        } catch (Exception unused) {
        }
    }
}
