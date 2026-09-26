package com.google.android.exoplayer2.extractor.mp4;

import android.net.Uri;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.extractor.a0;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.f0;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.MotionPhotoMetadata;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.util.y;
import com.google.android.exoplayer2.v2;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public final class k implements com.google.android.exoplayer2.extractor.l, b0 {
    public static final com.google.android.exoplayer2.extractor.r FACTORY = new com.google.android.exoplayer2.extractor.r() { // from class: com.google.android.exoplayer2.extractor.mp4.i
        @Override // com.google.android.exoplayer2.extractor.r
        public /* synthetic */ com.google.android.exoplayer2.extractor.l[] a(Uri uri, Map map) {
            return com.google.android.exoplayer2.extractor.q.a(this, uri, map);
        }

        @Override // com.google.android.exoplayer2.extractor.r
        public final com.google.android.exoplayer2.extractor.l[] createExtractors() {
            return k.n();
        }
    };
    private static final int FILE_TYPE_HEIC = 2;
    private static final int FILE_TYPE_MP4 = 0;
    private static final int FILE_TYPE_QUICKTIME = 1;
    public static final int FLAG_READ_MOTION_PHOTO_METADATA = 2;
    public static final int FLAG_READ_SEF_DATA = 4;
    public static final int FLAG_WORKAROUND_IGNORE_EDIT_LISTS = 1;
    private static final long MAXIMUM_READ_AHEAD_BYTES_STREAM = 10485760;
    private static final long RELOAD_MINIMUM_SEEK_DISTANCE = 262144;
    private static final int STATE_READING_ATOM_HEADER = 0;
    private static final int STATE_READING_ATOM_PAYLOAD = 1;
    private static final int STATE_READING_SAMPLE = 2;
    private static final int STATE_READING_SEF = 3;
    private long[][] accumulatedSampleSizes;

    @Nullable
    private c0 atomData;
    private final c0 atomHeader;
    private int atomHeaderBytesRead;
    private long atomSize;
    private int atomType;
    private final ArrayDeque<com.google.android.exoplayer2.extractor.mp4.a.C0173a> containerAtoms;
    private long durationUs;
    private com.google.android.exoplayer2.extractor.n extractorOutput;
    private int fileType;
    private int firstVideoTrackIndex;
    private final int flags;

    @Nullable
    private MotionPhotoMetadata motionPhotoMetadata;
    private final c0 nalLength;
    private final c0 nalStartCode;
    private int parserState;
    private int sampleBytesRead;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private int sampleTrackIndex;
    private final c0 scratch;
    private final m sefReader;
    private final List<Metadata.Entry> slowMotionMetadataEntries;
    private a[] tracks;

    public k() {
        this(0);
    }

    private static boolean A(int i10) {
        return i10 == 1835296868 || i10 == 1836476516 || i10 == 1751411826 || i10 == 1937011556 || i10 == 1937011827 || i10 == 1937011571 || i10 == 1668576371 || i10 == 1701606260 || i10 == 1937011555 || i10 == 1937011578 || i10 == 1937013298 || i10 == 1937007471 || i10 == 1668232756 || i10 == 1953196132 || i10 == 1718909296 || i10 == 1969517665 || i10 == 1801812339 || i10 == 1768715124;
    }

    private static int g(int i10) {
        if (i10 != 1751476579) {
            return i10 != 1903435808 ? 0 : 1;
        }
        return 2;
    }

    private static long[][] h(a[] aVarArr) {
        long[][] jArr = new long[aVarArr.length][];
        int[] iArr = new int[aVarArr.length];
        long[] jArr2 = new long[aVarArr.length];
        boolean[] zArr = new boolean[aVarArr.length];
        for (int i10 = 0; i10 < aVarArr.length; i10++) {
            jArr[i10] = new long[aVarArr[i10].sampleTable.sampleCount];
            jArr2[i10] = aVarArr[i10].sampleTable.timestampsUs[0];
        }
        long j6 = 0;
        int i11 = 0;
        while (i11 < aVarArr.length) {
            long j10 = Long.MAX_VALUE;
            int i12 = -1;
            for (int i13 = 0; i13 < aVarArr.length; i13++) {
                if (!zArr[i13]) {
                    long j11 = jArr2[i13];
                    if (j11 <= j10) {
                        i12 = i13;
                        j10 = j11;
                    }
                }
            }
            int i14 = iArr[i12];
            long[] jArr3 = jArr[i12];
            jArr3[i14] = j6;
            r rVar = aVarArr[i12].sampleTable;
            j6 += (long) rVar.sizes[i14];
            int i15 = i14 + 1;
            iArr[i12] = i15;
            if (i15 < jArr3.length) {
                jArr2[i12] = rVar.timestampsUs[i15];
            } else {
                zArr[i12] = true;
                i11++;
            }
        }
        return jArr;
    }

    private void i() {
        this.parserState = 0;
        this.atomHeaderBytesRead = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ o m(o oVar) {
        return oVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.android.exoplayer2.extractor.l[] n() {
        return new com.google.android.exoplayer2.extractor.l[]{new k()};
    }

    private static boolean z(int i10) {
        return i10 == 1836019574 || i10 == 1953653099 || i10 == 1835297121 || i10 == 1835626086 || i10 == 1937007212 || i10 == 1701082227 || i10 == 1835365473;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void d(com.google.android.exoplayer2.extractor.n nVar) {
        this.extractorOutput = nVar;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public b0.a getSeekPoints(long j6) {
        return j(j6, -1);
    }

    @Override // com.google.android.exoplayer2.extractor.b0
    public boolean isSeekable() {
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void release() {
    }

    private static final class a {
        public int sampleIndex;
        public final r sampleTable;
        public final o track;
        public final e0 trackOutput;

        @Nullable
        public final f0 trueHdSampleRechunker;

        public a(o oVar, r rVar, e0 e0Var) {
            f0 f0Var;
            this.track = oVar;
            this.sampleTable = rVar;
            this.trackOutput = e0Var;
            if ("audio/true-hd".equals(oVar.format.sampleMimeType)) {
                f0Var = new f0();
            } else {
                f0Var = null;
            }
            this.trueHdSampleRechunker = f0Var;
        }
    }

    public k(int i10) {
        this.flags = i10;
        this.parserState = (i10 & 4) != 0 ? 3 : 0;
        this.sefReader = new m();
        this.slowMotionMetadataEntries = new ArrayList();
        this.atomHeader = new c0(16);
        this.containerAtoms = new ArrayDeque<>();
        this.nalStartCode = new c0(y.NAL_START_CODE);
        this.nalLength = new c0(4);
        this.scratch = new c0();
        this.sampleTrackIndex = -1;
        this.extractorOutput = com.google.android.exoplayer2.extractor.n.PLACEHOLDER;
        this.tracks = new a[0];
    }

    private void B(a aVar, long j6) {
        r rVar = aVar.sampleTable;
        int iA = rVar.a(j6);
        if (iA == -1) {
            iA = rVar.b(j6);
        }
        aVar.sampleIndex = iA;
    }

    private int l(long j6) {
        int i10 = -1;
        int i11 = -1;
        int i12 = 0;
        long j10 = Long.MAX_VALUE;
        boolean z6 = true;
        long j11 = Long.MAX_VALUE;
        boolean z10 = true;
        long j12 = Long.MAX_VALUE;
        while (true) {
            a[] aVarArr = this.tracks;
            if (i12 >= aVarArr.length) {
                break;
            }
            a aVar = aVarArr[i12];
            int i13 = aVar.sampleIndex;
            r rVar = aVar.sampleTable;
            if (i13 != rVar.sampleCount) {
                long j13 = rVar.offsets[i13];
                long j14 = ((long[][]) o0.j(this.accumulatedSampleSizes))[i12][i13];
                long j15 = j13 - j6;
                boolean z11 = j15 < 0 || j15 >= 262144;
                if ((!z11 && z10) || (z11 == z10 && j15 < j12)) {
                    z10 = z11;
                    j12 = j15;
                    i11 = i12;
                    j11 = j14;
                }
                if (j14 < j10) {
                    z6 = z11;
                    i10 = i12;
                    j10 = j14;
                }
            }
            i12++;
        }
        return (j10 == Long.MAX_VALUE || !z6 || j11 < j10 + MAXIMUM_READ_AHEAD_BYTES_STREAM) ? i11 : i10;
    }

    private void p(com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        this.scratch.L(8);
        mVar.peekFully(this.scratch.d(), 0, 8);
        b.e(this.scratch);
        mVar.skipFully(this.scratch.e());
        mVar.resetPeekPosition();
    }

    private void q(long j6) throws v2 {
        while (!this.containerAtoms.isEmpty() && this.containerAtoms.peek().endPosition == j6) {
            com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173aPop = this.containerAtoms.pop();
            if (c0173aPop.type == 1836019574) {
                t(c0173aPop);
                this.containerAtoms.clear();
                this.parserState = 2;
            } else if (!this.containerAtoms.isEmpty()) {
                this.containerAtoms.peek().d(c0173aPop);
            }
        }
        if (this.parserState != 2) {
            i();
        }
    }

    private void r() {
        if (this.fileType != 2 || (this.flags & 2) == 0) {
            return;
        }
        this.extractorOutput.track(0, 4).d(new a2.b().X(this.motionPhotoMetadata == null ? null : new Metadata(this.motionPhotoMetadata)).E());
        this.extractorOutput.endTracks();
        this.extractorOutput.h(new b0.b(-9223372036854775807L));
    }

    private static int s(c0 c0Var) {
        c0Var.P(8);
        int iG = g(c0Var.n());
        if (iG != 0) {
            return iG;
        }
        c0Var.Q(4);
        while (c0Var.a() > 0) {
            int iG2 = g(c0Var.n());
            if (iG2 != 0) {
                return iG2;
            }
        }
        return 0;
    }

    private void t(com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173a) throws v2 {
        Metadata metadata;
        Metadata metadata2;
        int i10;
        ArrayList arrayList = new ArrayList();
        boolean z6 = this.fileType == 1;
        x xVar = new x();
        com.google.android.exoplayer2.extractor.mp4.a.b bVarG = c0173a.g(1969517665);
        if (bVarG != null) {
            Pair<Metadata, Metadata> pairB = b.B(bVarG);
            Metadata metadata3 = (Metadata) pairB.first;
            Metadata metadata4 = (Metadata) pairB.second;
            if (metadata3 != null) {
                xVar.c(metadata3);
            }
            metadata = metadata4;
            metadata2 = metadata3;
        } else {
            metadata = null;
            metadata2 = null;
        }
        com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173aF = c0173a.f(1835365473);
        Metadata metadataN = c0173aF != null ? b.n(c0173aF) : null;
        List<r> listA = b.A(c0173a, xVar, -9223372036854775807L, null, (this.flags & 1) != 0, z6, new com.google.common.base.g() { // from class: com.google.android.exoplayer2.extractor.mp4.j
            @Override // com.google.common.base.g
            public final Object apply(Object obj) {
                return k.m((o) obj);
            }
        });
        int size = listA.size();
        long j6 = -9223372036854775807L;
        long j10 = -9223372036854775807L;
        int i11 = 0;
        int size2 = -1;
        while (i11 < size) {
            r rVar = listA.get(i11);
            if (rVar.sampleCount != 0) {
                o oVar = rVar.track;
                long j11 = oVar.durationUs;
                if (j11 == j6) {
                    j11 = rVar.durationUs;
                }
                long jMax = Math.max(j10, j11);
                a aVar = new a(oVar, rVar, this.extractorOutput.track(i11, oVar.type));
                int i12 = "audio/true-hd".equals(oVar.format.sampleMimeType) ? rVar.maximumSize * 16 : rVar.maximumSize + 30;
                a2.b bVarB = oVar.format.b();
                bVarB.W(i12);
                if (oVar.type == 2 && j11 > 0 && (i10 = rVar.sampleCount) > 1) {
                    bVarB.P(i10 / (j11 / 1000000.0f));
                }
                h.k(oVar.type, xVar, bVarB);
                int i13 = oVar.type;
                Metadata[] metadataArr = new Metadata[2];
                metadataArr[0] = metadata;
                metadataArr[1] = this.slowMotionMetadataEntries.isEmpty() ? null : new Metadata(this.slowMotionMetadataEntries);
                h.l(i13, metadata2, metadataN, bVarB, metadataArr);
                aVar.trackOutput.d(bVarB.E());
                if (oVar.type == 2 && size2 == -1) {
                    size2 = arrayList.size();
                }
                arrayList.add(aVar);
                j10 = jMax;
            }
            i11++;
            listA = listA;
            size = size;
            j6 = -9223372036854775807L;
        }
        this.firstVideoTrackIndex = size2;
        this.durationUs = j10;
        a[] aVarArr = (a[]) arrayList.toArray(new a[0]);
        this.tracks = aVarArr;
        this.accumulatedSampleSizes = h(aVarArr);
        this.extractorOutput.endTracks();
        this.extractorOutput.h(this);
    }

    private void u(long j6) {
        if (this.atomType == 1836086884) {
            int i10 = this.atomHeaderBytesRead;
            this.motionPhotoMetadata = new MotionPhotoMetadata(0L, j6, -9223372036854775807L, j6 + ((long) i10), this.atomSize - ((long) i10));
        }
    }

    private boolean v(com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173aPeek;
        if (this.atomHeaderBytesRead == 0) {
            if (!mVar.readFully(this.atomHeader.d(), 0, 8, true)) {
                r();
                return false;
            }
            this.atomHeaderBytesRead = 8;
            this.atomHeader.P(0);
            this.atomSize = this.atomHeader.F();
            this.atomType = this.atomHeader.n();
        }
        long j6 = this.atomSize;
        if (j6 == 1) {
            mVar.readFully(this.atomHeader.d(), 8, 8);
            this.atomHeaderBytesRead += 8;
            this.atomSize = this.atomHeader.I();
        } else if (j6 == 0) {
            long length = mVar.getLength();
            if (length == -1 && (c0173aPeek = this.containerAtoms.peek()) != null) {
                length = c0173aPeek.endPosition;
            }
            if (length != -1) {
                this.atomSize = (length - mVar.getPosition()) + ((long) this.atomHeaderBytesRead);
            }
        }
        if (this.atomSize < this.atomHeaderBytesRead) {
            throw v2.c("Atom size less than header length (unsupported).");
        }
        if (z(this.atomType)) {
            long position = mVar.getPosition();
            long j10 = this.atomSize;
            int i10 = this.atomHeaderBytesRead;
            long j11 = (position + j10) - ((long) i10);
            if (j10 != i10 && this.atomType == 1835365473) {
                p(mVar);
            }
            this.containerAtoms.push(new com.google.android.exoplayer2.extractor.mp4.a.C0173a(this.atomType, j11));
            if (this.atomSize == this.atomHeaderBytesRead) {
                q(j11);
            } else {
                i();
            }
        } else if (A(this.atomType)) {
            com.google.android.exoplayer2.util.a.g(this.atomHeaderBytesRead == 8);
            com.google.android.exoplayer2.util.a.g(this.atomSize <= 2147483647L);
            c0 c0Var = new c0((int) this.atomSize);
            System.arraycopy(this.atomHeader.d(), 0, c0Var.d(), 0, 8);
            this.atomData = c0Var;
            this.parserState = 1;
        } else {
            u(mVar.getPosition() - ((long) this.atomHeaderBytesRead));
            this.atomData = null;
            this.parserState = 1;
        }
        return true;
    }

    private boolean w(com.google.android.exoplayer2.extractor.m mVar, a0 a0Var) throws IOException {
        boolean z6;
        long j6 = this.atomSize - ((long) this.atomHeaderBytesRead);
        long position = mVar.getPosition() + j6;
        c0 c0Var = this.atomData;
        if (c0Var == null) {
            if (j6 < 262144) {
                mVar.skipFully((int) j6);
            } else {
                a0Var.position = mVar.getPosition() + j6;
                z6 = true;
            }
            q(position);
            return (z6 || this.parserState == 2) ? false : true;
        }
        mVar.readFully(c0Var.d(), this.atomHeaderBytesRead, (int) j6);
        if (this.atomType == 1718909296) {
            this.fileType = s(c0Var);
        } else if (!this.containerAtoms.isEmpty()) {
            this.containerAtoms.peek().e(new com.google.android.exoplayer2.extractor.mp4.a.b(this.atomType, c0Var));
        }
        z6 = false;
        q(position);
        if (z6) {
        }
    }

    private int x(com.google.android.exoplayer2.extractor.m mVar, a0 a0Var) throws IOException {
        long position = mVar.getPosition();
        if (this.sampleTrackIndex == -1) {
            int iL = l(position);
            this.sampleTrackIndex = iL;
            if (iL == -1) {
                return -1;
            }
        }
        a aVar = this.tracks[this.sampleTrackIndex];
        e0 e0Var = aVar.trackOutput;
        int i10 = aVar.sampleIndex;
        r rVar = aVar.sampleTable;
        long j6 = rVar.offsets[i10];
        int i11 = rVar.sizes[i10];
        f0 f0Var = aVar.trueHdSampleRechunker;
        long j10 = (j6 - position) + ((long) this.sampleBytesRead);
        if (j10 < 0 || j10 >= 262144) {
            a0Var.position = j6;
            return 1;
        }
        if (aVar.track.sampleTransformation == 1) {
            j10 += 8;
            i11 -= 8;
        }
        mVar.skipFully((int) j10);
        o oVar = aVar.track;
        if (oVar.nalUnitLengthFieldLength == 0) {
            if ("audio/ac4".equals(oVar.format.sampleMimeType)) {
                if (this.sampleBytesWritten == 0) {
                    com.google.android.exoplayer2.audio.c.a(i11, this.scratch);
                    e0Var.c(this.scratch, 7);
                    this.sampleBytesWritten += 7;
                }
                i11 += 7;
            } else if (f0Var != null) {
                f0Var.d(mVar);
            }
            while (true) {
                int i12 = this.sampleBytesWritten;
                if (i12 >= i11) {
                    break;
                }
                int iB = e0Var.b(mVar, i11 - i12, false);
                this.sampleBytesRead += iB;
                this.sampleBytesWritten += iB;
                this.sampleCurrentNalBytesRemaining -= iB;
            }
        } else {
            byte[] bArrD = this.nalLength.d();
            bArrD[0] = 0;
            bArrD[1] = 0;
            bArrD[2] = 0;
            int i13 = aVar.track.nalUnitLengthFieldLength;
            int i14 = 4 - i13;
            while (this.sampleBytesWritten < i11) {
                int i15 = this.sampleCurrentNalBytesRemaining;
                if (i15 == 0) {
                    mVar.readFully(bArrD, i14, i13);
                    this.sampleBytesRead += i13;
                    this.nalLength.P(0);
                    int iN = this.nalLength.n();
                    if (iN < 0) {
                        throw v2.a("Invalid NAL length", null);
                    }
                    this.sampleCurrentNalBytesRemaining = iN;
                    this.nalStartCode.P(0);
                    e0Var.c(this.nalStartCode, 4);
                    this.sampleBytesWritten += 4;
                    i11 += i14;
                } else {
                    int iB2 = e0Var.b(mVar, i15, false);
                    this.sampleBytesRead += iB2;
                    this.sampleBytesWritten += iB2;
                    this.sampleCurrentNalBytesRemaining -= iB2;
                }
            }
        }
        int i16 = i11;
        r rVar2 = aVar.sampleTable;
        long j11 = rVar2.timestampsUs[i10];
        int i17 = rVar2.flags[i10];
        if (f0Var != null) {
            f0Var.c(e0Var, j11, i17, i16, 0, null);
            if (i10 + 1 == aVar.sampleTable.sampleCount) {
                f0Var.a(e0Var, null);
            }
        } else {
            e0Var.e(j11, i17, i16, 0, null);
        }
        aVar.sampleIndex++;
        this.sampleTrackIndex = -1;
        this.sampleBytesRead = 0;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        return 0;
    }

    private int y(com.google.android.exoplayer2.extractor.m mVar, a0 a0Var) throws IOException {
        int iC = this.sefReader.c(mVar, a0Var, this.slowMotionMetadataEntries);
        if (iC == 1 && a0Var.position == 0) {
            i();
        }
        return iC;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean b(com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        return n.d(mVar, (this.flags & 2) != 0);
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int c(com.google.android.exoplayer2.extractor.m mVar, a0 a0Var) throws IOException {
        while (true) {
            int i10 = this.parserState;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        return x(mVar, a0Var);
                    }
                    if (i10 == 3) {
                        return y(mVar, a0Var);
                    }
                    throw new IllegalStateException();
                }
                if (w(mVar, a0Var)) {
                    return 1;
                }
            } else if (!v(mVar)) {
                return -1;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0062  */
    /* JADX WARN: Code duplicated, block: B:30:0x0068  */
    /* JADX WARN: Code duplicated, block: B:32:0x006c  */
    /* JADX WARN: Code duplicated, block: B:34:0x0078  */
    /* JADX WARN: Code duplicated, block: B:39:0x0089  */
    /* JADX WARN: Code duplicated, block: B:41:0x008f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0080 A[EDGE_INSN: B:43:0x0080->B:37:0x0080 BREAK  A[LOOP:0: B:28:0x0063->B:36:0x007d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:45:0x007d A[SYNTHETIC] */
    public b0.a j(long j6, int i10) {
        long j10;
        long j11;
        long jO;
        long j12;
        int i11;
        a[] aVarArr;
        r rVar;
        int iB;
        a[] aVarArr2 = this.tracks;
        if (aVarArr2.length == 0) {
            return new b0.a(com.google.android.exoplayer2.extractor.c0.START);
        }
        int i12 = i10 != -1 ? i10 : this.firstVideoTrackIndex;
        if (i12 != -1) {
            r rVar2 = aVarArr2[i12].sampleTable;
            int iK = k(rVar2, j6);
            if (iK == -1) {
                return new b0.a(com.google.android.exoplayer2.extractor.c0.START);
            }
            j11 = rVar2.timestampsUs[iK];
            j10 = rVar2.offsets[iK];
            if (j11 < j6 && iK < rVar2.sampleCount - 1 && (iB = rVar2.b(j6)) != -1 && iB != iK) {
                j12 = rVar2.timestampsUs[iB];
                jO = rVar2.offsets[iB];
            }
            if (i10 == -1) {
                i11 = 0;
                while (true) {
                    aVarArr = this.tracks;
                    if (i11 < aVarArr.length) {
                        break;
                    }
                    if (i11 != this.firstVideoTrackIndex) {
                        rVar = aVarArr[i11].sampleTable;
                        long jO2 = o(rVar, j11, j10);
                        if (j12 != -9223372036854775807L) {
                            jO = o(rVar, j12, jO);
                        }
                        j10 = jO2;
                    }
                    i11++;
                }
            }
            com.google.android.exoplayer2.extractor.c0 c0Var = new com.google.android.exoplayer2.extractor.c0(j11, j10);
            return j12 == -9223372036854775807L ? new b0.a(c0Var) : new b0.a(c0Var, new com.google.android.exoplayer2.extractor.c0(j12, jO));
        }
        j10 = Long.MAX_VALUE;
        j11 = j6;
        jO = -1;
        j12 = -9223372036854775807L;
        if (i10 == -1) {
            i11 = 0;
            while (true) {
                aVarArr = this.tracks;
                if (i11 < aVarArr.length) {
                    break;
                    break;
                }
                if (i11 != this.firstVideoTrackIndex) {
                    rVar = aVarArr[i11].sampleTable;
                    long jO3 = o(rVar, j11, j10);
                    if (j12 != -9223372036854775807L) {
                        jO = o(rVar, j12, jO);
                    }
                    j10 = jO3;
                }
                i11++;
            }
        }
        com.google.android.exoplayer2.extractor.c0 c0Var2 = new com.google.android.exoplayer2.extractor.c0(j11, j10);
        if (j12 == -9223372036854775807L) {
        }
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void seek(long j6, long j10) {
        this.containerAtoms.clear();
        this.atomHeaderBytesRead = 0;
        this.sampleTrackIndex = -1;
        this.sampleBytesRead = 0;
        this.sampleBytesWritten = 0;
        this.sampleCurrentNalBytesRemaining = 0;
        if (j6 == 0) {
            if (this.parserState != 3) {
                i();
                return;
            } else {
                this.sefReader.g();
                this.slowMotionMetadataEntries.clear();
                return;
            }
        }
        for (a aVar : this.tracks) {
            B(aVar, j10);
            f0 f0Var = aVar.trueHdSampleRechunker;
            if (f0Var != null) {
                f0Var.b();
            }
        }
    }

    private static int k(r rVar, long j6) {
        int iA = rVar.a(j6);
        if (iA == -1) {
            return rVar.b(j6);
        }
        return iA;
    }

    private static long o(r rVar, long j6, long j10) {
        int iK = k(rVar, j6);
        if (iK == -1) {
            return j10;
        }
        return Math.min(rVar.offsets[iK], j10);
    }
}
