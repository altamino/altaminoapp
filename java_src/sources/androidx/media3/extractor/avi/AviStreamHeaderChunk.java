package androidx.media3.extractor.avi;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes7.dex */
final class AviStreamHeaderChunk implements AviChunk {
    private static final String TAG = "AviStreamHeaderChunk";
    public final int initialFrames;
    public final int length;
    public final int rate;
    public final int scale;
    public final int streamType;
    public final int suggestedBufferSize;

    @Override // androidx.media3.extractor.avi.AviChunk
    public int getType() {
        return 1752331379;
    }

    public long a() {
        return Util.X0(this.length, ((long) this.scale) * 1000000, this.rate);
    }

    public int b() {
        int i10 = this.streamType;
        if (i10 == 1935960438) {
            return 2;
        }
        if (i10 == 1935963489) {
            return 1;
        }
        if (i10 == 1937012852) {
            return 3;
        }
        Log.i(TAG, "Found unsupported streamType fourCC: " + Integer.toHexString(this.streamType));
        return -1;
    }

    private AviStreamHeaderChunk(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.streamType = i10;
        this.initialFrames = i11;
        this.scale = i12;
        this.rate = i13;
        this.length = i14;
        this.suggestedBufferSize = i15;
    }

    public static AviStreamHeaderChunk c(ParsableByteArray parsableByteArray) {
        int iU = parsableByteArray.u();
        parsableByteArray.V(12);
        int iU2 = parsableByteArray.u();
        int iU3 = parsableByteArray.u();
        int iU4 = parsableByteArray.u();
        parsableByteArray.V(4);
        int iU5 = parsableByteArray.u();
        int iU6 = parsableByteArray.u();
        parsableByteArray.V(8);
        return new AviStreamHeaderChunk(iU, iU2, iU3, iU4, iU5, iU6);
    }
}
