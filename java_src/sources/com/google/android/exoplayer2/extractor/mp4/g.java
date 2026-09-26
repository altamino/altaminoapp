package com.google.android.exoplayer2.extractor.mp4;

import android.net.Uri;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.a0;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.e0;
import com.google.android.exoplayer2.extractor.x;
import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.l0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.util.t;
import com.google.android.exoplayer2.util.y;
import com.google.android.exoplayer2.v2;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public class g implements com.google.android.exoplayer2.extractor.l {
    private static final int EXTRA_TRACKS_BASE_ID = 100;
    public static final int FLAG_ENABLE_EMSG_TRACK = 4;
    public static final int FLAG_WORKAROUND_EVERY_VIDEO_FRAME_IS_SYNC_FRAME = 1;
    public static final int FLAG_WORKAROUND_IGNORE_EDIT_LISTS = 16;
    public static final int FLAG_WORKAROUND_IGNORE_TFDT_BOX = 2;
    private static final int SAMPLE_GROUP_TYPE_seig = 1936025959;
    private static final int STATE_READING_ATOM_HEADER = 0;
    private static final int STATE_READING_ATOM_PAYLOAD = 1;
    private static final int STATE_READING_ENCRYPTION_DATA = 2;
    private static final int STATE_READING_SAMPLE_CONTINUE = 4;
    private static final int STATE_READING_SAMPLE_START = 3;
    private static final String TAG = "FragmentedMp4Extractor";

    @Nullable
    private final e0 additionalEmsgTrackOutput;

    @Nullable
    private c0 atomData;
    private final c0 atomHeader;
    private int atomHeaderBytesRead;
    private long atomSize;
    private int atomType;
    private e0[] ceaTrackOutputs;
    private final List<a2> closedCaptionFormats;
    private final ArrayDeque<com.google.android.exoplayer2.extractor.mp4.a.C0173a> containerAtoms;

    @Nullable
    private b currentTrackBundle;
    private long durationUs;
    private e0[] emsgTrackOutputs;
    private long endOfMdatPosition;
    private final t2.b eventMessageEncoder;
    private com.google.android.exoplayer2.extractor.n extractorOutput;
    private final int flags;
    private boolean haveOutputSeekMap;
    private final c0 nalBuffer;
    private final c0 nalPrefix;
    private final c0 nalStartCode;
    private int parserState;
    private int pendingMetadataSampleBytes;
    private final ArrayDeque<a> pendingMetadataSampleInfos;
    private long pendingSeekTimeUs;
    private boolean processSeiNalUnitPayload;
    private int sampleBytesWritten;
    private int sampleCurrentNalBytesRemaining;
    private int sampleSize;
    private final c0 scratch;
    private final byte[] scratchBytes;
    private long segmentIndexEarliestPresentationTimeUs;

    @Nullable
    private final o sideloadedTrack;

    @Nullable
    private final l0 timestampAdjuster;
    private final SparseArray<b> trackBundles;
    public static final com.google.android.exoplayer2.extractor.r FACTORY = new com.google.android.exoplayer2.extractor.r() { // from class: com.google.android.exoplayer2.extractor.mp4.f
        @Override // com.google.android.exoplayer2.extractor.r
        public /* synthetic */ com.google.android.exoplayer2.extractor.l[] a(Uri uri, Map map) {
            return com.google.android.exoplayer2.extractor.q.a(this, uri, map);
        }

        @Override // com.google.android.exoplayer2.extractor.r
        public final com.google.android.exoplayer2.extractor.l[] createExtractors() {
            return g.k();
        }
    };
    private static final byte[] PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE = {-94, 57, 79, 82, 90, -101, 79, com.google.common.base.c.DC4, -94, 68, 108, 66, 124, 100, -115, -12};
    private static final a2 EMSG_FORMAT = new a2.b().e0("application/x-emsg").E();

    private static final class b {
        private static final int SINGLE_SUBSAMPLE_ENCRYPTION_DATA_LENGTH = 8;
        public int currentSampleInTrackRun;
        public int currentSampleIndex;
        public int currentTrackRunIndex;
        private boolean currentlyInFragment;
        public c defaultSampleValues;
        public int firstSampleToOutputIndex;
        public r moovSampleTable;
        public final e0 output;
        public final q fragment = new q();
        public final c0 scratch = new c0();
        private final c0 encryptionSignalByte = new c0(1);
        private final c0 defaultInitializationVector = new c0();

        public int c() {
            int i10;
            if (this.currentlyInFragment) {
                i10 = this.fragment.sampleIsSyncFrameTable[this.currentSampleIndex] ? 1 : 0;
            } else {
                i10 = this.moovSampleTable.flags[this.currentSampleIndex];
            }
            return g() != null ? i10 | 1073741824 : i10;
        }

        public long d() {
            return !this.currentlyInFragment ? this.moovSampleTable.offsets[this.currentSampleIndex] : this.fragment.trunDataPosition[this.currentTrackRunIndex];
        }

        public long e() {
            return !this.currentlyInFragment ? this.moovSampleTable.timestampsUs[this.currentSampleIndex] : this.fragment.c(this.currentSampleIndex);
        }

        public int f() {
            return !this.currentlyInFragment ? this.moovSampleTable.sizes[this.currentSampleIndex] : this.fragment.sampleSizeTable[this.currentSampleIndex];
        }

        @Nullable
        public p g() {
            if (!this.currentlyInFragment) {
                return null;
            }
            int i10 = ((c) o0.j(this.fragment.header)).sampleDescriptionIndex;
            p pVarA = this.fragment.trackEncryptionBox;
            if (pVarA == null) {
                pVarA = this.moovSampleTable.track.a(i10);
            }
            if (pVarA == null || !pVarA.isEncrypted) {
                return null;
            }
            return pVarA;
        }

        public boolean h() {
            this.currentSampleIndex++;
            if (!this.currentlyInFragment) {
                return false;
            }
            int i10 = this.currentSampleInTrackRun + 1;
            this.currentSampleInTrackRun = i10;
            int[] iArr = this.fragment.trunLength;
            int i11 = this.currentTrackRunIndex;
            if (i10 != iArr[i11]) {
                return true;
            }
            this.currentTrackRunIndex = i11 + 1;
            this.currentSampleInTrackRun = 0;
            return false;
        }

        public void j(r rVar, c cVar) {
            this.moovSampleTable = rVar;
            this.defaultSampleValues = cVar;
            this.output.d(rVar.track.format);
            k();
        }

        public void k() {
            this.fragment.f();
            this.currentSampleIndex = 0;
            this.currentTrackRunIndex = 0;
            this.currentSampleInTrackRun = 0;
            this.firstSampleToOutputIndex = 0;
            this.currentlyInFragment = false;
        }

        public void l(long j6) {
            int i10 = this.currentSampleIndex;
            while (true) {
                q qVar = this.fragment;
                if (i10 >= qVar.sampleCount || qVar.c(i10) >= j6) {
                    return;
                }
                if (this.fragment.sampleIsSyncFrameTable[i10]) {
                    this.firstSampleToOutputIndex = i10;
                }
                i10++;
            }
        }

        public void n(DrmInitData drmInitData) {
            p pVarA = this.moovSampleTable.track.a(((c) o0.j(this.fragment.header)).sampleDescriptionIndex);
            this.output.d(this.moovSampleTable.track.format.b().M(drmInitData.c(pVarA != null ? pVarA.schemeType : null)).E());
        }

        public b(e0 e0Var, r rVar, c cVar) {
            this.output = e0Var;
            this.moovSampleTable = rVar;
            this.defaultSampleValues = cVar;
            j(rVar, cVar);
        }

        public int i(int i10, int i11) {
            c0 c0Var;
            boolean z6;
            int i12;
            p pVarG = g();
            if (pVarG == null) {
                return 0;
            }
            int length = pVarG.perSampleIvSize;
            if (length != 0) {
                c0Var = this.fragment.sampleEncryptionData;
            } else {
                byte[] bArr = (byte[]) o0.j(pVarG.defaultInitializationVector);
                this.defaultInitializationVector.N(bArr, bArr.length);
                c0 c0Var2 = this.defaultInitializationVector;
                length = bArr.length;
                c0Var = c0Var2;
            }
            boolean zG = this.fragment.g(this.currentSampleIndex);
            if (!zG && i11 == 0) {
                z6 = false;
            } else {
                z6 = true;
            }
            byte[] bArrD = this.encryptionSignalByte.d();
            if (z6) {
                i12 = 128;
            } else {
                i12 = 0;
            }
            bArrD[0] = (byte) (i12 | length);
            this.encryptionSignalByte.P(0);
            this.output.f(this.encryptionSignalByte, 1, 1);
            this.output.f(c0Var, length, 1);
            if (!z6) {
                return length + 1;
            }
            if (!zG) {
                this.scratch.L(8);
                byte[] bArrD2 = this.scratch.d();
                bArrD2[0] = 0;
                bArrD2[1] = 1;
                bArrD2[2] = (byte) ((i11 >> 8) & 255);
                bArrD2[3] = (byte) (i11 & 255);
                bArrD2[4] = (byte) ((i10 >> 24) & 255);
                bArrD2[5] = (byte) ((i10 >> 16) & 255);
                bArrD2[6] = (byte) ((i10 >> 8) & 255);
                bArrD2[7] = (byte) (i10 & 255);
                this.output.f(this.scratch, 8, 1);
                return length + 9;
            }
            c0 c0Var3 = this.fragment.sampleEncryptionData;
            int iJ = c0Var3.J();
            c0Var3.Q(-2);
            int i13 = (iJ * 6) + 2;
            if (i11 != 0) {
                this.scratch.L(i13);
                byte[] bArrD3 = this.scratch.d();
                c0Var3.j(bArrD3, 0, i13);
                int i14 = (((bArrD3[2] & 255) << 8) | (bArrD3[3] & 255)) + i11;
                bArrD3[2] = (byte) ((i14 >> 8) & 255);
                bArrD3[3] = (byte) (i14 & 255);
                c0Var3 = this.scratch;
            }
            this.output.f(c0Var3, i13, 1);
            return length + 1 + i13;
        }

        public void m() {
            p pVarG = g();
            if (pVarG == null) {
                return;
            }
            c0 c0Var = this.fragment.sampleEncryptionData;
            int i10 = pVarG.perSampleIvSize;
            if (i10 != 0) {
                c0Var.Q(i10);
            }
            if (this.fragment.g(this.currentSampleIndex)) {
                c0Var.Q(c0Var.J() * 6);
            }
        }
    }

    public g() {
        this(0);
    }

    private static boolean M(int i10) {
        return i10 == 1836019574 || i10 == 1953653099 || i10 == 1835297121 || i10 == 1835626086 || i10 == 1937007212 || i10 == 1836019558 || i10 == 1953653094 || i10 == 1836475768 || i10 == 1701082227;
    }

    private static boolean N(int i10) {
        return i10 == 1751411826 || i10 == 1835296868 || i10 == 1836476516 || i10 == 1936286840 || i10 == 1937011556 || i10 == 1937011827 || i10 == 1668576371 || i10 == 1937011555 || i10 == 1937011578 || i10 == 1937013298 || i10 == 1937007471 || i10 == 1668232756 || i10 == 1937011571 || i10 == 1952867444 || i10 == 1952868452 || i10 == 1953196132 || i10 == 1953654136 || i10 == 1953658222 || i10 == 1886614376 || i10 == 1935763834 || i10 == 1935763823 || i10 == 1936027235 || i10 == 1970628964 || i10 == 1935828848 || i10 == 1936158820 || i10 == 1701606260 || i10 == 1835362404 || i10 == 1701671783;
    }

    private void f() {
        this.parserState = 0;
        this.atomHeaderBytesRead = 0;
    }

    private void j() {
        int i10;
        e0[] e0VarArr = new e0[2];
        this.emsgTrackOutputs = e0VarArr;
        e0 e0Var = this.additionalEmsgTrackOutput;
        int i11 = 0;
        if (e0Var != null) {
            e0VarArr[0] = e0Var;
            i10 = 1;
        } else {
            i10 = 0;
        }
        int i12 = 100;
        if ((this.flags & 4) != 0) {
            e0VarArr[i10] = this.extractorOutput.track(100, 5);
            i12 = 101;
            i10++;
        }
        e0[] e0VarArr2 = (e0[]) o0.A0(this.emsgTrackOutputs, i10);
        this.emsgTrackOutputs = e0VarArr2;
        for (e0 e0Var2 : e0VarArr2) {
            e0Var2.d(EMSG_FORMAT);
        }
        this.ceaTrackOutputs = new e0[this.closedCaptionFormats.size()];
        while (i11 < this.ceaTrackOutputs.length) {
            e0 e0VarTrack = this.extractorOutput.track(i12, 3);
            e0VarTrack.d(this.closedCaptionFormats.get(i11));
            this.ceaTrackOutputs[i11] = e0VarTrack;
            i11++;
            i12++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.google.android.exoplayer2.extractor.l[] k() {
        return new com.google.android.exoplayer2.extractor.l[]{new g()};
    }

    private static void y(c0 c0Var, q qVar) throws v2 {
        x(c0Var, 0, qVar);
    }

    @Nullable
    protected o l(@Nullable o oVar) {
        return oVar;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void release() {
    }

    private static final class a {
        public final boolean sampleTimeIsRelative;
        public final long sampleTimeUs;
        public final int size;

        public a(long j6, boolean z6, int i10) {
            this.sampleTimeUs = j6;
            this.sampleTimeIsRelative = z6;
            this.size = i10;
        }
    }

    public g(int i10) {
        this(i10, null);
    }

    private static long A(c0 c0Var) {
        c0Var.P(8);
        return com.google.android.exoplayer2.extractor.mp4.a.c(c0Var.n()) == 1 ? c0Var.I() : c0Var.F();
    }

    @Nullable
    private static b B(c0 c0Var, SparseArray<b> sparseArray, boolean z6) {
        c0Var.P(8);
        int iB = com.google.android.exoplayer2.extractor.mp4.a.b(c0Var.n());
        b bVarValueAt = z6 ? sparseArray.valueAt(0) : sparseArray.get(c0Var.n());
        if (bVarValueAt == null) {
            return null;
        }
        if ((iB & 1) != 0) {
            long jI = c0Var.I();
            q qVar = bVarValueAt.fragment;
            qVar.dataPosition = jI;
            qVar.auxiliaryDataPosition = jI;
        }
        c cVar = bVarValueAt.defaultSampleValues;
        bVarValueAt.fragment.header = new c((iB & 2) != 0 ? c0Var.n() - 1 : cVar.sampleDescriptionIndex, (iB & 8) != 0 ? c0Var.n() : cVar.duration, (iB & 16) != 0 ? c0Var.n() : cVar.size, (iB & 32) != 0 ? c0Var.n() : cVar.flags);
        return bVarValueAt;
    }

    private static Pair<Integer, c> D(c0 c0Var) {
        c0Var.P(12);
        return Pair.create(Integer.valueOf(c0Var.n()), new c(c0Var.n() - 1, c0Var.n(), c0Var.n(), c0Var.n()));
    }

    /* JADX WARN: Code duplicated, block: B:42:0x0098  */
    /* JADX WARN: Code duplicated, block: B:45:0x00b0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:50:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:51:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:54:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:55:0x00db  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:61:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:64:0x0111  */
    /* JADX WARN: Code duplicated, block: B:70:0x0126  */
    private static int E(b bVar, int i10, int i11, c0 c0Var, int i12) throws v2 {
        long j6;
        long j10;
        int[] iArr;
        long[] jArr;
        boolean[] zArr;
        boolean z6;
        int i13;
        long j11;
        long j12;
        int i14;
        int iN;
        int iN2;
        int iN3;
        int iN4;
        long jF0;
        boolean z10;
        b bVar2 = bVar;
        c0Var.P(8);
        int iB = com.google.android.exoplayer2.extractor.mp4.a.b(c0Var.n());
        o oVar = bVar2.moovSampleTable.track;
        q qVar = bVar2.fragment;
        c cVar = (c) o0.j(qVar.header);
        qVar.trunLength[i10] = c0Var.H();
        long[] jArr2 = qVar.trunDataPosition;
        long j13 = qVar.dataPosition;
        jArr2[i10] = j13;
        if ((iB & 1) != 0) {
            jArr2[i10] = j13 + ((long) c0Var.n());
        }
        boolean z11 = (iB & 4) != 0;
        int iN5 = cVar.flags;
        if (z11) {
            iN5 = c0Var.n();
        }
        boolean z12 = (iB & 256) != 0;
        boolean z13 = (iB & 512) != 0;
        boolean z14 = (iB & 1024) != 0;
        boolean z15 = (iB & 2048) != 0;
        long[] jArr3 = oVar.editListDurations;
        if (jArr3 != null && jArr3.length == 1) {
            j6 = 0;
            if (jArr3[0] == 0) {
                j10 = ((long[]) o0.j(oVar.editListMediaTimes))[0];
            }
            iArr = qVar.sampleSizeTable;
            jArr = qVar.samplePresentationTimesUs;
            zArr = qVar.sampleIsSyncFrameTable;
            int i15 = iN5;
            if (oVar.type == 2 || (i11 & 1) == 0) {
                z6 = false;
            } else {
                z6 = true;
            }
            i13 = i12 + qVar.trunLength[i10];
            boolean z16 = z6;
            j11 = oVar.timescale;
            j12 = qVar.nextFragmentDecodeTime;
            i14 = i12;
            while (i14 < i13) {
                if (z12) {
                    iN = c0Var.n();
                } else {
                    iN = cVar.duration;
                }
                int iE = e(iN);
                if (z13) {
                    iN2 = c0Var.n();
                } else {
                    iN2 = cVar.size;
                }
                int iE2 = e(iN2);
                if (z14) {
                    iN3 = c0Var.n();
                } else if (i14 == 0 || !z11) {
                    iN3 = cVar.flags;
                } else {
                    iN3 = i15;
                }
                if (z15) {
                    iN4 = c0Var.n();
                } else {
                    iN4 = 0;
                }
                jF0 = o0.F0((((long) iN4) + j12) - j10, 1000000L, j11);
                jArr[i14] = jF0;
                if (!qVar.nextFragmentDecodeTimeIncludesMoov) {
                    jArr[i14] = jF0 + bVar2.moovSampleTable.durationUs;
                }
                iArr[i14] = iE2;
                if (((iN3 >> 16) & 1) == 0 || (z16 && i14 != 0)) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                zArr[i14] = z10;
                j12 += (long) iE;
                i14++;
                bVar2 = bVar;
                z12 = z12;
                z11 = z11;
                z15 = z15;
                z13 = z13;
                z14 = z14;
            }
            qVar.nextFragmentDecodeTime = j12;
            return i13;
        }
        j6 = 0;
        j10 = j6;
        iArr = qVar.sampleSizeTable;
        jArr = qVar.samplePresentationTimesUs;
        zArr = qVar.sampleIsSyncFrameTable;
        int i16 = iN5;
        if (oVar.type == 2) {
            z6 = false;
        } else {
            z6 = false;
        }
        i13 = i12 + qVar.trunLength[i10];
        boolean z17 = z6;
        j11 = oVar.timescale;
        j12 = qVar.nextFragmentDecodeTime;
        i14 = i12;
        while (i14 < i13) {
            if (z12) {
                iN = c0Var.n();
            } else {
                iN = cVar.duration;
            }
            int iE3 = e(iN);
            if (z13) {
                iN2 = c0Var.n();
            } else {
                iN2 = cVar.size;
            }
            int iE4 = e(iN2);
            if (z14) {
                iN3 = c0Var.n();
            } else if (i14 == 0) {
                iN3 = cVar.flags;
            } else {
                iN3 = cVar.flags;
            }
            if (z15) {
                iN4 = c0Var.n();
            } else {
                iN4 = 0;
            }
            jF0 = o0.F0((((long) iN4) + j12) - j10, 1000000L, j11);
            jArr[i14] = jF0;
            if (!qVar.nextFragmentDecodeTimeIncludesMoov) {
                jArr[i14] = jF0 + bVar2.moovSampleTable.durationUs;
            }
            iArr[i14] = iE4;
            if (((iN3 >> 16) & 1) == 0) {
                z10 = false;
            } else {
                z10 = false;
            }
            zArr[i14] = z10;
            j12 += (long) iE3;
            i14++;
            bVar2 = bVar;
            z12 = z12;
            z11 = z11;
            z15 = z15;
            z13 = z13;
            z14 = z14;
        }
        qVar.nextFragmentDecodeTime = j12;
        return i13;
    }

    private static void F(com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173a, b bVar, int i10) throws v2 {
        List<com.google.android.exoplayer2.extractor.mp4.a.b> list = c0173a.leafChildren;
        int size = list.size();
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            com.google.android.exoplayer2.extractor.mp4.a.b bVar2 = list.get(i13);
            if (bVar2.type == 1953658222) {
                c0 c0Var = bVar2.data;
                c0Var.P(12);
                int iH = c0Var.H();
                if (iH > 0) {
                    i12 += iH;
                    i11++;
                }
            }
        }
        bVar.currentTrackRunIndex = 0;
        bVar.currentSampleInTrackRun = 0;
        bVar.currentSampleIndex = 0;
        bVar.fragment.e(i11, i12);
        int i14 = 0;
        int iE = 0;
        for (int i15 = 0; i15 < size; i15++) {
            com.google.android.exoplayer2.extractor.mp4.a.b bVar3 = list.get(i15);
            if (bVar3.type == 1953658222) {
                iE = E(bVar, i14, i10, bVar3.data, iE);
                i14++;
            }
        }
    }

    private static void G(c0 c0Var, q qVar, byte[] bArr) throws v2 {
        c0Var.P(8);
        c0Var.j(bArr, 0, 16);
        if (Arrays.equals(bArr, PIFF_SAMPLE_ENCRYPTION_BOX_EXTENDED_TYPE)) {
            x(c0Var, 16, qVar);
        }
    }

    private void H(long j6) throws v2 {
        while (!this.containerAtoms.isEmpty() && this.containerAtoms.peek().endPosition == j6) {
            m(this.containerAtoms.pop());
        }
        f();
    }

    private boolean I(com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        if (this.atomHeaderBytesRead == 0) {
            if (!mVar.readFully(this.atomHeader.d(), 0, 8, true)) {
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
            if (length == -1 && !this.containerAtoms.isEmpty()) {
                length = this.containerAtoms.peek().endPosition;
            }
            if (length != -1) {
                this.atomSize = (length - mVar.getPosition()) + ((long) this.atomHeaderBytesRead);
            }
        }
        if (this.atomSize < this.atomHeaderBytesRead) {
            throw v2.c("Atom size less than header length (unsupported).");
        }
        long position = mVar.getPosition() - ((long) this.atomHeaderBytesRead);
        int i10 = this.atomType;
        if ((i10 == 1836019558 || i10 == 1835295092) && !this.haveOutputSeekMap) {
            this.extractorOutput.h(new b0.b(this.durationUs, position));
            this.haveOutputSeekMap = true;
        }
        if (this.atomType == 1836019558) {
            int size = this.trackBundles.size();
            for (int i11 = 0; i11 < size; i11++) {
                q qVar = this.trackBundles.valueAt(i11).fragment;
                qVar.atomPosition = position;
                qVar.auxiliaryDataPosition = position;
                qVar.dataPosition = position;
            }
        }
        int i12 = this.atomType;
        if (i12 == 1835295092) {
            this.currentTrackBundle = null;
            this.endOfMdatPosition = position + this.atomSize;
            this.parserState = 2;
            return true;
        }
        if (M(i12)) {
            long position2 = (mVar.getPosition() + this.atomSize) - 8;
            this.containerAtoms.push(new com.google.android.exoplayer2.extractor.mp4.a.C0173a(this.atomType, position2));
            if (this.atomSize == this.atomHeaderBytesRead) {
                H(position2);
            } else {
                f();
            }
        } else if (N(this.atomType)) {
            if (this.atomHeaderBytesRead != 8) {
                throw v2.c("Leaf atom defines extended atom size (unsupported).");
            }
            long j10 = this.atomSize;
            if (j10 > 2147483647L) {
                throw v2.c("Leaf atom with length > 2147483647 (unsupported).");
            }
            c0 c0Var = new c0((int) j10);
            System.arraycopy(this.atomHeader.d(), 0, c0Var.d(), 0, 8);
            this.atomData = c0Var;
            this.parserState = 1;
        } else {
            if (this.atomSize > 2147483647L) {
                throw v2.c("Skipping atom with length > 2147483647 (unsupported).");
            }
            this.atomData = null;
            this.parserState = 1;
        }
        return true;
    }

    private void J(com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        int i10 = ((int) this.atomSize) - this.atomHeaderBytesRead;
        c0 c0Var = this.atomData;
        if (c0Var != null) {
            mVar.readFully(c0Var.d(), 8, i10);
            o(new com.google.android.exoplayer2.extractor.mp4.a.b(this.atomType, c0Var), mVar.getPosition());
        } else {
            mVar.skipFully(i10);
        }
        H(mVar.getPosition());
    }

    private void K(com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        int size = this.trackBundles.size();
        long j6 = Long.MAX_VALUE;
        b bVarValueAt = null;
        for (int i10 = 0; i10 < size; i10++) {
            q qVar = this.trackBundles.valueAt(i10).fragment;
            if (qVar.sampleEncryptionDataNeedsFill) {
                long j10 = qVar.auxiliaryDataPosition;
                if (j10 < j6) {
                    bVarValueAt = this.trackBundles.valueAt(i10);
                    j6 = j10;
                }
            }
        }
        if (bVarValueAt == null) {
            this.parserState = 3;
            return;
        }
        int position = (int) (j6 - mVar.getPosition());
        if (position < 0) {
            throw v2.a("Offset to encryption data was negative.", null);
        }
        mVar.skipFully(position);
        bVarValueAt.fragment.a(mVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private boolean L(com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        int iB;
        b bVarI = this.currentTrackBundle;
        Throwable th = null;
        if (bVarI == null) {
            bVarI = i(this.trackBundles);
            if (bVarI == null) {
                int position = (int) (this.endOfMdatPosition - mVar.getPosition());
                if (position < 0) {
                    throw v2.a("Offset to end of mdat was negative.", null);
                }
                mVar.skipFully(position);
                f();
                return false;
            }
            int iD = (int) (bVarI.d() - mVar.getPosition());
            if (iD < 0) {
                t.i(TAG, "Ignoring negative offset to sample data.");
                iD = 0;
            }
            mVar.skipFully(iD);
            this.currentTrackBundle = bVarI;
        }
        int i10 = 4;
        int i11 = 1;
        if (this.parserState == 3) {
            int iF = bVarI.f();
            this.sampleSize = iF;
            if (bVarI.currentSampleIndex < bVarI.firstSampleToOutputIndex) {
                mVar.skipFully(iF);
                bVarI.m();
                if (!bVarI.h()) {
                    this.currentTrackBundle = null;
                }
                this.parserState = 3;
                return true;
            }
            if (bVarI.moovSampleTable.track.sampleTransformation == 1) {
                this.sampleSize = iF - 8;
                mVar.skipFully(8);
            }
            if ("audio/ac4".equals(bVarI.moovSampleTable.track.format.sampleMimeType)) {
                this.sampleBytesWritten = bVarI.i(this.sampleSize, 7);
                com.google.android.exoplayer2.audio.c.a(this.sampleSize, this.scratch);
                bVarI.output.c(this.scratch, 7);
                this.sampleBytesWritten += 7;
            } else {
                this.sampleBytesWritten = bVarI.i(this.sampleSize, 0);
            }
            this.sampleSize += this.sampleBytesWritten;
            this.parserState = 4;
            this.sampleCurrentNalBytesRemaining = 0;
        }
        o oVar = bVarI.moovSampleTable.track;
        e0 e0Var = bVarI.output;
        long jE = bVarI.e();
        l0 l0Var = this.timestampAdjuster;
        if (l0Var != null) {
            jE = l0Var.a(jE);
        }
        long j6 = jE;
        if (oVar.nalUnitLengthFieldLength == 0) {
            while (true) {
                int i12 = this.sampleBytesWritten;
                int i13 = this.sampleSize;
                if (i12 >= i13) {
                    break;
                }
                this.sampleBytesWritten += e0Var.b(mVar, i13 - i12, false);
            }
        } else {
            byte[] bArrD = this.nalPrefix.d();
            bArrD[0] = 0;
            bArrD[1] = 0;
            bArrD[2] = 0;
            int i14 = oVar.nalUnitLengthFieldLength;
            int i15 = i14 + 1;
            int i16 = 4 - i14;
            while (this.sampleBytesWritten < this.sampleSize) {
                int i17 = this.sampleCurrentNalBytesRemaining;
                if (i17 == 0) {
                    mVar.readFully(bArrD, i16, i15);
                    this.nalPrefix.P(0);
                    int iN = this.nalPrefix.n();
                    if (iN < i11) {
                        throw v2.a("Invalid NAL length", th);
                    }
                    this.sampleCurrentNalBytesRemaining = iN - 1;
                    this.nalStartCode.P(0);
                    e0Var.c(this.nalStartCode, i10);
                    e0Var.c(this.nalPrefix, i11);
                    this.processSeiNalUnitPayload = (this.ceaTrackOutputs.length <= 0 || !y.g(oVar.format.sampleMimeType, bArrD[i10])) ? 0 : i11;
                    this.sampleBytesWritten += 5;
                    this.sampleSize += i16;
                } else {
                    if (this.processSeiNalUnitPayload) {
                        this.nalBuffer.L(i17);
                        mVar.readFully(this.nalBuffer.d(), 0, this.sampleCurrentNalBytesRemaining);
                        e0Var.c(this.nalBuffer, this.sampleCurrentNalBytesRemaining);
                        iB = this.sampleCurrentNalBytesRemaining;
                        int iQ = y.q(this.nalBuffer.d(), this.nalBuffer.f());
                        this.nalBuffer.P("video/hevc".equals(oVar.format.sampleMimeType) ? 1 : 0);
                        this.nalBuffer.O(iQ);
                        com.google.android.exoplayer2.extractor.c.a(j6, this.nalBuffer, this.ceaTrackOutputs);
                    } else {
                        iB = e0Var.b(mVar, i17, false);
                    }
                    this.sampleBytesWritten += iB;
                    this.sampleCurrentNalBytesRemaining -= iB;
                    th = null;
                    i10 = 4;
                    i11 = 1;
                }
            }
        }
        int iC = bVarI.c();
        p pVarG = bVarI.g();
        e0Var.e(j6, iC, this.sampleSize, 0, pVarG != null ? pVarG.cryptoData : null);
        r(j6);
        if (!bVarI.h()) {
            this.currentTrackBundle = null;
        }
        this.parserState = 3;
        return true;
    }

    private static int e(int i10) throws v2 {
        if (i10 >= 0) {
            return i10;
        }
        throw v2.a("Unexpected negative value: " + i10, null);
    }

    private void m(com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173a) throws v2 {
        int i10 = c0173a.type;
        if (i10 == 1836019574) {
            q(c0173a);
        } else if (i10 == 1836019558) {
            p(c0173a);
        } else {
            if (this.containerAtoms.isEmpty()) {
                return;
            }
            this.containerAtoms.peek().d(c0173a);
        }
    }

    private void n(c0 c0Var) {
        long jF0;
        String str;
        long jF1;
        String str2;
        long jF;
        long jA;
        if (this.emsgTrackOutputs.length == 0) {
            return;
        }
        c0Var.P(8);
        int iC = com.google.android.exoplayer2.extractor.mp4.a.c(c0Var.n());
        if (iC == 0) {
            String str3 = (String) com.google.android.exoplayer2.util.a.e(c0Var.x());
            String str4 = (String) com.google.android.exoplayer2.util.a.e(c0Var.x());
            long jF2 = c0Var.F();
            jF0 = o0.F0(c0Var.F(), 1000000L, jF2);
            long j6 = this.segmentIndexEarliestPresentationTimeUs;
            long j10 = j6 != -9223372036854775807L ? j6 + jF0 : -9223372036854775807L;
            str = str3;
            jF1 = o0.F0(c0Var.F(), 1000L, jF2);
            str2 = str4;
            jF = c0Var.F();
            jA = j10;
        } else {
            if (iC != 1) {
                t.i(TAG, "Skipping unsupported emsg version: " + iC);
                return;
            }
            long jF3 = c0Var.F();
            jA = o0.F0(c0Var.I(), 1000000L, jF3);
            long jF4 = o0.F0(c0Var.F(), 1000L, jF3);
            long jF5 = c0Var.F();
            str = (String) com.google.android.exoplayer2.util.a.e(c0Var.x());
            jF1 = jF4;
            jF = jF5;
            str2 = (String) com.google.android.exoplayer2.util.a.e(c0Var.x());
            jF0 = -9223372036854775807L;
        }
        byte[] bArr = new byte[c0Var.a()];
        c0Var.j(bArr, 0, c0Var.a());
        c0 c0Var2 = new c0(this.eventMessageEncoder.a(new EventMessage(str, str2, jF1, jF, bArr)));
        int iA = c0Var2.a();
        for (e0 e0Var : this.emsgTrackOutputs) {
            c0Var2.P(0);
            e0Var.c(c0Var2, iA);
        }
        if (jA == -9223372036854775807L) {
            this.pendingMetadataSampleInfos.addLast(new a(jF0, true, iA));
            this.pendingMetadataSampleBytes += iA;
            return;
        }
        if (!this.pendingMetadataSampleInfos.isEmpty()) {
            this.pendingMetadataSampleInfos.addLast(new a(jA, false, iA));
            this.pendingMetadataSampleBytes += iA;
            return;
        }
        l0 l0Var = this.timestampAdjuster;
        if (l0Var != null) {
            jA = l0Var.a(jA);
        }
        for (e0 e0Var2 : this.emsgTrackOutputs) {
            e0Var2.e(jA, 1, iA, 0, null);
        }
    }

    private void o(com.google.android.exoplayer2.extractor.mp4.a.b bVar, long j6) throws v2 {
        if (!this.containerAtoms.isEmpty()) {
            this.containerAtoms.peek().e(bVar);
            return;
        }
        int i10 = bVar.type;
        if (i10 != 1936286840) {
            if (i10 == 1701671783) {
                n(bVar.data);
            }
        } else {
            Pair<Long, com.google.android.exoplayer2.extractor.d> pairZ = z(bVar.data, j6);
            this.segmentIndexEarliestPresentationTimeUs = ((Long) pairZ.first).longValue();
            this.extractorOutput.h((b0) pairZ.second);
            this.haveOutputSeekMap = true;
        }
    }

    private void p(com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173a) throws v2 {
        t(c0173a, this.trackBundles, this.sideloadedTrack != null, this.flags, this.scratchBytes);
        DrmInitData drmInitDataH = h(c0173a.leafChildren);
        if (drmInitDataH != null) {
            int size = this.trackBundles.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.trackBundles.valueAt(i10).n(drmInitDataH);
            }
        }
        if (this.pendingSeekTimeUs != -9223372036854775807L) {
            int size2 = this.trackBundles.size();
            for (int i11 = 0; i11 < size2; i11++) {
                this.trackBundles.valueAt(i11).l(this.pendingSeekTimeUs);
            }
            this.pendingSeekTimeUs = -9223372036854775807L;
        }
    }

    private void q(com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173a) throws v2 {
        int i10 = 0;
        com.google.android.exoplayer2.util.a.h(this.sideloadedTrack == null, "Unexpected moov box.");
        DrmInitData drmInitDataH = h(c0173a.leafChildren);
        com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173a2 = (com.google.android.exoplayer2.extractor.mp4.a.C0173a) com.google.android.exoplayer2.util.a.e(c0173a.f(1836475768));
        SparseArray<c> sparseArray = new SparseArray<>();
        int size = c0173a2.leafChildren.size();
        long jS = -9223372036854775807L;
        for (int i11 = 0; i11 < size; i11++) {
            com.google.android.exoplayer2.extractor.mp4.a.b bVar = c0173a2.leafChildren.get(i11);
            int i12 = bVar.type;
            if (i12 == 1953654136) {
                Pair<Integer, c> pairD = D(bVar.data);
                sparseArray.put(((Integer) pairD.first).intValue(), (c) pairD.second);
            } else if (i12 == 1835362404) {
                jS = s(bVar.data);
            }
        }
        List<r> listA = com.google.android.exoplayer2.extractor.mp4.b.A(c0173a, new x(), jS, drmInitDataH, (this.flags & 16) != 0, false, new com.google.common.base.g() { // from class: com.google.android.exoplayer2.extractor.mp4.e
            @Override // com.google.common.base.g
            public final Object apply(Object obj) {
                return this.f1217a.l((o) obj);
            }
        });
        int size2 = listA.size();
        if (this.trackBundles.size() != 0) {
            com.google.android.exoplayer2.util.a.g(this.trackBundles.size() == size2);
            while (i10 < size2) {
                r rVar = listA.get(i10);
                o oVar = rVar.track;
                this.trackBundles.get(oVar.id).j(rVar, g(sparseArray, oVar.id));
                i10++;
            }
            return;
        }
        while (i10 < size2) {
            r rVar2 = listA.get(i10);
            o oVar2 = rVar2.track;
            this.trackBundles.put(oVar2.id, new b(this.extractorOutput.track(i10, oVar2.type), rVar2, g(sparseArray, oVar2.id)));
            this.durationUs = Math.max(this.durationUs, oVar2.durationUs);
            i10++;
        }
        this.extractorOutput.endTracks();
    }

    private void r(long j6) {
        while (!this.pendingMetadataSampleInfos.isEmpty()) {
            a aVarRemoveFirst = this.pendingMetadataSampleInfos.removeFirst();
            this.pendingMetadataSampleBytes -= aVarRemoveFirst.size;
            long jA = aVarRemoveFirst.sampleTimeUs;
            if (aVarRemoveFirst.sampleTimeIsRelative) {
                jA += j6;
            }
            l0 l0Var = this.timestampAdjuster;
            if (l0Var != null) {
                jA = l0Var.a(jA);
            }
            for (e0 e0Var : this.emsgTrackOutputs) {
                e0Var.e(jA, 1, aVarRemoveFirst.size, this.pendingMetadataSampleBytes, null);
            }
        }
    }

    private static long s(c0 c0Var) {
        c0Var.P(8);
        return com.google.android.exoplayer2.extractor.mp4.a.c(c0Var.n()) == 0 ? c0Var.F() : c0Var.I();
    }

    private static void t(com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173a, SparseArray<b> sparseArray, boolean z6, int i10, byte[] bArr) throws v2 {
        int size = c0173a.containerChildren.size();
        for (int i11 = 0; i11 < size; i11++) {
            com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173a2 = c0173a.containerChildren.get(i11);
            if (c0173a2.type == 1953653094) {
                C(c0173a2, sparseArray, z6, i10, bArr);
            }
        }
    }

    private static void u(c0 c0Var, q qVar) throws v2 {
        c0Var.P(8);
        int iN = c0Var.n();
        if ((com.google.android.exoplayer2.extractor.mp4.a.b(iN) & 1) == 1) {
            c0Var.Q(8);
        }
        int iH = c0Var.H();
        if (iH == 1) {
            qVar.auxiliaryDataPosition += com.google.android.exoplayer2.extractor.mp4.a.c(iN) == 0 ? c0Var.F() : c0Var.I();
        } else {
            throw v2.a("Unexpected saio entry count: " + iH, null);
        }
    }

    private static void v(p pVar, c0 c0Var, q qVar) throws v2 {
        int i10;
        int i11 = pVar.perSampleIvSize;
        c0Var.P(8);
        if ((com.google.android.exoplayer2.extractor.mp4.a.b(c0Var.n()) & 1) == 1) {
            c0Var.Q(8);
        }
        int iD = c0Var.D();
        int iH = c0Var.H();
        if (iH > qVar.sampleCount) {
            throw v2.a("Saiz sample count " + iH + " is greater than fragment sample count" + qVar.sampleCount, null);
        }
        if (iD == 0) {
            boolean[] zArr = qVar.sampleHasSubsampleEncryptionTable;
            i10 = 0;
            for (int i12 = 0; i12 < iH; i12++) {
                int iD2 = c0Var.D();
                i10 += iD2;
                zArr[i12] = iD2 > i11;
            }
        } else {
            i10 = iD * iH;
            Arrays.fill(qVar.sampleHasSubsampleEncryptionTable, 0, iH, iD > i11);
        }
        Arrays.fill(qVar.sampleHasSubsampleEncryptionTable, iH, qVar.sampleCount, false);
        if (i10 > 0) {
            qVar.d(i10);
        }
    }

    private static void w(com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173a, @Nullable String str, q qVar) throws v2 {
        byte[] bArr = null;
        c0 c0Var = null;
        c0 c0Var2 = null;
        for (int i10 = 0; i10 < c0173a.leafChildren.size(); i10++) {
            com.google.android.exoplayer2.extractor.mp4.a.b bVar = c0173a.leafChildren.get(i10);
            c0 c0Var3 = bVar.data;
            int i11 = bVar.type;
            if (i11 == 1935828848) {
                c0Var3.P(12);
                if (c0Var3.n() == SAMPLE_GROUP_TYPE_seig) {
                    c0Var = c0Var3;
                }
            } else if (i11 == 1936158820) {
                c0Var3.P(12);
                if (c0Var3.n() == SAMPLE_GROUP_TYPE_seig) {
                    c0Var2 = c0Var3;
                }
            }
        }
        if (c0Var == null || c0Var2 == null) {
            return;
        }
        c0Var.P(8);
        int iC = com.google.android.exoplayer2.extractor.mp4.a.c(c0Var.n());
        c0Var.Q(4);
        if (iC == 1) {
            c0Var.Q(4);
        }
        if (c0Var.n() != 1) {
            throw v2.c("Entry count in sbgp != 1 (unsupported).");
        }
        c0Var2.P(8);
        int iC2 = com.google.android.exoplayer2.extractor.mp4.a.c(c0Var2.n());
        c0Var2.Q(4);
        if (iC2 == 1) {
            if (c0Var2.F() == 0) {
                throw v2.c("Variable length description in sgpd found (unsupported)");
            }
        } else if (iC2 >= 2) {
            c0Var2.Q(4);
        }
        if (c0Var2.F() != 1) {
            throw v2.c("Entry count in sgpd != 1 (unsupported).");
        }
        c0Var2.Q(1);
        int iD = c0Var2.D();
        int i12 = (iD & 240) >> 4;
        int i13 = iD & 15;
        boolean z6 = c0Var2.D() == 1;
        if (z6) {
            int iD2 = c0Var2.D();
            byte[] bArr2 = new byte[16];
            c0Var2.j(bArr2, 0, 16);
            if (iD2 == 0) {
                int iD3 = c0Var2.D();
                bArr = new byte[iD3];
                c0Var2.j(bArr, 0, iD3);
            }
            qVar.definesEncryptionData = true;
            qVar.trackEncryptionBox = new p(z6, str, iD2, bArr2, i12, i13, bArr);
        }
    }

    private static void x(c0 c0Var, int i10, q qVar) throws v2 {
        c0Var.P(i10 + 8);
        int iB = com.google.android.exoplayer2.extractor.mp4.a.b(c0Var.n());
        if ((iB & 1) != 0) {
            throw v2.c("Overriding TrackEncryptionBox parameters is unsupported.");
        }
        boolean z6 = (iB & 2) != 0;
        int iH = c0Var.H();
        if (iH == 0) {
            Arrays.fill(qVar.sampleHasSubsampleEncryptionTable, 0, qVar.sampleCount, false);
            return;
        }
        if (iH == qVar.sampleCount) {
            Arrays.fill(qVar.sampleHasSubsampleEncryptionTable, 0, iH, z6);
            qVar.d(c0Var.a());
            qVar.b(c0Var);
        } else {
            throw v2.a("Senc sample count " + iH + " is different from fragment sample count" + qVar.sampleCount, null);
        }
    }

    private static Pair<Long, com.google.android.exoplayer2.extractor.d> z(c0 c0Var, long j6) throws v2 {
        long jI;
        long jI2;
        c0Var.P(8);
        int iC = com.google.android.exoplayer2.extractor.mp4.a.c(c0Var.n());
        c0Var.Q(4);
        long jF = c0Var.F();
        if (iC == 0) {
            jI = c0Var.F();
            jI2 = c0Var.F();
        } else {
            jI = c0Var.I();
            jI2 = c0Var.I();
        }
        long j10 = jI;
        long j11 = j6 + jI2;
        long jF0 = o0.F0(j10, 1000000L, jF);
        c0Var.Q(2);
        int iJ = c0Var.J();
        int[] iArr = new int[iJ];
        long[] jArr = new long[iJ];
        long[] jArr2 = new long[iJ];
        long[] jArr3 = new long[iJ];
        long j12 = jF0;
        int i10 = 0;
        long j13 = j10;
        while (i10 < iJ) {
            int iN = c0Var.n();
            if ((iN & Integer.MIN_VALUE) != 0) {
                throw v2.a("Unhandled indirect reference", null);
            }
            long jF2 = c0Var.F();
            iArr[i10] = iN & Integer.MAX_VALUE;
            jArr[i10] = j11;
            jArr3[i10] = j12;
            long j14 = j13 + jF2;
            long[] jArr4 = jArr2;
            long[] jArr5 = jArr3;
            int i11 = iJ;
            int[] iArr2 = iArr;
            long jF1 = o0.F0(j14, 1000000L, jF);
            jArr4[i10] = jF1 - jArr5[i10];
            c0Var.Q(4);
            j11 += (long) iArr2[i10];
            i10++;
            iArr = iArr2;
            jArr3 = jArr5;
            jArr2 = jArr4;
            jArr = jArr;
            iJ = i11;
            j13 = j14;
            j12 = jF1;
        }
        return Pair.create(Long.valueOf(jF0), new com.google.android.exoplayer2.extractor.d(iArr, jArr, jArr2, jArr3));
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public int c(com.google.android.exoplayer2.extractor.m mVar, a0 a0Var) throws IOException {
        while (true) {
            int i10 = this.parserState;
            if (i10 != 0) {
                if (i10 == 1) {
                    J(mVar);
                } else if (i10 == 2) {
                    K(mVar);
                } else if (L(mVar)) {
                    return 0;
                }
            } else if (!I(mVar)) {
                return -1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void d(com.google.android.exoplayer2.extractor.n nVar) {
        this.extractorOutput = nVar;
        f();
        j();
        o oVar = this.sideloadedTrack;
        if (oVar != null) {
            this.trackBundles.put(0, new b(nVar.track(0, oVar.type), new r(this.sideloadedTrack, new long[0], new int[0], 0, new long[0], new int[0], 0L), new c(0, 0, 0, 0)));
            this.extractorOutput.endTracks();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public void seek(long j6, long j10) {
        int size = this.trackBundles.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.trackBundles.valueAt(i10).k();
        }
        this.pendingMetadataSampleInfos.clear();
        this.pendingMetadataSampleBytes = 0;
        this.pendingSeekTimeUs = j10;
        this.containerAtoms.clear();
        f();
    }

    public g(int i10, @Nullable l0 l0Var) {
        this(i10, l0Var, null, Collections.emptyList());
    }

    private static void C(com.google.android.exoplayer2.extractor.mp4.a.C0173a c0173a, SparseArray<b> sparseArray, boolean z6, int i10, byte[] bArr) throws v2 {
        String str;
        b bVarB = B(((com.google.android.exoplayer2.extractor.mp4.a.b) com.google.android.exoplayer2.util.a.e(c0173a.g(1952868452))).data, sparseArray, z6);
        if (bVarB == null) {
            return;
        }
        q qVar = bVarB.fragment;
        long j6 = qVar.nextFragmentDecodeTime;
        boolean z10 = qVar.nextFragmentDecodeTimeIncludesMoov;
        bVarB.k();
        bVarB.currentlyInFragment = true;
        com.google.android.exoplayer2.extractor.mp4.a.b bVarG = c0173a.g(1952867444);
        if (bVarG != null && (i10 & 2) == 0) {
            qVar.nextFragmentDecodeTime = A(bVarG.data);
            qVar.nextFragmentDecodeTimeIncludesMoov = true;
        } else {
            qVar.nextFragmentDecodeTime = j6;
            qVar.nextFragmentDecodeTimeIncludesMoov = z10;
        }
        F(c0173a, bVarB, i10);
        p pVarA = bVarB.moovSampleTable.track.a(((c) com.google.android.exoplayer2.util.a.e(qVar.header)).sampleDescriptionIndex);
        com.google.android.exoplayer2.extractor.mp4.a.b bVarG2 = c0173a.g(1935763834);
        if (bVarG2 != null) {
            v((p) com.google.android.exoplayer2.util.a.e(pVarA), bVarG2.data, qVar);
        }
        com.google.android.exoplayer2.extractor.mp4.a.b bVarG3 = c0173a.g(1935763823);
        if (bVarG3 != null) {
            u(bVarG3.data, qVar);
        }
        com.google.android.exoplayer2.extractor.mp4.a.b bVarG4 = c0173a.g(1936027235);
        if (bVarG4 != null) {
            y(bVarG4.data, qVar);
        }
        if (pVarA != null) {
            str = pVarA.schemeType;
        } else {
            str = null;
        }
        w(c0173a, str, qVar);
        int size = c0173a.leafChildren.size();
        for (int i11 = 0; i11 < size; i11++) {
            com.google.android.exoplayer2.extractor.mp4.a.b bVar = c0173a.leafChildren.get(i11);
            if (bVar.type == 1970628964) {
                G(bVar.data, qVar, bArr);
            }
        }
    }

    private c g(SparseArray<c> sparseArray, int i10) {
        if (sparseArray.size() == 1) {
            return sparseArray.valueAt(0);
        }
        return (c) com.google.android.exoplayer2.util.a.e(sparseArray.get(i10));
    }

    @Nullable
    private static DrmInitData h(List<com.google.android.exoplayer2.extractor.mp4.a.b> list) {
        int size = list.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            com.google.android.exoplayer2.extractor.mp4.a.b bVar = list.get(i10);
            if (bVar.type == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArrD = bVar.data.d();
                UUID uuidF = l.f(bArrD);
                if (uuidF == null) {
                    t.i(TAG, "Skipped pssh atom (failed to extract uuid)");
                } else {
                    arrayList.add(new DrmInitData.SchemeData(uuidF, "video/mp4", bArrD));
                }
            }
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(arrayList);
    }

    @Nullable
    private static b i(SparseArray<b> sparseArray) {
        int size = sparseArray.size();
        b bVar = null;
        long j6 = Long.MAX_VALUE;
        for (int i10 = 0; i10 < size; i10++) {
            b bVarValueAt = sparseArray.valueAt(i10);
            if ((bVarValueAt.currentlyInFragment || bVarValueAt.currentSampleIndex != bVarValueAt.moovSampleTable.sampleCount) && (!bVarValueAt.currentlyInFragment || bVarValueAt.currentTrackRunIndex != bVarValueAt.fragment.trunCount)) {
                long jD = bVarValueAt.d();
                if (jD < j6) {
                    bVar = bVarValueAt;
                    j6 = jD;
                }
            }
        }
        return bVar;
    }

    @Override // com.google.android.exoplayer2.extractor.l
    public boolean b(com.google.android.exoplayer2.extractor.m mVar) throws IOException {
        return n.b(mVar);
    }

    public g(int i10, @Nullable l0 l0Var, @Nullable o oVar) {
        this(i10, l0Var, oVar, Collections.emptyList());
    }

    public g(int i10, @Nullable l0 l0Var, @Nullable o oVar, List<a2> list) {
        this(i10, l0Var, oVar, list, null);
    }

    public g(int i10, @Nullable l0 l0Var, @Nullable o oVar, List<a2> list, @Nullable e0 e0Var) {
        this.flags = i10;
        this.timestampAdjuster = l0Var;
        this.sideloadedTrack = oVar;
        this.closedCaptionFormats = Collections.unmodifiableList(list);
        this.additionalEmsgTrackOutput = e0Var;
        this.eventMessageEncoder = new t2.b();
        this.atomHeader = new c0(16);
        this.nalStartCode = new c0(y.NAL_START_CODE);
        this.nalPrefix = new c0(5);
        this.nalBuffer = new c0();
        byte[] bArr = new byte[16];
        this.scratchBytes = bArr;
        this.scratch = new c0(bArr);
        this.containerAtoms = new ArrayDeque<>();
        this.pendingMetadataSampleInfos = new ArrayDeque<>();
        this.trackBundles = new SparseArray<>();
        this.durationUs = -9223372036854775807L;
        this.pendingSeekTimeUs = -9223372036854775807L;
        this.segmentIndexEarliestPresentationTimeUs = -9223372036854775807L;
        this.extractorOutput = com.google.android.exoplayer2.extractor.n.PLACEHOLDER;
        this.emsgTrackOutputs = new e0[0];
        this.ceaTrackOutputs = new e0[0];
    }
}
