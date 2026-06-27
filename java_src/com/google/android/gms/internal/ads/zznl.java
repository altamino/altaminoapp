package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zznl implements zznu {
    private final int length;
    private final long zzack;
    private final int[] zzahp;
    private final long[] zzahq;
    private final long[] zzahr;
    private final long[] zzahs;

    public zznl(int[] iArr, long[] jArr, long[] jArr2, long[] jArr3) {
        this.zzahp = iArr;
        this.zzahq = jArr;
        this.zzahr = jArr2;
        this.zzahs = jArr3;
        this.length = iArr.length;
        int i = this.length;
        if (i > 0) {
            this.zzack = jArr2[i - 1] + jArr3[i - 1];
        } else {
            this.zzack = 0L;
        }
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final boolean zzfc() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final long getDurationUs() {
        return this.zzack;
    }

    @Override // com.google.android.gms.internal.ads.zznu
    public final long zzdq(long j) {
        return this.zzahq[zzsy.zza(this.zzahs, j, true, true)];
    }
}
