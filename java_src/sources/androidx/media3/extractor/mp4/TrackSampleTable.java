package androidx.media3.extractor.mp4;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes9.dex */
final class TrackSampleTable {
    public final long durationUs;
    public final int[] flags;
    public final int maximumSize;
    public final long[] offsets;
    public final int sampleCount;
    public final int[] sizes;
    public final long[] timestampsUs;
    public final Track track;

    public int a(long j6) {
        for (int i10 = Util.i(this.timestampsUs, j6, true, false); i10 >= 0; i10--) {
            if ((this.flags[i10] & 1) != 0) {
                return i10;
            }
        }
        return -1;
    }

    public int b(long j6) {
        for (int iE = Util.e(this.timestampsUs, j6, true, false); iE < this.timestampsUs.length; iE++) {
            if ((this.flags[iE] & 1) != 0) {
                return iE;
            }
        }
        return -1;
    }

    public TrackSampleTable(Track track, long[] jArr, int[] iArr, int i10, long[] jArr2, int[] iArr2, long j6) {
        boolean z6;
        boolean z10;
        if (iArr.length == jArr2.length) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.a(z6);
        if (jArr.length == jArr2.length) {
            z10 = true;
        } else {
            z10 = false;
        }
        Assertions.a(z10);
        Assertions.a(iArr2.length == jArr2.length);
        this.track = track;
        this.offsets = jArr;
        this.sizes = iArr;
        this.maximumSize = i10;
        this.timestampsUs = jArr2;
        this.flags = iArr2;
        this.durationUs = j6;
        this.sampleCount = jArr.length;
        if (iArr2.length > 0) {
            int length = iArr2.length - 1;
            iArr2[length] = iArr2[length] | 536870912;
        }
    }
}
