package com.google.android.exoplayer2.extractor.avi;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.extractor.a0;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.j;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.x;
import com.google.android.exoplayer2.v2;
import com.google.common.collect.l1;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class b implements l {
    private static final int AVIIF_KEYFRAME = 16;
    public static final int FOURCC_AVI_ = 541677121;
    public static final int FOURCC_JUNK = 1263424842;
    public static final int FOURCC_LIST = 1414744396;
    public static final int FOURCC_RIFF = 1179011410;
    public static final int FOURCC_auds = 1935963489;
    public static final int FOURCC_avih = 1751742049;
    public static final int FOURCC_hdrl = 1819436136;
    public static final int FOURCC_idx1 = 829973609;
    public static final int FOURCC_movi = 1769369453;
    public static final int FOURCC_strf = 1718776947;
    public static final int FOURCC_strh = 1752331379;
    public static final int FOURCC_strl = 1819440243;
    public static final int FOURCC_strn = 1852994675;
    public static final int FOURCC_txts = 1937012852;
    public static final int FOURCC_vids = 1935960438;
    private static final long RELOAD_MINIMUM_SEEK_DISTANCE = 262144;
    private static final int STATE_FINDING_IDX1_HEADER = 4;
    private static final int STATE_FINDING_MOVI_HEADER = 3;
    private static final int STATE_READING_HDRL_BODY = 2;
    private static final int STATE_READING_HDRL_HEADER = 1;
    private static final int STATE_READING_IDX1_BODY = 5;
    private static final int STATE_READING_SAMPLES = 6;
    private static final int STATE_SKIPPING_TO_HDRL = 0;
    private static final String TAG = "AviExtractor";
    private com.google.android.exoplayer2.extractor.avi.c aviHeader;

    @Nullable
    private e currentChunkReader;
    private int idx1BodySize;
    private long pendingReposition;
    private boolean seekMapHasBeenOutput;
    private int state;
    private final c0 scratch = new c0(12);
    private final c chunkHeaderHolder = new c();
    private n extractorOutput = new j();
    private e[] chunkReaders = new e[0];
    private long moviStart = -1;
    private long moviEnd = -1;
    private int hdrlSize = -1;
    private long durationUs = -9223372036854775807L;

    /* JADX INFO: renamed from: com.google.android.exoplayer2.extractor.avi.b$b, reason: collision with other inner class name */
    private class C0170b implements b0 {
        private final long durationUs;

        @Override // com.google.android.exoplayer2.extractor.b0
        public long getDurationUs() {
            return this.durationUs;
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public boolean isSeekable() {
            return true;
        }

        public C0170b(long j6) {
            this.durationUs = j6;
        }

        @Override // com.google.android.exoplayer2.extractor.b0
        public b0.a getSeekPoints(long j6) {
            b0.a aVarI = b.this.chunkReaders[0].i(j6);
            for (int i10 = 1; i10 < b.this.chunkReaders.length; i10++) {
                b0.a aVarI2 = b.this.chunkReaders[i10].i(j6);
                if (aVarI2.first.position < aVarI.first.position) {
                    aVarI = aVarI2;
                }
            }
            return aVarI;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void d(n nVar) {
        this.state = 0;
        this.extractorOutput = nVar;
        this.pendingReposition = -1L;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void release() {
    }

    private static class c {
        public int chunkType;
        public int listType;
        public int size;

        private c() {
        }

        public void a(c0 c0Var) {
            this.chunkType = c0Var.q();
            this.size = c0Var.q();
            this.listType = 0;
        }

        public void b(c0 c0Var) throws v2 {
            a(c0Var);
            if (this.chunkType == 1414744396) {
                this.listType = c0Var.q();
                return;
            }
            throw v2.a("LIST expected, found: " + this.chunkType, null);
        }
    }

    @Nullable
    private e f(int i10) {
        for (e eVar : this.chunkReaders) {
            if (eVar.j(i10)) {
                return eVar;
            }
        }
        return null;
    }

    @Nullable
    private e j(f fVar, int i10) {
        d dVar = (d) fVar.b(d.class);
        g gVar = (g) fVar.b(g.class);
        if (dVar == null) {
            t.i(TAG, "Missing Stream Header");
            return null;
        }
        if (gVar == null) {
            t.i(TAG, "Missing Stream Format");
            return null;
        }
        long jA = dVar.a();
        a2 a2Var = gVar.format;
        a2.b bVarB = a2Var.b();
        bVarB.R(i10);
        int i11 = dVar.suggestedBufferSize;
        if (i11 != 0) {
            bVarB.W(i11);
        }
        h hVar = (h) fVar.b(h.class);
        if (hVar != null) {
            bVarB.U(hVar.name);
        }
        int i12 = x.i(a2Var.sampleMimeType);
        if (i12 != 1 && i12 != 2) {
            return null;
        }
        e0 e0VarTrack = this.extractorOutput.track(i10, i12);
        e0VarTrack.d(bVarB.E());
        e eVar = new e(i10, i12, jA, dVar.length, e0VarTrack);
        this.durationUs = jA;
        return eVar;
    }

    private boolean l(m mVar, a0 a0Var) throws IOException {
        boolean z6;
        if (this.pendingReposition != -1) {
            long position = mVar.getPosition();
            long j6 = this.pendingReposition;
            if (j6 < position || j6 > 262144 + position) {
                a0Var.position = j6;
                z6 = true;
            } else {
                mVar.skipFully((int) (j6 - position));
                z6 = false;
            }
        } else {
            z6 = false;
        }
        this.pendingReposition = -1L;
        return z6;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean b(m mVar) throws IOException {
        mVar.peekFully(this.scratch.d(), 0, 12);
        this.scratch.P(0);
        if (this.scratch.q() != 1179011410) {
            return false;
        }
        this.scratch.Q(4);
        return this.scratch.q() == 541677121;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void seek(long j6, long j10) {
        this.pendingReposition = -1L;
        this.currentChunkReader = null;
        for (e eVar : this.chunkReaders) {
            eVar.o(j6);
        }
        if (j6 != 0) {
            this.state = 6;
        } else if (this.chunkReaders.length == 0) {
            this.state = 0;
        } else {
            this.state = 3;
        }
    }

    private static void e(m mVar) throws IOException {
        if ((mVar.getPosition() & 1) == 1) {
            mVar.skipFully(1);
        }
    }

    private void g(c0 c0Var) throws IOException {
        f fVarC = f.c(1819436136, c0Var);
        if (fVarC.getType() == 1819436136) {
            com.google.android.exoplayer2.extractor.avi.c cVar = (com.google.android.exoplayer2.extractor.avi.c) fVarC.b(com.google.android.exoplayer2.extractor.avi.c.class);
            if (cVar != null) {
                this.aviHeader = cVar;
                this.durationUs = ((long) cVar.totalFrames) * ((long) cVar.frameDurationUs);
                ArrayList arrayList = new ArrayList();
                l1<com.google.android.exoplayer2.extractor.avi.a> it = fVarC.children.iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    com.google.android.exoplayer2.extractor.avi.a next = it.next();
                    if (next.getType() == 1819440243) {
                        int i11 = i10 + 1;
                        e eVarJ = j((f) next, i10);
                        if (eVarJ != null) {
                            arrayList.add(eVarJ);
                        }
                        i10 = i11;
                    }
                }
                this.chunkReaders = (e[]) arrayList.toArray(new e[0]);
                this.extractorOutput.endTracks();
                return;
            }
            throw v2.a("AviHeader not found", null);
        }
        throw v2.a("Unexpected header list type " + fVarC.getType(), null);
    }

    private void h(c0 c0Var) {
        long jI = i(c0Var);
        while (c0Var.a() >= 16) {
            int iQ = c0Var.q();
            int iQ2 = c0Var.q();
            long jQ = ((long) c0Var.q()) + jI;
            c0Var.q();
            e eVarF = f(iQ);
            if (eVarF != null) {
                if ((iQ2 & 16) == 16) {
                    eVarF.b(jQ);
                }
                eVarF.k();
            }
        }
        for (e eVar : this.chunkReaders) {
            eVar.c();
        }
        this.seekMapHasBeenOutput = true;
        this.extractorOutput.h(new C0170b(this.durationUs));
    }

    private long i(c0 c0Var) {
        long j6 = 0;
        if (c0Var.a() < 16) {
            return 0L;
        }
        int iE = c0Var.e();
        c0Var.Q(8);
        long jQ = c0Var.q();
        long j10 = this.moviStart;
        if (jQ <= j10) {
            j6 = j10 + 8;
        }
        c0Var.P(iE);
        return j6;
    }

    private int k(m mVar) throws IOException {
        if (mVar.getPosition() >= this.moviEnd) {
            return -1;
        }
        e eVar = this.currentChunkReader;
        if (eVar != null) {
            if (eVar.m(mVar)) {
                this.currentChunkReader = null;
            }
        } else {
            e(mVar);
            int i10 = 12;
            mVar.peekFully(this.scratch.d(), 0, 12);
            this.scratch.P(0);
            int iQ = this.scratch.q();
            if (iQ == 1414744396) {
                this.scratch.P(8);
                if (this.scratch.q() != 1769369453) {
                    i10 = 8;
                }
                mVar.skipFully(i10);
                mVar.resetPeekPosition();
                return 0;
            }
            int iQ2 = this.scratch.q();
            if (iQ == 1263424842) {
                this.pendingReposition = mVar.getPosition() + ((long) iQ2) + 8;
                return 0;
            }
            mVar.skipFully(8);
            mVar.resetPeekPosition();
            e eVarF = f(iQ);
            if (eVarF == null) {
                this.pendingReposition = mVar.getPosition() + ((long) iQ2);
                return 0;
            }
            eVarF.n(iQ2);
            this.currentChunkReader = eVarF;
        }
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int c(m mVar, a0 a0Var) throws IOException {
        if (l(mVar, a0Var)) {
            return 1;
        }
        switch (this.state) {
            case 0:
                if (b(mVar)) {
                    mVar.skipFully(12);
                    this.state = 1;
                    return 0;
                }
                throw v2.a("AVI Header List not found", null);
            case 1:
                mVar.readFully(this.scratch.d(), 0, 12);
                this.scratch.P(0);
                this.chunkHeaderHolder.b(this.scratch);
                c cVar = this.chunkHeaderHolder;
                if (cVar.listType == 1819436136) {
                    this.hdrlSize = cVar.size;
                    this.state = 2;
                    return 0;
                }
                throw v2.a("hdrl expected, found: " + this.chunkHeaderHolder.listType, null);
            case 2:
                int i10 = this.hdrlSize - 4;
                c0 c0Var = new c0(i10);
                mVar.readFully(c0Var.d(), 0, i10);
                g(c0Var);
                this.state = 3;
                return 0;
            case 3:
                if (this.moviStart != -1) {
                    long position = mVar.getPosition();
                    long j6 = this.moviStart;
                    if (position != j6) {
                        this.pendingReposition = j6;
                        return 0;
                    }
                }
                mVar.peekFully(this.scratch.d(), 0, 12);
                mVar.resetPeekPosition();
                this.scratch.P(0);
                this.chunkHeaderHolder.a(this.scratch);
                int iQ = this.scratch.q();
                int i11 = this.chunkHeaderHolder.chunkType;
                if (i11 == 1179011410) {
                    mVar.skipFully(12);
                    return 0;
                }
                if (i11 == 1414744396 && iQ == 1769369453) {
                    long position2 = mVar.getPosition();
                    this.moviStart = position2;
                    this.moviEnd = position2 + ((long) this.chunkHeaderHolder.size) + 8;
                    if (!this.seekMapHasBeenOutput) {
                        if (((com.google.android.exoplayer2.extractor.avi.c) com.google.android.exoplayer2.util.a.e(this.aviHeader)).a()) {
                            this.state = 4;
                            this.pendingReposition = this.moviEnd;
                            return 0;
                        }
                        this.extractorOutput.h(new b0.b(this.durationUs));
                        this.seekMapHasBeenOutput = true;
                    }
                    this.pendingReposition = mVar.getPosition() + 12;
                    this.state = 6;
                    return 0;
                }
                this.pendingReposition = mVar.getPosition() + ((long) this.chunkHeaderHolder.size) + 8;
                return 0;
            case 4:
                mVar.readFully(this.scratch.d(), 0, 8);
                this.scratch.P(0);
                int iQ2 = this.scratch.q();
                int iQ3 = this.scratch.q();
                if (iQ2 == 829973609) {
                    this.state = 5;
                    this.idx1BodySize = iQ3;
                } else {
                    this.pendingReposition = mVar.getPosition() + ((long) iQ3);
                }
                return 0;
            case 5:
                c0 c0Var2 = new c0(this.idx1BodySize);
                mVar.readFully(c0Var2.d(), 0, this.idx1BodySize);
                h(c0Var2);
                this.state = 6;
                this.pendingReposition = this.moviStart;
                return 0;
            case 6:
                return k(mVar);
            default:
                throw new AssertionError();
        }
    }
}
