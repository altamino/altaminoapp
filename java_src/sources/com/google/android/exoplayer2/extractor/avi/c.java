package com.google.android.exoplayer2.extractor.avi;

import com.google.android.exoplayer2.util.c0;

/* JADX INFO: loaded from: classes6.dex */
final class c implements a {
    private static final int AVIF_HAS_INDEX = 16;
    public final int flags;
    public final int frameDurationUs;
    public final int streams;
    public final int totalFrames;

    public boolean a() {
        return (this.flags & 16) == 16;
    }

    @Override // com.google.android.exoplayer2.extractor.avi.a
    public int getType() {
        return 1751742049;
    }

    private c(int i10, int i11, int i12, int i13) {
        this.frameDurationUs = i10;
        this.flags = i11;
        this.totalFrames = i12;
        this.streams = i13;
    }

    public static c b(c0 c0Var) {
        int iQ = c0Var.q();
        c0Var.Q(8);
        int iQ2 = c0Var.q();
        int iQ3 = c0Var.q();
        c0Var.Q(4);
        int iQ4 = c0Var.q();
        c0Var.Q(12);
        return new c(iQ, iQ2, iQ3, iQ4);
    }
}
