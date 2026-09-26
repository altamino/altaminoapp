package com.google.android.exoplayer2.extractor.ts;

import android.net.Uri;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.v2;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class h0 implements com.google.android.exoplayer2.extractor.l {
    private static final long AC3_FORMAT_IDENTIFIER = 1094921523;
    private static final long AC4_FORMAT_IDENTIFIER = 1094921524;
    private static final int BUFFER_SIZE = 9400;
    public static final int DEFAULT_TIMESTAMP_SEARCH_BYTES = 112800;
    private static final long E_AC3_FORMAT_IDENTIFIER = 1161904947;
    public static final com.google.android.exoplayer2.extractor.r FACTORY = new com.google.android.exoplayer2.extractor.r() { // from class: com.google.android.exoplayer2.extractor.ts.g0
        @Override // com.google.android.exoplayer2.extractor.r
        public /* synthetic */ com.google.android.exoplayer2.extractor.l[] a(Uri uri, Map map) {
            return com.google.android.exoplayer2.extractor.q.a(this, uri, map);
        }

        @Override // com.google.android.exoplayer2.extractor.r
        public final com.google.android.exoplayer2.extractor.l[] createExtractors() {
            return h0.v();
        }
    };
    private static final long HEVC_FORMAT_IDENTIFIER = 1212503619;
    private static final int MAX_PID_PLUS_ONE = 8192;
    public static final int MODE_HLS = 2;
    public static final int MODE_MULTI_PMT = 0;
    public static final int MODE_SINGLE_PMT = 1;
    private static final int SNIFF_TS_PACKET_COUNT = 5;
    public static final int TS_PACKET_SIZE = 188;
    private static final int TS_PAT_PID = 0;
    public static final int TS_STREAM_TYPE_AAC_ADTS = 15;
    public static final int TS_STREAM_TYPE_AAC_LATM = 17;
    public static final int TS_STREAM_TYPE_AC3 = 129;
    public static final int TS_STREAM_TYPE_AC4 = 172;
    public static final int TS_STREAM_TYPE_AIT = 257;
    public static final int TS_STREAM_TYPE_DC2_H262 = 128;
    public static final int TS_STREAM_TYPE_DTS = 138;
    public static final int TS_STREAM_TYPE_DVBSUBS = 89;
    public static final int TS_STREAM_TYPE_E_AC3 = 135;
    public static final int TS_STREAM_TYPE_H262 = 2;
    public static final int TS_STREAM_TYPE_H263 = 16;
    public static final int TS_STREAM_TYPE_H264 = 27;
    public static final int TS_STREAM_TYPE_H265 = 36;
    public static final int TS_STREAM_TYPE_HDMV_DTS = 130;
    public static final int TS_STREAM_TYPE_ID3 = 21;
    public static final int TS_STREAM_TYPE_MPA = 3;
    public static final int TS_STREAM_TYPE_MPA_LSF = 4;
    public static final int TS_STREAM_TYPE_SPLICE_INFO = 134;
    public static final int TS_SYNC_BYTE = 71;
    private int bytesSinceLastSync;
    private final SparseIntArray continuityCounters;
    private final f0 durationReader;
    private boolean hasOutputSeekMap;

    @Nullable
    private i0 id3Reader;
    private final int mode;
    private com.google.android.exoplayer2.extractor.n output;
    private final i0.c payloadReaderFactory;
    private int pcrPid;
    private boolean pendingSeekToStart;
    private int remainingPmts;
    private final List<l0> timestampAdjusters;
    private final int timestampSearchBytes;
    private final SparseBooleanArray trackIds;
    private final SparseBooleanArray trackPids;
    private boolean tracksEnded;
    private e0 tsBinarySearchSeeker;
    private final com.google.android.exoplayer2.util.c0 tsPacketBuffer;
    private final SparseArray<i0> tsPayloadReaders;

    private class a implements b0 {
        private final com.google.android.exoplayer2.util.b0 patScratch = new com.google.android.exoplayer2.util.b0(new byte[4]);

        @Override // com.google.android.exoplayer2.extractor.ts.b0
        public void a(l0 l0Var, com.google.android.exoplayer2.extractor.n nVar, i0.d dVar) {
        }

        public a() {
        }

        @Override // com.google.android.exoplayer2.extractor.ts.b0
        public void c(com.google.android.exoplayer2.util.c0 c0Var) {
            if (c0Var.D() != 0 || (c0Var.D() & 128) == 0) {
                return;
            }
            c0Var.Q(6);
            int iA = c0Var.a() / 4;
            for (int i10 = 0; i10 < iA; i10++) {
                c0Var.i(this.patScratch, 4);
                int iH = this.patScratch.h(16);
                this.patScratch.r(3);
                if (iH == 0) {
                    this.patScratch.r(13);
                } else {
                    int iH2 = this.patScratch.h(13);
                    if (h0.this.tsPayloadReaders.get(iH2) == null) {
                        h0.this.tsPayloadReaders.put(iH2, new c0(h0.this.new b(iH2)));
                        h0.j(h0.this);
                    }
                }
            }
            if (h0.this.mode != 2) {
                h0.this.tsPayloadReaders.remove(0);
            }
        }
    }

    private class b implements b0 {
        private static final int TS_PMT_DESC_AC3 = 106;
        private static final int TS_PMT_DESC_AIT = 111;
        private static final int TS_PMT_DESC_DTS = 123;
        private static final int TS_PMT_DESC_DVBSUBS = 89;
        private static final int TS_PMT_DESC_DVB_EXT = 127;
        private static final int TS_PMT_DESC_DVB_EXT_AC4 = 21;
        private static final int TS_PMT_DESC_EAC3 = 122;
        private static final int TS_PMT_DESC_ISO639_LANG = 10;
        private static final int TS_PMT_DESC_REGISTRATION = 5;
        private final int pid;
        private final com.google.android.exoplayer2.util.b0 pmtScratch = new com.google.android.exoplayer2.util.b0(new byte[5]);
        private final SparseArray<i0> trackIdToReaderScratch = new SparseArray<>();
        private final SparseIntArray trackIdToPidScratch = new SparseIntArray();

        @Override // com.google.android.exoplayer2.extractor.ts.b0
        public void a(l0 l0Var, com.google.android.exoplayer2.extractor.n nVar, i0.d dVar) {
        }

        public b(int i10) {
            this.pid = i10;
        }

        @Override // com.google.android.exoplayer2.extractor.ts.b0
        public void c(com.google.android.exoplayer2.util.c0 c0Var) {
            l0 l0Var;
            if (c0Var.D() != 2) {
                return;
            }
            if (h0.this.mode == 1 || h0.this.mode == 2 || h0.this.remainingPmts == 1) {
                l0Var = (l0) h0.this.timestampAdjusters.get(0);
            } else {
                l0Var = new l0(((l0) h0.this.timestampAdjusters.get(0)).c());
                h0.this.timestampAdjusters.add(l0Var);
            }
            if ((c0Var.D() & 128) == 0) {
                return;
            }
            c0Var.Q(1);
            int iJ = c0Var.J();
            int i10 = 3;
            c0Var.Q(3);
            c0Var.i(this.pmtScratch, 2);
            this.pmtScratch.r(3);
            int i11 = 13;
            h0.this.pcrPid = this.pmtScratch.h(13);
            c0Var.i(this.pmtScratch, 2);
            int i12 = 4;
            this.pmtScratch.r(4);
            c0Var.Q(this.pmtScratch.h(12));
            if (h0.this.mode == 2 && h0.this.id3Reader == null) {
                i0.b bVar = new i0.b(21, null, null, o0.EMPTY_BYTE_ARRAY);
                h0 h0Var = h0.this;
                h0Var.id3Reader = h0Var.payloadReaderFactory.a(21, bVar);
                if (h0.this.id3Reader != null) {
                    h0.this.id3Reader.a(l0Var, h0.this.output, new i0.d(iJ, 21, 8192));
                }
            }
            this.trackIdToReaderScratch.clear();
            this.trackIdToPidScratch.clear();
            int iA = c0Var.a();
            while (iA > 0) {
                c0Var.i(this.pmtScratch, 5);
                int iH = this.pmtScratch.h(8);
                this.pmtScratch.r(i10);
                int iH2 = this.pmtScratch.h(i11);
                this.pmtScratch.r(i12);
                int iH3 = this.pmtScratch.h(12);
                i0.b bVarB = b(c0Var, iH3);
                if (iH == 6 || iH == 5) {
                    iH = bVarB.streamType;
                }
                iA -= iH3 + 5;
                int i13 = h0.this.mode == 2 ? iH : iH2;
                if (!h0.this.trackIds.get(i13)) {
                    i0 i0VarA = (h0.this.mode == 2 && iH == 21) ? h0.this.id3Reader : h0.this.payloadReaderFactory.a(iH, bVarB);
                    if (h0.this.mode != 2 || iH2 < this.trackIdToPidScratch.get(i13, 8192)) {
                        this.trackIdToPidScratch.put(i13, iH2);
                        this.trackIdToReaderScratch.put(i13, i0VarA);
                    }
                }
                i10 = 3;
                i12 = 4;
                i11 = 13;
            }
            int size = this.trackIdToPidScratch.size();
            for (int i14 = 0; i14 < size; i14++) {
                int iKeyAt = this.trackIdToPidScratch.keyAt(i14);
                int iValueAt = this.trackIdToPidScratch.valueAt(i14);
                h0.this.trackIds.put(iKeyAt, true);
                h0.this.trackPids.put(iValueAt, true);
                i0 i0VarValueAt = this.trackIdToReaderScratch.valueAt(i14);
                if (i0VarValueAt != null) {
                    if (i0VarValueAt != h0.this.id3Reader) {
                        i0VarValueAt.a(l0Var, h0.this.output, new i0.d(iJ, iKeyAt, 8192));
                    }
                    h0.this.tsPayloadReaders.put(iValueAt, i0VarValueAt);
                }
            }
            if (h0.this.mode == 2) {
                if (h0.this.tracksEnded) {
                    return;
                }
                h0.this.output.endTracks();
                h0.this.remainingPmts = 0;
                h0.this.tracksEnded = true;
                return;
            }
            h0.this.tsPayloadReaders.remove(this.pid);
            h0 h0Var2 = h0.this;
            h0Var2.remainingPmts = h0Var2.mode == 1 ? 0 : h0.this.remainingPmts - 1;
            if (h0.this.remainingPmts == 0) {
                h0.this.output.endTracks();
                h0.this.tracksEnded = true;
            }
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0043  */
        /* JADX WARN: Code duplicated, block: B:24:0x0055  */
        /* JADX WARN: Code duplicated, block: B:27:0x005b  */
        private i0.b b(com.google.android.exoplayer2.util.c0 c0Var, int i10) {
            int iE = c0Var.e();
            int i11 = i10 + iE;
            int i12 = -1;
            String strTrim = null;
            ArrayList arrayList = null;
            while (c0Var.e() < i11) {
                int iD = c0Var.D();
                int iE2 = c0Var.e() + c0Var.D();
                if (iE2 > i11) {
                    break;
                }
                if (iD == 5) {
                    long jF = c0Var.F();
                    if (jF != h0.AC3_FORMAT_IDENTIFIER) {
                        if (jF != h0.E_AC3_FORMAT_IDENTIFIER) {
                            if (jF == h0.AC4_FORMAT_IDENTIFIER) {
                                i12 = 172;
                            } else if (jF == h0.HEVC_FORMAT_IDENTIFIER) {
                                i12 = 36;
                            }
                        } else {
                            i12 = 135;
                        }
                    } else {
                        i12 = 129;
                    }
                } else if (iD == 106) {
                    i12 = 129;
                } else if (iD == 122) {
                    i12 = 135;
                } else if (iD == 127) {
                    if (c0Var.D() == 21) {
                        i12 = 172;
                    }
                } else if (iD == 123) {
                    i12 = 138;
                } else if (iD == 10) {
                    strTrim = c0Var.A(3).trim();
                } else if (iD == 89) {
                    ArrayList arrayList2 = new ArrayList();
                    while (c0Var.e() < iE2) {
                        String strTrim2 = c0Var.A(3).trim();
                        int iD2 = c0Var.D();
                        byte[] bArr = new byte[4];
                        c0Var.j(bArr, 0, 4);
                        arrayList2.add(new i0.a(strTrim2, iD2, bArr));
                    }
                    arrayList = arrayList2;
                    i12 = 89;
                } else if (iD == 111) {
                    i12 = 257;
                }
                c0Var.Q(iE2 - c0Var.e());
            }
            c0Var.P(i11);
            return new i0.b(i12, strTrim, arrayList, Arrays.copyOfRange(c0Var.d(), iE, i11));
        }
    }

    public h0() {
        this(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.android.exoplayer2.extractor.l[] v() {
        return new com.google.android.exoplayer2.extractor.l[]{new h0()};
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void d(com.google.android.exoplayer2.extractor.n nVar) {
        this.output = nVar;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void release() {
    }

    public h0(int i10) {
        this(1, i10, 112800);
    }

    static /* synthetic */ int j(h0 h0Var) {
        int i10 = h0Var.remainingPmts;
        h0Var.remainingPmts = i10 + 1;
        return i10;
    }

    private boolean t(com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        byte[] bArrD = this.tsPacketBuffer.d();
        if (9400 - this.tsPacketBuffer.e() < 188) {
            int iA = this.tsPacketBuffer.a();
            if (iA > 0) {
                System.arraycopy(bArrD, this.tsPacketBuffer.e(), bArrD, 0, iA);
            }
            this.tsPacketBuffer.N(bArrD, iA);
        }
        while (this.tsPacketBuffer.a() < 188) {
            int iF = this.tsPacketBuffer.f();
            int i10 = mVar.read(bArrD, iF, 9400 - iF);
            if (i10 == -1) {
                return false;
            }
            this.tsPacketBuffer.O(iF + i10);
        }
        return true;
    }

    private int u() throws v2 {
        int iE = this.tsPacketBuffer.e();
        int iF = this.tsPacketBuffer.f();
        int iA = j0.a(this.tsPacketBuffer.d(), iE, iF);
        this.tsPacketBuffer.P(iA);
        int i10 = iA + 188;
        if (i10 > iF) {
            int i11 = this.bytesSinceLastSync + (iA - iE);
            this.bytesSinceLastSync = i11;
            if (this.mode == 2 && i11 > 376) {
                throw v2.a("Cannot find sync byte. Most likely not a Transport Stream.", null);
            }
        } else {
            this.bytesSinceLastSync = 0;
        }
        return i10;
    }

    private void w(long j6) {
        if (this.hasOutputSeekMap) {
            return;
        }
        this.hasOutputSeekMap = true;
        if (this.durationReader.b() == -9223372036854775807L) {
            this.output.h(new com.google.android.exoplayer2.extractor.b0.b(this.durationReader.b()));
            return;
        }
        e0 e0Var = new e0(this.durationReader.c(), this.durationReader.b(), j6, this.pcrPid, this.timestampSearchBytes);
        this.tsBinarySearchSeeker = e0Var;
        this.output.h(e0Var.b());
    }

    private void x() {
        this.trackIds.clear();
        this.tsPayloadReaders.clear();
        SparseArray<i0> sparseArrayCreateInitialPayloadReaders = this.payloadReaderFactory.createInitialPayloadReaders();
        int size = sparseArrayCreateInitialPayloadReaders.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.tsPayloadReaders.put(sparseArrayCreateInitialPayloadReaders.keyAt(i10), sparseArrayCreateInitialPayloadReaders.valueAt(i10));
        }
        this.tsPayloadReaders.put(0, new c0(new a()));
        this.id3Reader = null;
    }

    private boolean y(int i10) {
        return this.mode == 2 || this.tracksEnded || !this.trackPids.get(i10, false);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean b(com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        byte[] bArrD = this.tsPacketBuffer.d();
        mVar.peekFully(bArrD, 0, 940);
        for (int i10 = 0; i10 < 188; i10++) {
            int i11 = 0;
            while (true) {
                if (i11 >= 5) {
                    mVar.skipFully(i10);
                    return true;
                }
                if (bArrD[(i11 * 188) + i10] != 71) {
                    break;
                }
                i11++;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int c(com.google.android.exoplayer2.extractor.m mVar, com.google.android.exoplayer2.extractor.a0 a0Var) throws IOException {
        long length = mVar.getLength();
        if (this.tracksEnded) {
            if (length != -1 && this.mode != 2 && !this.durationReader.d()) {
                return this.durationReader.e(mVar, a0Var, this.pcrPid);
            }
            w(length);
            if (this.pendingSeekToStart) {
                this.pendingSeekToStart = false;
                seek(0L, 0L);
                if (mVar.getPosition() != 0) {
                    a0Var.position = 0L;
                    return 1;
                }
            }
            e0 e0Var = this.tsBinarySearchSeeker;
            if (e0Var != null && e0Var.d()) {
                return this.tsBinarySearchSeeker.c(mVar, a0Var);
            }
        }
        if (!t(mVar)) {
            return -1;
        }
        int iU = u();
        int iF = this.tsPacketBuffer.f();
        if (iU > iF) {
            return 0;
        }
        int iN = this.tsPacketBuffer.n();
        if ((8388608 & iN) != 0) {
            this.tsPacketBuffer.P(iU);
            return 0;
        }
        int i10 = (4194304 & iN) != 0 ? 1 : 0;
        int i11 = (2096896 & iN) >> 8;
        boolean z6 = (iN & 32) != 0;
        i0 i0Var = (iN & 16) != 0 ? this.tsPayloadReaders.get(i11) : null;
        if (i0Var == null) {
            this.tsPacketBuffer.P(iU);
            return 0;
        }
        if (this.mode != 2) {
            int i12 = iN & 15;
            int i13 = this.continuityCounters.get(i11, i12 - 1);
            this.continuityCounters.put(i11, i12);
            if (i13 == i12) {
                this.tsPacketBuffer.P(iU);
                return 0;
            }
            if (i12 != ((i13 + 1) & 15)) {
                i0Var.seek();
            }
        }
        if (z6) {
            int iD = this.tsPacketBuffer.D();
            i10 |= (this.tsPacketBuffer.D() & 64) != 0 ? 2 : 0;
            this.tsPacketBuffer.Q(iD - 1);
        }
        boolean z10 = this.tracksEnded;
        if (y(i11)) {
            this.tsPacketBuffer.O(iU);
            i0Var.b(this.tsPacketBuffer, i10);
            this.tsPacketBuffer.O(iF);
        }
        if (this.mode != 2 && !z10 && this.tracksEnded && length != -1) {
            this.pendingSeekToStart = true;
        }
        this.tsPacketBuffer.P(iU);
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0045  */
    @Override // com.google.android.exoplayer2.extractor.l
    public void seek(long j6, long j10) {
        e0 e0Var;
        com.google.android.exoplayer2.util.a.g(this.mode != 2);
        int size = this.timestampAdjusters.size();
        for (int i10 = 0; i10 < size; i10++) {
            l0 l0Var = this.timestampAdjusters.get(i10);
            boolean z6 = l0Var.e() == -9223372036854775807L;
            if (!z6) {
                long jC = l0Var.c();
                if (jC != -9223372036854775807L && jC != 0 && jC != j10) {
                    l0Var.g(j10);
                }
            } else if (z6) {
                l0Var.g(j10);
            }
        }
        if (j10 != 0 && (e0Var = this.tsBinarySearchSeeker) != null) {
            e0Var.h(j10);
        }
        this.tsPacketBuffer.L(0);
        this.continuityCounters.clear();
        for (int i11 = 0; i11 < this.tsPayloadReaders.size(); i11++) {
            this.tsPayloadReaders.valueAt(i11).seek();
        }
        this.bytesSinceLastSync = 0;
    }

    public h0(int i10, int i11, int i12) {
        this(i10, new l0(0L), new j(i11), i12);
    }

    public h0(int i10, l0 l0Var, i0.c cVar) {
        this(i10, l0Var, cVar, 112800);
    }

    public h0(int i10, l0 l0Var, i0.c cVar, int i11) {
        this.payloadReaderFactory = (i0.c) com.google.android.exoplayer2.util.a.e(cVar);
        this.timestampSearchBytes = i11;
        this.mode = i10;
        if (i10 != 1 && i10 != 2) {
            ArrayList arrayList = new ArrayList();
            this.timestampAdjusters = arrayList;
            arrayList.add(l0Var);
        } else {
            this.timestampAdjusters = Collections.singletonList(l0Var);
        }
        this.tsPacketBuffer = new com.google.android.exoplayer2.util.c0(new byte[BUFFER_SIZE], 0);
        this.trackIds = new SparseBooleanArray();
        this.trackPids = new SparseBooleanArray();
        this.tsPayloadReaders = new SparseArray<>();
        this.continuityCounters = new SparseIntArray();
        this.durationReader = new f0(i11);
        this.output = com.google.android.exoplayer2.extractor.n.PLACEHOLDER;
        this.pcrPid = -1;
        x();
    }
}
