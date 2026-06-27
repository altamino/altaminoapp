package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zznv implements zznu {
    private final long zzack;

    public zznv(long j) {
        this.zzack = j;
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final long zzdq(long j) {
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final boolean zzfc() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final long getDurationUs() {
        return this.zzack;
    }
}
