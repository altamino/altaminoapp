package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzpc {
    public final int[] zzahp;
    public final long[] zzahq;
    public final int[] zzajr;
    public final int zzand;
    public final long[] zzane;
    public final int zzbet;

    public zzpc(long[] jArr, int[] iArr, int i, long[] jArr2, int[] iArr2) {
        zzsk.checkArgument(iArr.length == jArr2.length);
        zzsk.checkArgument(jArr.length == jArr2.length);
        zzsk.checkArgument(iArr2.length == jArr2.length);
        this.zzahq = jArr;
        this.zzahp = iArr;
        this.zzbet = i;
        this.zzane = jArr2;
        this.zzajr = iArr2;
        this.zzand = jArr.length;
    }

    public final int zzej(long j) {
        for (int iZza = zzsy.zza(this.zzane, j, true, false); iZza >= 0; iZza--) {
            if ((this.zzajr[iZza] & 1) != 0) {
                return iZza;
            }
        }
        return -1;
    }

    public final int zzek(long j) {
        for (int iZzb = zzsy.zzb(this.zzane, j, true, false); iZzb < this.zzane.length; iZzb++) {
            if ((this.zzajr[iZzb] & 1) != 0) {
                return iZzb;
            }
        }
        return -1;
    }
}
