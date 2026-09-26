package com.google.android.exoplayer2.extractor.ts;

import android.net.Uri;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.core.view.InputDeviceCompat;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.v2;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class a0 implements com.google.android.exoplayer2.extractor.l {
    public static final int AUDIO_STREAM = 192;
    public static final int AUDIO_STREAM_MASK = 224;
    public static final com.google.android.exoplayer2.extractor.r FACTORY = new com.google.android.exoplayer2.extractor.r() { // from class: com.google.android.exoplayer2.extractor.ts.z
        @Override // com.google.android.exoplayer2.extractor.r
        public /* synthetic */ com.google.android.exoplayer2.extractor.l[] a(Uri uri, Map map) {
            return com.google.android.exoplayer2.extractor.q.a(this, uri, map);
        }

        @Override // com.google.android.exoplayer2.extractor.r
        public final com.google.android.exoplayer2.extractor.l[] createExtractors() {
            return a0.e();
        }
    };
    private static final long MAX_SEARCH_LENGTH = 1048576;
    private static final long MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND = 8192;
    private static final int MAX_STREAM_ID_PLUS_ONE = 256;
    static final int MPEG_PROGRAM_END_CODE = 441;
    static final int PACKET_START_CODE_PREFIX = 1;
    static final int PACK_START_CODE = 442;
    public static final int PRIVATE_STREAM_1 = 189;
    static final int SYSTEM_HEADER_START_CODE = 443;
    public static final int VIDEO_STREAM = 224;
    public static final int VIDEO_STREAM_MASK = 240;
    private final y durationReader;
    private boolean foundAllTracks;
    private boolean foundAudioTrack;
    private boolean foundVideoTrack;
    private boolean hasOutputSeekMap;
    private long lastTrackPosition;
    private com.google.android.exoplayer2.extractor.n output;

    @Nullable
    private x psBinarySearchSeeker;
    private final com.google.android.exoplayer2.util.c0 psPacketBuffer;
    private final SparseArray<a> psPayloadReaders;
    private final l0 timestampAdjuster;

    private static final class a {
        private static final int PES_SCRATCH_SIZE = 64;
        private boolean dtsFlag;
        private int extendedHeaderLength;
        private final m pesPayloadReader;
        private final com.google.android.exoplayer2.util.b0 pesScratch = new com.google.android.exoplayer2.util.b0(new byte[64]);
        private boolean ptsFlag;
        private boolean seenFirstDts;
        private long timeUs;
        private final l0 timestampAdjuster;

        public void d() {
            this.seenFirstDts = false;
            this.pesPayloadReader.seek();
        }

        private void b() {
            this.pesScratch.r(8);
            this.ptsFlag = this.pesScratch.g();
            this.dtsFlag = this.pesScratch.g();
            this.pesScratch.r(6);
            this.extendedHeaderLength = this.pesScratch.h(8);
        }

        private void c() {
            this.timeUs = 0L;
            if (this.ptsFlag) {
                this.pesScratch.r(4);
                long jH = ((long) this.pesScratch.h(3)) << 30;
                this.pesScratch.r(1);
                long jH2 = jH | ((long) (this.pesScratch.h(15) << 15));
                this.pesScratch.r(1);
                long jH3 = jH2 | ((long) this.pesScratch.h(15));
                this.pesScratch.r(1);
                if (!this.seenFirstDts && this.dtsFlag) {
                    this.pesScratch.r(4);
                    long jH4 = ((long) this.pesScratch.h(3)) << 30;
                    this.pesScratch.r(1);
                    long jH5 = jH4 | ((long) (this.pesScratch.h(15) << 15));
                    this.pesScratch.r(1);
                    long jH6 = jH5 | ((long) this.pesScratch.h(15));
                    this.pesScratch.r(1);
                    this.timestampAdjuster.b(jH6);
                    this.seenFirstDts = true;
                }
                this.timeUs = this.timestampAdjuster.b(jH3);
            }
        }

        public void a(com.google.android.exoplayer2.util.c0 c0Var) throws v2 {
            c0Var.j(this.pesScratch.data, 0, 3);
            this.pesScratch.p(0);
            b();
            c0Var.j(this.pesScratch.data, 0, this.extendedHeaderLength);
            this.pesScratch.p(0);
            c();
            this.pesPayloadReader.b(this.timeUs, 4);
            this.pesPayloadReader.c(c0Var);
            this.pesPayloadReader.packetFinished();
        }

        public a(m mVar, l0 l0Var) {
            this.pesPayloadReader = mVar;
            this.timestampAdjuster = l0Var;
        }
    }

    public a0() {
        this(new l0(0L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.android.exoplayer2.extractor.l[] e() {
        return new com.google.android.exoplayer2.extractor.l[]{new a0()};
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void d(com.google.android.exoplayer2.extractor.n nVar) {
        this.output = nVar;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void release() {
    }

    public a0(l0 l0Var) {
        this.timestampAdjuster = l0Var;
        this.psPacketBuffer = new com.google.android.exoplayer2.util.c0(4096);
        this.psPayloadReaders = new SparseArray<>();
        this.durationReader = new y();
    }

    private void f(long j6) {
        if (this.hasOutputSeekMap) {
            return;
        }
        this.hasOutputSeekMap = true;
        if (this.durationReader.c() == -9223372036854775807L) {
            this.output.h(new com.google.android.exoplayer2.extractor.b0.b(this.durationReader.c()));
            return;
        }
        x xVar = new x(this.durationReader.d(), this.durationReader.c(), j6);
        this.psBinarySearchSeeker = xVar;
        this.output.h(xVar.b());
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean b(com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        byte[] bArr = new byte[14];
        mVar.peekFully(bArr, 0, 14);
        if (PACK_START_CODE != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        mVar.advancePeekPosition(bArr[13] & 7);
        mVar.peekFully(bArr, 0, 3);
        return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int c(com.google.android.exoplayer2.extractor.m mVar, com.google.android.exoplayer2.extractor.a0 a0Var) throws IOException {
        m nVar;
        com.google.android.exoplayer2.util.a.i(this.output);
        long length = mVar.getLength();
        if (length != -1 && !this.durationReader.e()) {
            return this.durationReader.g(mVar, a0Var);
        }
        f(length);
        x xVar = this.psBinarySearchSeeker;
        if (xVar != null && xVar.d()) {
            return this.psBinarySearchSeeker.c(mVar, a0Var);
        }
        mVar.resetPeekPosition();
        long peekPosition = length != -1 ? length - mVar.getPeekPosition() : -1L;
        if ((peekPosition != -1 && peekPosition < 4) || !mVar.peekFully(this.psPacketBuffer.d(), 0, 4, true)) {
            return -1;
        }
        this.psPacketBuffer.P(0);
        int iN = this.psPacketBuffer.n();
        if (iN == MPEG_PROGRAM_END_CODE) {
            return -1;
        }
        if (iN == PACK_START_CODE) {
            mVar.peekFully(this.psPacketBuffer.d(), 0, 10);
            this.psPacketBuffer.P(9);
            mVar.skipFully((this.psPacketBuffer.D() & 7) + 14);
            return 0;
        }
        if (iN == SYSTEM_HEADER_START_CODE) {
            mVar.peekFully(this.psPacketBuffer.d(), 0, 2);
            this.psPacketBuffer.P(0);
            mVar.skipFully(this.psPacketBuffer.J() + 6);
            return 0;
        }
        if (((iN & InputDeviceCompat.SOURCE_ANY) >> 8) != 1) {
            mVar.skipFully(1);
            return 0;
        }
        int i10 = iN & 255;
        a aVar = this.psPayloadReaders.get(i10);
        if (!this.foundAllTracks) {
            if (aVar == null) {
                if (i10 == 189) {
                    nVar = new c();
                    this.foundAudioTrack = true;
                    this.lastTrackPosition = mVar.getPosition();
                } else if ((iN & 224) == 192) {
                    nVar = new t();
                    this.foundAudioTrack = true;
                    this.lastTrackPosition = mVar.getPosition();
                } else if ((iN & 240) == 224) {
                    nVar = new n();
                    this.foundVideoTrack = true;
                    this.lastTrackPosition = mVar.getPosition();
                } else {
                    nVar = null;
                }
                if (nVar != null) {
                    nVar.d(this.output, new i0.d(i10, 256));
                    aVar = new a(nVar, this.timestampAdjuster);
                    this.psPayloadReaders.put(i10, aVar);
                }
            }
            if (mVar.getPosition() > ((this.foundAudioTrack && this.foundVideoTrack) ? this.lastTrackPosition + 8192 : 1048576L)) {
                this.foundAllTracks = true;
                this.output.endTracks();
            }
        }
        mVar.peekFully(this.psPacketBuffer.d(), 0, 2);
        this.psPacketBuffer.P(0);
        int iJ = this.psPacketBuffer.J() + 6;
        if (aVar == null) {
            mVar.skipFully(iJ);
        } else {
            this.psPacketBuffer.L(iJ);
            mVar.readFully(this.psPacketBuffer.d(), 0, iJ);
            this.psPacketBuffer.P(6);
            aVar.a(this.psPacketBuffer);
            com.google.android.exoplayer2.util.c0 c0Var = this.psPacketBuffer;
            c0Var.O(c0Var.b());
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002c  */
    @Override // com.google.android.exoplayer2.extractor.l
    public void seek(long j6, long j10) {
        boolean z6 = this.timestampAdjuster.e() == -9223372036854775807L;
        if (!z6) {
            long jC = this.timestampAdjuster.c();
            if (jC != -9223372036854775807L && jC != 0 && jC != j10) {
                this.timestampAdjuster.g(j10);
            }
        } else if (z6) {
            this.timestampAdjuster.g(j10);
        }
        x xVar = this.psBinarySearchSeeker;
        if (xVar != null) {
            xVar.h(j10);
        }
        for (int i10 = 0; i10 < this.psPayloadReaders.size(); i10++) {
            this.psPayloadReaders.valueAt(i10).d();
        }
    }
}
