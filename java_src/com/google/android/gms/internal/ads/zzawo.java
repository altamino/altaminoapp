package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzawo extends zzawv {
    private final /* synthetic */ zzawm zzdtx;

    zzawo(zzawm zzawmVar) {
        this.zzdtx = zzawmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzawv
    public final void zzto() {
        zzacx zzacxVar = new zzacx(this.zzdtx.zzlj, this.zzdtx.zzbtc.zzbsx);
        synchronized (this.zzdtx.lock) {
            try {
                com.google.android.gms.ads.internal.zzk.zzlp();
                zzada.zza(this.zzdtx.zzdtq, zzacxVar);
            } catch (IllegalArgumentException e) {
                zzbad.zzd("Cannot config CSI reporter.", e);
            }
        }
    }
}
