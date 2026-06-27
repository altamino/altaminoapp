package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzccz implements zzahy {
    private final zzbse zzfjg;
    private final zzato zzfsz;
    private final String zzfta;
    private final String zzftb;

    public zzccz(zzbse zzbseVar, zzcxm zzcxmVar) {
        this.zzfjg = zzbseVar;
        this.zzfsz = zzcxmVar.zzdnx;
        this.zzfta = zzcxmVar.zzdeu;
        this.zzftb = zzcxmVar.zzdev;
    }

    @Override // com.google.android.gms.internal.ads.zzahy
    public final void zzrq() {
        this.zzfjg.onRewardedVideoStarted();
    }

    @Override // com.google.android.gms.internal.ads.zzahy
    public final void zza(zzato zzatoVar) {
        String str;
        int i;
        zzato zzatoVar2 = this.zzfsz;
        if (zzatoVar2 != null) {
            zzatoVar = zzatoVar2;
        }
        if (zzatoVar != null) {
            str = zzatoVar.type;
            i = zzatoVar.zzdqm;
        } else {
            str = "";
            i = 1;
        }
        this.zzfjg.zzb(new zzasp(str, i), this.zzfta, this.zzftb);
    }

    @Override // com.google.android.gms.internal.ads.zzahy
    public final void zzrr() {
        this.zzfjg.onRewardedVideoCompleted();
    }
}
