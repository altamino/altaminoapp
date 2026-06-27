package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcor<AdT> implements zzcjv<AdT> {
    private final zzczt zzgbk;
    private final zzbbl zzgci;
    private final zzado zzgco;
    private final zzcou<AdT> zzgcv;

    public zzcor(zzczt zzcztVar, zzbbl zzbblVar, zzado zzadoVar, zzcou<AdT> zzcouVar) {
        this.zzgbk = zzcztVar;
        this.zzgci = zzbblVar;
        this.zzgco = zzadoVar;
        this.zzgcv = zzcouVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final boolean zza(zzcxu zzcxuVar, zzcxm zzcxmVar) {
        zzcxq zzcxqVar;
        return (this.zzgco == null || (zzcxqVar = zzcxmVar.zzgke) == null || zzcxqVar.zzdkp == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final zzbbh<AdT> zzb(zzcxu zzcxuVar, zzcxm zzcxmVar) {
        zzbbr zzbbrVar = new zzbbr();
        zzcoz zzcozVar = new zzcoz();
        zzcozVar.zza(new zzcot(this, zzbbrVar, zzcxuVar, zzcxmVar, zzcozVar));
        zzcxq zzcxqVar = zzcxmVar.zzgke;
        final zzadj zzadjVar = new zzadj(zzcozVar, zzcxqVar.zzdkn, zzcxqVar.zzdkp);
        return this.zzgbk.zzv(zzczs.CUSTOM_RENDER_SYN).zza(new zzczd(this, zzadjVar) { // from class: com.google.android.gms.internal.ads.zzcos
            private final zzadj zzgcr;
            private final zzcor zzgcw;

            {
                this.zzgcw = this;
                this.zzgcr = zzadjVar;
            }

            @Override // com.google.android.gms.internal.ads.zzczd
            public final void run() throws Exception {
                this.zzgcw.zzb(this.zzgcr);
            }
        }, this.zzgci).zzx(zzczs.CUSTOM_RENDER_ACK).zzb(zzbbrVar).zzane();
    }

    final /* synthetic */ void zzb(zzadj zzadjVar) throws Exception {
        this.zzgco.zza(zzadjVar);
    }
}
