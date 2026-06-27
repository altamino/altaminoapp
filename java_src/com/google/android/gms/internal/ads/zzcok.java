package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;

/* loaded from: classes2.dex */
public final class zzcok implements zzcjv<zzbnf> {
    private final zzboc zzfzo;
    private final zzczt zzgbk;
    private final zzbbl zzgci;
    private final Context zzgcn;
    private final zzado zzgco;

    public zzcok(Context context, zzboc zzbocVar, zzczt zzcztVar, zzbbl zzbblVar, zzado zzadoVar) {
        this.zzgcn = context;
        this.zzfzo = zzbocVar;
        this.zzgbk = zzcztVar;
        this.zzgci = zzbblVar;
        this.zzgco = zzadoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final boolean zza(zzcxu zzcxuVar, zzcxm zzcxmVar) {
        zzcxq zzcxqVar;
        return (this.zzgco == null || (zzcxqVar = zzcxmVar.zzgke) == null || zzcxqVar.zzdkp == null) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final zzbbh<zzbnf> zzb(zzcxu zzcxuVar, zzcxm zzcxmVar) {
        zzbng zzbngVarZza = this.zzfzo.zza(new zzbpr(zzcxuVar, zzcxmVar, null), new zzcon(this, new View(this.zzgcn), null, zzcol.zzgcp, zzcxmVar.zzgkg.get(0)));
        zzcoo zzcooVarZzaea = zzbngVarZza.zzaea();
        zzcxq zzcxqVar = zzcxmVar.zzgke;
        final zzadj zzadjVar = new zzadj(zzcooVarZzaea, zzcxqVar.zzdkn, zzcxqVar.zzdkp);
        return this.zzgbk.zzv(zzczs.CUSTOM_RENDER_SYN).zza(new zzczd(this, zzadjVar) { // from class: com.google.android.gms.internal.ads.zzcom
            private final zzcok zzgcq;
            private final zzadj zzgcr;

            {
                this.zzgcq = this;
                this.zzgcr = zzadjVar;
            }

            @Override // com.google.android.gms.internal.ads.zzczd
            public final void run() throws Exception {
                this.zzgcq.zza(this.zzgcr);
            }
        }, this.zzgci).zzx(zzczs.CUSTOM_RENDER_ACK).zzb(zzbar.zzm(zzbngVarZza.zzadx())).zzane();
    }

    final /* synthetic */ void zza(zzadj zzadjVar) throws Exception {
        this.zzgco.zza(zzadjVar);
    }
}
