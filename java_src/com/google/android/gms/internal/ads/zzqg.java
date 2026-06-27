package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
final class zzqg implements zzqw {
    private final int track;
    private final /* synthetic */ zzpz zzbis;

    public zzqg(zzpz zzpzVar, int i) {
        this.zzbis = zzpzVar;
        this.track = i;
    }

    @Override // com.google.android.gms.internal.ads.zzqw
    public final boolean isReady() {
        return this.zzbis.zzbd(this.track);
    }

    @Override // com.google.android.gms.internal.ads.zzqw
    public final void zzjb() throws IOException {
        this.zzbis.zzjb();
    }

    @Override // com.google.android.gms.internal.ads.zzqw
    public final int zzb(zzlj zzljVar, zznd zzndVar, boolean z) {
        return this.zzbis.zza(this.track, zzljVar, zzndVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzqw
    public final void zzeo(long j) {
        this.zzbis.zzf(this.track, j);
    }
}
