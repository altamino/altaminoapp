package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcnl implements zzcjv<zzcdb> {
    private final zzbai zzbrc;
    private final Executor zzffv;
    private final zzcxv zzfjp;
    private final zzcdn zzfqh;
    private final zzcdf zzgbq;
    private final Context zzlj;

    public zzcnl(Context context, zzbai zzbaiVar, zzcxv zzcxvVar, Executor executor, zzcdf zzcdfVar, zzcdn zzcdnVar) {
        this.zzlj = context;
        this.zzfjp = zzcxvVar;
        this.zzgbq = zzcdfVar;
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
    public final zzbbh<zzcdb> zzb(final zzcxu zzcxuVar, final zzcxm zzcxmVar) {
        final zzced zzcedVar = new zzced();
        zzbbh<zzcdb> zzbbhVarZza = zzbar.zza(zzbar.zzm(null), new zzbal(this, zzcxmVar, zzcedVar, zzcxuVar) { // from class: com.google.android.gms.internal.ads.zzcnm
            private final zzcxm zzgao;
            private final zzced zzgap;
            private final zzcxu zzgaq;
            private final zzcnl zzgbv;

            {
                this.zzgbv = this;
                this.zzgao = zzcxmVar;
                this.zzgap = zzcedVar;
                this.zzgaq = zzcxuVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return this.zzgbv.zzb(this.zzgao, this.zzgap, this.zzgaq, obj);
            }
        }, this.zzffv);
        zzbbhVarZza.zza(zzcnn.zza(zzcedVar), this.zzffv);
        return zzbbhVarZza;
    }

    final /* synthetic */ zzbbh zzb(final zzcxm zzcxmVar, zzced zzcedVar, zzcxu zzcxuVar, Object obj) throws Exception {
        final zzbgz zzbgzVarZzc = this.zzfqh.zzc(this.zzfjp.zzdll);
        zzbgzVarZzc.zzat(zzcxmVar.zzdok);
        zzcedVar.zza(this.zzlj, zzbgzVarZzc.getView());
        final zzbbr zzbbrVar = new zzbbr();
        final zzcdc zzcdcVarZza = this.zzgbq.zza(new zzbpr(zzcxuVar, zzcxmVar, null), new zzcdd(new zzbwz(this, zzbgzVarZzc, zzcxmVar, zzbbrVar) { // from class: com.google.android.gms.internal.ads.zzcnq
            private final zzbbr zzbxg;
            private final zzcxm zzfhm;
            private final zzbgz zzfrw;
            private final zzcnl zzgbv;

            {
                this.zzgbv = this;
                this.zzfrw = zzbgzVarZzc;
                this.zzfhm = zzcxmVar;
                this.zzbxg = zzbbrVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbwz
            public final void zza(boolean z, Context context) {
                this.zzgbv.zzb(this.zzfrw, this.zzfhm, this.zzbxg, z, context);
            }
        }, zzbgzVarZzc));
        zzbbrVar.set(zzcdcVarZza);
        zzahx.zza(zzbgzVarZzc, zzcdcVarZza.zzaek());
        zzcdcVarZza.zzadg().zza(new zzbrw(zzbgzVarZzc) { // from class: com.google.android.gms.internal.ads.zzcnr
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
        zzcdcVarZza.zzady().zzb(zzbgzVarZzc, true);
        zzcdcVarZza.zzady();
        zzcxq zzcxqVar = zzcxmVar.zzgke;
        zzbbh<?> zzbbhVarZza = zzcdp.zza(zzbgzVarZzc, zzcxqVar.zzdkn, zzcxqVar.zzdkp);
        if (zzcxmVar.zzdpc) {
            zzbbhVarZza.zza(new Runnable(zzbgzVarZzc) { // from class: com.google.android.gms.internal.ads.zzcns
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
        zzbbhVarZza.zza(new Runnable(zzbgzVarZzc) { // from class: com.google.android.gms.internal.ads.zzcnt
            private final zzbgz zzemf;

            {
                this.zzemf = zzbgzVarZzc;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzemf.zzaac();
            }
        }, this.zzffv);
        return zzbar.zza(zzbbhVarZza, new zzbam(zzcdcVarZza) { // from class: com.google.android.gms.internal.ads.zzcnu
            private final zzcdc zzgbw;

            {
                this.zzgbw = zzcdcVarZza;
            }

            @Override // com.google.android.gms.internal.ads.zzbam
            public final Object apply(Object obj2) {
                return this.zzgbw.zzaej();
            }
        }, zzbbm.zzeaf);
    }

    final /* synthetic */ void zzb(zzbgz zzbgzVar, zzcxm zzcxmVar, zzbbr zzbbrVar, boolean z, Context context) {
        zzbgz zzbgzVar2;
        try {
            zzcdc zzcdcVar = (zzcdc) zzbbrVar.get();
            if (zzbgzVar.zzaaw()) {
                if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcoq)).booleanValue()) {
                    final zzbgz zzbgzVarZzc = this.zzfqh.zzc(this.zzfjp.zzdll);
                    zzahx.zza(zzbgzVarZzc, zzcdcVar.zzaek());
                    final zzced zzcedVar = new zzced();
                    zzcedVar.zza(this.zzlj, zzbgzVarZzc.getView());
                    zzcdcVar.zzady().zzb(zzbgzVarZzc, true);
                    zzbgzVarZzc.zzaai().zza(new zzbij(zzcedVar, zzbgzVarZzc) { // from class: com.google.android.gms.internal.ads.zzcno
                        private final zzbgz zzfrw;
                        private final zzced zzgar;

                        {
                            this.zzgar = zzcedVar;
                            this.zzfrw = zzbgzVarZzc;
                        }

                        @Override // com.google.android.gms.internal.ads.zzbij
                        public final void zzae(boolean z2) {
                            zzced zzcedVar2 = this.zzgar;
                            zzbgz zzbgzVar3 = this.zzfrw;
                            zzcedVar2.zzajo();
                            zzbgzVar3.zzaac();
                            zzbgzVar3.zzaai().zzabd();
                        }
                    });
                    zzbii zzbiiVarZzaai = zzbgzVarZzc.zzaai();
                    zzbgzVarZzc.getClass();
                    zzbiiVarZzaai.zza(zzcnp.zzp(zzbgzVarZzc));
                    zzbgzVarZzc.zzb(zzcxmVar.zzgke.zzdkn, zzcxmVar.zzgke.zzdkp, null);
                    zzbgzVar2 = zzbgzVarZzc;
                }
                zzbgzVar2.zzaq(true);
                com.google.android.gms.ads.internal.zzk.zzlg();
                com.google.android.gms.ads.internal.zzh zzhVar = new com.google.android.gms.ads.internal.zzh(false, zzaxi.zzax(this.zzlj), false, 0.0f, -1, z, zzcxmVar.zzgkl, zzcxmVar.zzbrm);
                com.google.android.gms.ads.internal.zzk.zzlf();
                com.google.android.gms.ads.internal.overlay.zzm.zza(context, new AdOverlayInfoParcel(null, ((zzcdc) zzbbrVar.get()).zzaeg(), null, zzbgzVar2, zzcxmVar.zzgkm, this.zzbrc, zzcxmVar.zzdno, zzhVar), true);
            }
            zzbgzVar2 = zzbgzVar;
            zzbgzVar2.zzaq(true);
            com.google.android.gms.ads.internal.zzk.zzlg();
            com.google.android.gms.ads.internal.zzh zzhVar2 = new com.google.android.gms.ads.internal.zzh(false, zzaxi.zzax(this.zzlj), false, 0.0f, -1, z, zzcxmVar.zzgkl, zzcxmVar.zzbrm);
            com.google.android.gms.ads.internal.zzk.zzlf();
            com.google.android.gms.ads.internal.overlay.zzm.zza(context, new AdOverlayInfoParcel(null, ((zzcdc) zzbbrVar.get()).zzaeg(), null, zzbgzVar2, zzcxmVar.zzgkm, this.zzbrc, zzcxmVar.zzdno, zzhVar2), true);
        } catch (Exception unused) {
        }
    }
}
