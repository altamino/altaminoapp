package com.google.android.exoplayer2.extractor.ts;

import android.net.Uri;
import com.google.android.exoplayer2.v2;
import java.io.EOFException;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class h implements com.google.android.exoplayer2.extractor.l {
    public static final com.google.android.exoplayer2.extractor.r FACTORY = new com.google.android.exoplayer2.extractor.r() { // from class: com.google.android.exoplayer2.extractor.ts.g
        @Override // com.google.android.exoplayer2.extractor.r
        public /* synthetic */ com.google.android.exoplayer2.extractor.l[] a(Uri uri, Map map) {
            return com.google.android.exoplayer2.extractor.q.a(this, uri, map);
        }

        @Override // com.google.android.exoplayer2.extractor.r
        public final com.google.android.exoplayer2.extractor.l[] createExtractors() {
            return h.h();
        }
    };
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING = 1;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS = 2;
    private static final int MAX_PACKET_SIZE = 2048;
    private static final int MAX_SNIFF_BYTES = 8192;
    private static final int NUM_FRAMES_FOR_AVERAGE_FRAME_SIZE = 1000;
    private int averageFrameSize;
    private com.google.android.exoplayer2.extractor.n extractorOutput;
    private long firstFramePosition;
    private long firstSampleTimestampUs;
    private final int flags;
    private boolean hasCalculatedAverageFrameSize;
    private boolean hasOutputSeekMap;
    private final com.google.android.exoplayer2.util.c0 packetBuffer;
    private final i reader;
    private final com.google.android.exoplayer2.util.c0 scratch;
    private final com.google.android.exoplayer2.util.b0 scratchBits;
    private boolean startedPacket;

    public h() {
        this(0);
    }

    private static int f(int i10, long j6) {
        return (int) ((((long) i10) * 8000000) / j6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.android.exoplayer2.extractor.l[] h() {
        return new com.google.android.exoplayer2.extractor.l[]{new h()};
    }

    private int j(com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        int i10 = 0;
        while (true) {
            mVar.peekFully(this.scratch.d(), 0, 10);
            this.scratch.P(0);
            if (this.scratch.G() != 4801587) {
                break;
            }
            this.scratch.Q(3);
            int iC = this.scratch.C();
            i10 += iC + 10;
            mVar.advancePeekPosition(iC);
        }
        mVar.resetPeekPosition();
        mVar.advancePeekPosition(i10);
        if (this.firstFramePosition == -1) {
            this.firstFramePosition = i10;
        }
        return i10;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void seek(long j6, long j10) {
        this.startedPacket = false;
        this.reader.seek();
        this.firstSampleTimestampUs = j10;
    }

    public h(int i10) {
        this.flags = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.reader = new i(true);
        this.packetBuffer = new com.google.android.exoplayer2.util.c0(2048);
        this.averageFrameSize = -1;
        this.firstFramePosition = -1L;
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(10);
        this.scratch = c0Var;
        this.scratchBits = new com.google.android.exoplayer2.util.b0(c0Var.d());
    }

    private void e(com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        if (this.hasCalculatedAverageFrameSize) {
            return;
        }
        this.averageFrameSize = -1;
        mVar.resetPeekPosition();
        long j6 = 0;
        if (mVar.getPosition() == 0) {
            j(mVar);
        }
        int i10 = 0;
        int i11 = 0;
        while (true) {
            try {
                if (mVar.peekFully(this.scratch.d(), 0, 2, true)) {
                    this.scratch.P(0);
                    if (!i.k(this.scratch.J())) {
                        break;
                    }
                    if (mVar.peekFully(this.scratch.d(), 0, 4, true)) {
                        this.scratchBits.p(14);
                        int iH = this.scratchBits.h(13);
                        if (iH <= 6) {
                            this.hasCalculatedAverageFrameSize = true;
                            throw v2.a("Malformed ADTS stream", null);
                        }
                        j6 += (long) iH;
                        i11++;
                        if (i11 != 1000 && mVar.advancePeekPosition(iH - 6, true)) {
                        }
                    }
                }
            } catch (EOFException unused) {
            }
            i10 = i11;
            break;
        }
        mVar.resetPeekPosition();
        if (i10 > 0) {
            this.averageFrameSize = (int) (j6 / ((long) i10));
        } else {
            this.averageFrameSize = -1;
        }
        this.hasCalculatedAverageFrameSize = true;
    }

    private com.google.android.exoplayer2.extractor.b0 g(long j6, boolean z6) {
        return new com.google.android.exoplayer2.extractor.e(j6, this.firstFramePosition, f(this.averageFrameSize, this.reader.i()), this.averageFrameSize, z6);
    }

    private void i(long j6, boolean z6) {
        if (this.hasOutputSeekMap) {
            return;
        }
        boolean z10 = (this.flags & 1) != 0 && this.averageFrameSize > 0;
        if (z10 && this.reader.i() == -9223372036854775807L && !z6) {
            return;
        }
        if (!z10 || this.reader.i() == -9223372036854775807L) {
            this.extractorOutput.h(new com.google.android.exoplayer2.extractor.b0.b(-9223372036854775807L));
        } else {
            this.extractorOutput.h(g(j6, (this.flags & 2) != 0));
        }
        this.hasOutputSeekMap = true;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int c(com.google.android.exoplayer2.extractor.m mVar, com.google.android.exoplayer2.extractor.a0 a0Var) throws IOException {
        com.google.android.exoplayer2.util.a.i(this.extractorOutput);
        long length = mVar.getLength();
        int i10 = this.flags;
        if ((i10 & 2) != 0 || ((i10 & 1) != 0 && length != -1)) {
            e(mVar);
        }
        int i11 = mVar.read(this.packetBuffer.d(), 0, 2048);
        boolean z6 = i11 == -1;
        i(length, z6);
        if (z6) {
            return -1;
        }
        this.packetBuffer.P(0);
        this.packetBuffer.O(i11);
        if (!this.startedPacket) {
            this.reader.b(this.firstSampleTimestampUs, 4);
            this.startedPacket = true;
        }
        this.reader.c(this.packetBuffer);
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void d(com.google.android.exoplayer2.extractor.n nVar) {
        this.extractorOutput = nVar;
        this.reader.d(nVar, new i0.d(0, 1));
        nVar.endTracks();
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean b(com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        int iJ = j(mVar);
        int i10 = iJ;
        int i11 = 0;
        int i12 = 0;
        do {
            mVar.peekFully(this.scratch.d(), 0, 2);
            this.scratch.P(0);
            if (!i.k(this.scratch.J())) {
                i10++;
                mVar.resetPeekPosition();
                mVar.advancePeekPosition(i10);
            } else {
                i11++;
                if (i11 >= 4 && i12 > 188) {
                    return true;
                }
                mVar.peekFully(this.scratch.d(), 0, 4);
                this.scratchBits.p(14);
                int iH = this.scratchBits.h(13);
                if (iH <= 6) {
                    i10++;
                    mVar.resetPeekPosition();
                    mVar.advancePeekPosition(i10);
                } else {
                    mVar.advancePeekPosition(iH - 6);
                    i12 += iH;
                }
            }
            i11 = 0;
            i12 = 0;
        } while (i10 - iJ < 8192);
        return false;
    }
}
