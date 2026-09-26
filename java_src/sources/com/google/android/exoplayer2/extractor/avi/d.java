package com.google.android.exoplayer2.extractor.avi;

import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.util.t;

/* JADX INFO: loaded from: classes6.dex */
final class d implements a {
    private static final String TAG = "AviStreamHeaderChunk";
    public final int initialFrames;
    public final int length;
    public final int rate;
    public final int scale;
    public final int streamType;
    public final int suggestedBufferSize;

    @Override // com.google.android.exoplayer2.extractor.avi.a
    public int getType() {
        return 1752331379;
    }

    public long a() {
        return o0.F0(this.length, ((long) this.scale) * 1000000, this.rate);
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
        t.i(TAG, "Found unsupported streamType fourCC: " + Integer.toHexString(this.streamType));
        return -1;
    }

    private d(int i10, int i11, int i12, int i13, int i14, int i15) {
        this.streamType = i10;
        this.initialFrames = i11;
        this.scale = i12;
        this.rate = i13;
        this.length = i14;
        this.suggestedBufferSize = i15;
    }

    public static d c(c0 c0Var) {
        int iQ = c0Var.q();
        c0Var.Q(12);
        int iQ2 = c0Var.q();
        int iQ3 = c0Var.q();
        int iQ4 = c0Var.q();
        c0Var.Q(4);
        int iQ5 = c0Var.q();
        int iQ6 = c0Var.q();
        c0Var.Q(8);
        return new d(iQ, iQ2, iQ3, iQ4, iQ5, iQ6);
    }
}
