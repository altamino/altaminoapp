package com.google.android.exoplayer2.extractor.ogg;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.s;
import com.google.android.exoplayer2.extractor.t;
import com.google.android.exoplayer2.extractor.u;
import com.google.android.exoplayer2.extractor.v;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
final class b extends i {
    private static final byte AUDIO_PACKET_TYPE = -1;
    private static final int FRAME_HEADER_SAMPLE_NUMBER_OFFSET = 4;

    @Nullable
    private a flacOggSeeker;

    @Nullable
    private v streamMetadata;

    private static final class a implements g {
        private long firstFrameOffset = -1;
        private long pendingSeekGranule = -1;
        private v.a seekTable;
        private v streamMetadata;

        @Override // com.google.android.exoplayer2.extractor.ogg.g
        public long a(m mVar) {
            long j6 = this.pendingSeekGranule;
            if (j6 < 0) {
                return -1L;
            }
            long j10 = -(j6 + 2);
            this.pendingSeekGranule = -1L;
            return j10;
        }

        public void b(long j6) {
            this.firstFrameOffset = j6;
        }

        @Override // com.google.android.exoplayer2.extractor.ogg.g
        public b0 createSeekMap() {
            com.google.android.exoplayer2.util.a.g(this.firstFrameOffset != -1);
            return new u(this.streamMetadata, this.firstFrameOffset);
        }

        @Override // com.google.android.exoplayer2.extractor.ogg.g
        public void startSeek(long j6) {
            long[] jArr = this.seekTable.pointSampleNumbers;
            this.pendingSeekGranule = jArr[o0.i(jArr, j6, true, true)];
        }

        public a(v vVar, v.a aVar) {
            this.streamMetadata = vVar;
            this.seekTable = aVar;
        }
    }

    private static boolean o(byte[] bArr) {
        return bArr[0] == -1;
    }

    b() {
    }

    private int n(c0 c0Var) {
        int i10 = (c0Var.d()[2] & 255) >> 4;
        if (i10 == 6 || i10 == 7) {
            c0Var.Q(4);
            c0Var.K();
        }
        int iJ = s.j(c0Var, i10);
        c0Var.P(0);
        return iJ;
    }

    public static boolean p(c0 c0Var) {
        if (c0Var.a() >= 5 && c0Var.D() == 127 && c0Var.F() == 1179402563) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.i
    protected long f(c0 c0Var) {
        if (!o(c0Var.d())) {
            return -1L;
        }
        return n(c0Var);
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.i
    protected boolean i(c0 c0Var, long j6, i.b bVar) {
        byte[] bArrD = c0Var.d();
        v vVar = this.streamMetadata;
        if (vVar == null) {
            v vVar2 = new v(bArrD, 17);
            this.streamMetadata = vVar2;
            bVar.format = vVar2.h(Arrays.copyOfRange(bArrD, 9, c0Var.f()), null);
            return true;
        }
        if ((bArrD[0] & 127) == 3) {
            v.a aVarG = t.g(c0Var);
            v vVarC = vVar.c(aVarG);
            this.streamMetadata = vVarC;
            this.flacOggSeeker = new a(vVarC, aVarG);
            return true;
        }
        if (!o(bArrD)) {
            return true;
        }
        a aVar = this.flacOggSeeker;
        if (aVar != null) {
            aVar.b(j6);
            bVar.oggSeeker = this.flacOggSeeker;
        }
        com.google.android.exoplayer2.util.a.e(bVar.format);
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.ogg.i
    protected void l(boolean z6) {
        super.l(z6);
        if (z6) {
            this.streamMetadata = null;
            this.flacOggSeeker = null;
        }
    }
}
