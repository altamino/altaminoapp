package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzauu implements zzban<Void> {
    private final /* synthetic */ zzbbh zzdrq;

    zzauu(zzauq zzauqVar, zzbbh zzbbhVar) {
        this.zzdrq = zzbbhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
        zzauq.zzdqz.remove(this.zzdrq);
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final /* synthetic */ void zzk(Void r2) {
        zzauq.zzdqz.remove(this.zzdrq);
    }
}
