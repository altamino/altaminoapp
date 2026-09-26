package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.util.o0;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public final class j implements l.b {
    private static final int MODE_DEFAULT = 0;
    private static final int MODE_DISABLED = 2;
    private static final int MODE_ENABLED = 1;
    private static final String TAG = "DMCodecAdapterFactory";
    private int asynchronousMode = 0;
    private boolean enableSynchronizeCodecInteractionsWithQueueing;

    @Override // com.google.android.exoplayer2.mediacodec.l.b
    public l a(l.a aVar) throws IOException {
        int i10;
        int i11 = o0.SDK_INT;
        if (i11 < 23 || ((i10 = this.asynchronousMode) != 1 && (i10 != 0 || i11 < 31))) {
            return new x.b().a(aVar);
        }
        int i12 = com.google.android.exoplayer2.util.x.i(aVar.format.sampleMimeType);
        com.google.android.exoplayer2.util.t.f(TAG, "Creating an asynchronous MediaCodec adapter for track type " + o0.g0(i12));
        return new b.C0176b(i12, this.enableSynchronizeCodecInteractionsWithQueueing).a(aVar);
    }
}
