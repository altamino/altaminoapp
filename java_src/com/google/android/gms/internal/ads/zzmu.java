package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzmu implements zzmn {
    private final /* synthetic */ zzms zzaxw;

    private zzmu(zzms zzmsVar) {
        this.zzaxw = zzmsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzmn
    public final void zzag(int i) {
        this.zzaxw.zzaxq.zzah(i);
        zzms.zzag(i);
    }

    @Override // com.google.android.gms.internal.ads.zzmn
    public final void zzgt() {
        zzms.zzhv();
        zzms.zza(this.zzaxw, true);
    }

    @Override // com.google.android.gms.internal.ads.zzmn
    public final void zze(int i, long j, long j2) {
        this.zzaxw.zzaxq.zzd(i, j, j2);
        zzms.zzc(i, j, j2);
    }
}
