package com.google.android.exoplayer2.extractor.ts;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.util.o0;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
public final class p implements m {
    private final boolean allowNonIdrKeyframes;
    private final boolean detectAccessUnits;
    private String formatId;
    private boolean hasOutputFormat;
    private com.google.android.exoplayer2.extractor.e0 output;
    private boolean randomAccessIndicator;
    private b sampleReader;
    private final d0 seiReader;
    private long totalBytesWritten;
    private final boolean[] prefixFlags = new boolean[3];
    private final u sps = new u(7, 128);
    private final u pps = new u(8, 128);
    private final u sei = new u(6, 128);
    private long pesTimeUs = -9223372036854775807L;
    private final com.google.android.exoplayer2.util.c0 seiWrapper = new com.google.android.exoplayer2.util.c0();

    private static final class b {
        private static final int DEFAULT_BUFFER_SIZE = 128;
        private final boolean allowNonIdrKeyframes;
        private final com.google.android.exoplayer2.util.d0 bitArray;
        private byte[] buffer;
        private int bufferLength;
        private final boolean detectAccessUnits;
        private boolean isFilling;
        private long nalUnitStartPosition;
        private long nalUnitTimeUs;
        private int nalUnitType;
        private final com.google.android.exoplayer2.extractor.e0 output;
        private a previousSliceHeader;
        private boolean readingSample;
        private boolean sampleIsKeyframe;
        private long samplePosition;
        private long sampleTimeUs;
        private a sliceHeader;
        private final SparseArray<com.google.android.exoplayer2.util.y.c> sps = new SparseArray<>();
        private final SparseArray<com.google.android.exoplayer2.util.y.b> pps = new SparseArray<>();

        private static final class a {
            private static final int SLICE_TYPE_ALL_I = 7;
            private static final int SLICE_TYPE_I = 2;
            private boolean bottomFieldFlag;
            private boolean bottomFieldFlagPresent;
            private int deltaPicOrderCnt0;
            private int deltaPicOrderCnt1;
            private int deltaPicOrderCntBottom;
            private boolean fieldPicFlag;
            private int frameNum;
            private boolean hasSliceType;
            private boolean idrPicFlag;
            private int idrPicId;
            private boolean isComplete;
            private int nalRefIdc;
            private int picOrderCntLsb;
            private int picParameterSetId;
            private int sliceType;

            @Nullable
            private com.google.android.exoplayer2.util.y.c spsData;

            private a() {
            }

            public void b() {
                this.hasSliceType = false;
                this.isComplete = false;
            }

            public boolean d() {
                int i10;
                return this.hasSliceType && ((i10 = this.sliceType) == 7 || i10 == 2);
            }

            public void e(com.google.android.exoplayer2.util.y.c cVar, int i10, int i11, int i12, int i13, boolean z6, boolean z10, boolean z11, boolean z12, int i14, int i15, int i16, int i17, int i18) {
                this.spsData = cVar;
                this.nalRefIdc = i10;
                this.sliceType = i11;
                this.frameNum = i12;
                this.picParameterSetId = i13;
                this.fieldPicFlag = z6;
                this.bottomFieldFlagPresent = z10;
                this.bottomFieldFlag = z11;
                this.idrPicFlag = z12;
                this.idrPicId = i14;
                this.picOrderCntLsb = i15;
                this.deltaPicOrderCntBottom = i16;
                this.deltaPicOrderCnt0 = i17;
                this.deltaPicOrderCnt1 = i18;
                this.isComplete = true;
                this.hasSliceType = true;
            }

            public void f(int i10) {
                this.sliceType = i10;
                this.hasSliceType = true;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean c(a aVar) {
                int i10;
                int i11;
                int i12;
                boolean z6;
                if (!this.isComplete) {
                    return false;
                }
                if (!aVar.isComplete) {
                    return true;
                }
                com.google.android.exoplayer2.util.y.c cVar = (com.google.android.exoplayer2.util.y.c) com.google.android.exoplayer2.util.a.i(this.spsData);
                com.google.android.exoplayer2.util.y.c cVar2 = (com.google.android.exoplayer2.util.y.c) com.google.android.exoplayer2.util.a.i(aVar.spsData);
                return (this.frameNum == aVar.frameNum && this.picParameterSetId == aVar.picParameterSetId && this.fieldPicFlag == aVar.fieldPicFlag && (!this.bottomFieldFlagPresent || !aVar.bottomFieldFlagPresent || this.bottomFieldFlag == aVar.bottomFieldFlag) && (((i10 = this.nalRefIdc) == (i11 = aVar.nalRefIdc) || (i10 != 0 && i11 != 0)) && (((i12 = cVar.picOrderCountType) != 0 || cVar2.picOrderCountType != 0 || (this.picOrderCntLsb == aVar.picOrderCntLsb && this.deltaPicOrderCntBottom == aVar.deltaPicOrderCntBottom)) && ((i12 != 1 || cVar2.picOrderCountType != 1 || (this.deltaPicOrderCnt0 == aVar.deltaPicOrderCnt0 && this.deltaPicOrderCnt1 == aVar.deltaPicOrderCnt1)) && (z6 = this.idrPicFlag) == aVar.idrPicFlag && (!z6 || this.idrPicId == aVar.idrPicId))))) ? false : true;
            }
        }

        public boolean c() {
            return this.detectAccessUnits;
        }

        public void g() {
            this.isFilling = false;
            this.readingSample = false;
            this.sliceHeader.b();
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        private void d(int i10) {
            long j6 = this.sampleTimeUs;
            if (j6 == -9223372036854775807L) {
                return;
            }
            boolean z6 = this.sampleIsKeyframe;
            this.output.e(j6, z6 ? 1 : 0, (int) (this.nalUnitStartPosition - this.samplePosition), i10, null);
        }

        /* JADX WARN: Code duplicated, block: B:53:0x0100  */
        /* JADX WARN: Code duplicated, block: B:54:0x0103  */
        /* JADX WARN: Code duplicated, block: B:56:0x0107  */
        /* JADX WARN: Code duplicated, block: B:58:0x010f A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:59:0x0110  */
        /* JADX WARN: Code duplicated, block: B:60:0x0119  */
        /* JADX WARN: Code duplicated, block: B:63:0x011f  */
        /* JADX WARN: Code duplicated, block: B:65:0x0129 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:66:0x012a  */
        /* JADX WARN: Code duplicated, block: B:76:0x0157  */
        public void a(byte[] bArr, int i10, int i11) {
            boolean z6;
            boolean z10;
            boolean zD;
            boolean z11;
            int iH;
            int i12;
            int i13;
            int iG;
            int i14;
            int iG2;
            int iE;
            if (this.isFilling) {
                int i15 = i11 - i10;
                byte[] bArr2 = this.buffer;
                int length = bArr2.length;
                int i16 = this.bufferLength;
                if (length < i16 + i15) {
                    this.buffer = Arrays.copyOf(bArr2, (i16 + i15) * 2);
                }
                System.arraycopy(bArr, i10, this.buffer, this.bufferLength, i15);
                int i17 = this.bufferLength + i15;
                this.bufferLength = i17;
                this.bitArray.i(this.buffer, 0, i17);
                if (this.bitArray.b(8)) {
                    this.bitArray.k();
                    int iE2 = this.bitArray.e(2);
                    this.bitArray.l(5);
                    if (this.bitArray.c()) {
                        this.bitArray.h();
                        if (this.bitArray.c()) {
                            int iH2 = this.bitArray.h();
                            if (!this.detectAccessUnits) {
                                this.isFilling = false;
                                this.sliceHeader.f(iH2);
                                return;
                            }
                            if (this.bitArray.c()) {
                                int iH3 = this.bitArray.h();
                                if (this.pps.indexOfKey(iH3) < 0) {
                                    this.isFilling = false;
                                    return;
                                }
                                com.google.android.exoplayer2.util.y.b bVar = this.pps.get(iH3);
                                com.google.android.exoplayer2.util.y.c cVar = this.sps.get(bVar.seqParameterSetId);
                                if (cVar.separateColorPlaneFlag) {
                                    if (!this.bitArray.b(2)) {
                                        return;
                                    } else {
                                        this.bitArray.l(2);
                                    }
                                }
                                if (this.bitArray.b(cVar.frameNumLength)) {
                                    int iE3 = this.bitArray.e(cVar.frameNumLength);
                                    if (!cVar.frameMbsOnlyFlag) {
                                        if (this.bitArray.b(1)) {
                                            boolean zD2 = this.bitArray.d();
                                            if (!zD2) {
                                                z6 = zD2;
                                                z10 = false;
                                            } else {
                                                if (!this.bitArray.b(1)) {
                                                    return;
                                                }
                                                z6 = zD2;
                                                z10 = true;
                                                zD = this.bitArray.d();
                                            }
                                            if (this.nalUnitType == 5) {
                                                z11 = true;
                                            } else {
                                                z11 = false;
                                            }
                                            if (z11) {
                                                iH = 0;
                                            } else if (!this.bitArray.c()) {
                                                return;
                                            } else {
                                                iH = this.bitArray.h();
                                            }
                                            i12 = cVar.picOrderCountType;
                                            if (i12 != 0) {
                                                if (this.bitArray.b(cVar.picOrderCntLsbLength)) {
                                                    iE = this.bitArray.e(cVar.picOrderCntLsbLength);
                                                    if (bVar.bottomFieldPicOrderInFramePresentFlag || z6) {
                                                        i13 = iE;
                                                        iG = 0;
                                                    } else {
                                                        if (!this.bitArray.c()) {
                                                            return;
                                                        }
                                                        iG = this.bitArray.g();
                                                        i13 = iE;
                                                        i14 = 0;
                                                    }
                                                    iG2 = i14;
                                                    this.sliceHeader.e(cVar, iE2, iH2, iE3, iH3, z6, z10, zD, z11, iH, i13, iG, i14, iG2);
                                                    this.isFilling = false;
                                                }
                                                return;
                                            }
                                            if (i12 == 1 || cVar.deltaPicOrderAlwaysZeroFlag) {
                                                i13 = 0;
                                                iG = 0;
                                            } else {
                                                if (!this.bitArray.c()) {
                                                    return;
                                                }
                                                int iG3 = this.bitArray.g();
                                                if (!bVar.bottomFieldPicOrderInFramePresentFlag || z6) {
                                                    i14 = iG3;
                                                    i13 = 0;
                                                    iG = 0;
                                                    iG2 = 0;
                                                } else {
                                                    if (!this.bitArray.c()) {
                                                        return;
                                                    }
                                                    iG2 = this.bitArray.g();
                                                    i14 = iG3;
                                                    i13 = 0;
                                                    iG = 0;
                                                }
                                            }
                                            this.sliceHeader.e(cVar, iE2, iH2, iE3, iH3, z6, z10, zD, z11, iH, i13, iG, i14, iG2);
                                            this.isFilling = false;
                                            i14 = iG;
                                            iG2 = i14;
                                            this.sliceHeader.e(cVar, iE2, iH2, iE3, iH3, z6, z10, zD, z11, iH, i13, iG, i14, iG2);
                                            this.isFilling = false;
                                        }
                                        return;
                                    }
                                    z6 = false;
                                    z10 = false;
                                    zD = z10;
                                    if (this.nalUnitType == 5) {
                                        z11 = true;
                                    } else {
                                        z11 = false;
                                    }
                                    if (z11) {
                                        iH = 0;
                                    } else if (!this.bitArray.c()) {
                                        return;
                                    } else {
                                        iH = this.bitArray.h();
                                    }
                                    i12 = cVar.picOrderCountType;
                                    if (i12 != 0) {
                                        if (i12 == 1) {
                                        }
                                        i13 = 0;
                                        iG = 0;
                                    } else {
                                        if (this.bitArray.b(cVar.picOrderCntLsbLength)) {
                                            return;
                                        }
                                        iE = this.bitArray.e(cVar.picOrderCntLsbLength);
                                        if (bVar.bottomFieldPicOrderInFramePresentFlag) {
                                        }
                                        i13 = iE;
                                        iG = 0;
                                    }
                                    i14 = iG;
                                    iG2 = i14;
                                    this.sliceHeader.e(cVar, iE2, iH2, iE3, iH3, z6, z10, zD, z11, iH, i13, iG, i14, iG2);
                                    this.isFilling = false;
                                }
                            }
                        }
                    }
                }
            }
        }

        public boolean b(long j6, int i10, boolean z6, boolean z10) {
            boolean z11 = false;
            if (this.nalUnitType == 9 || (this.detectAccessUnits && this.sliceHeader.c(this.previousSliceHeader))) {
                if (z6 && this.readingSample) {
                    d(i10 + ((int) (j6 - this.nalUnitStartPosition)));
                }
                this.samplePosition = this.nalUnitStartPosition;
                this.sampleTimeUs = this.nalUnitTimeUs;
                this.sampleIsKeyframe = false;
                this.readingSample = true;
            }
            if (this.allowNonIdrKeyframes) {
                z10 = this.sliceHeader.d();
            }
            boolean z12 = this.sampleIsKeyframe;
            int i11 = this.nalUnitType;
            if (i11 == 5 || (z10 && i11 == 1)) {
                z11 = true;
            }
            boolean z13 = z12 | z11;
            this.sampleIsKeyframe = z13;
            return z13;
        }

        public void e(com.google.android.exoplayer2.util.y.b bVar) {
            this.pps.append(bVar.picParameterSetId, bVar);
        }

        public void f(com.google.android.exoplayer2.util.y.c cVar) {
            this.sps.append(cVar.seqParameterSetId, cVar);
        }

        public void h(long j6, int i10, long j10) {
            this.nalUnitType = i10;
            this.nalUnitTimeUs = j10;
            this.nalUnitStartPosition = j6;
            if (!this.allowNonIdrKeyframes || i10 != 1) {
                if (!this.detectAccessUnits) {
                    return;
                }
                if (i10 != 5 && i10 != 1 && i10 != 2) {
                    return;
                }
            }
            a aVar = this.previousSliceHeader;
            this.previousSliceHeader = this.sliceHeader;
            this.sliceHeader = aVar;
            aVar.b();
            this.bufferLength = 0;
            this.isFilling = true;
        }

        public b(com.google.android.exoplayer2.extractor.e0 e0Var, boolean z6, boolean z10) {
            this.output = e0Var;
            this.allowNonIdrKeyframes = z6;
            this.detectAccessUnits = z10;
            this.previousSliceHeader = new a();
            this.sliceHeader = new a();
            byte[] bArr = new byte[128];
            this.buffer = bArr;
            this.bitArray = new com.google.android.exoplayer2.util.d0(bArr, 0, 0);
            g();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void b(long j6, int i10) {
        if (j6 != -9223372036854775807L) {
            this.pesTimeUs = j6;
        }
        this.randomAccessIndicator |= (i10 & 2) != 0;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void packetFinished() {
    }

    private void a() {
        com.google.android.exoplayer2.util.a.i(this.output);
        o0.j(this.sampleReader);
    }

    private void e(long j6, int i10, int i11, long j10) {
        if (!this.hasOutputFormat || this.sampleReader.c()) {
            this.sps.b(i11);
            this.pps.b(i11);
            if (this.hasOutputFormat) {
                if (this.sps.c()) {
                    u uVar = this.sps;
                    this.sampleReader.f(com.google.android.exoplayer2.util.y.l(uVar.nalData, 3, uVar.nalLength));
                    this.sps.d();
                } else if (this.pps.c()) {
                    u uVar2 = this.pps;
                    this.sampleReader.e(com.google.android.exoplayer2.util.y.j(uVar2.nalData, 3, uVar2.nalLength));
                    this.pps.d();
                }
            } else if (this.sps.c() && this.pps.c()) {
                ArrayList arrayList = new ArrayList();
                u uVar3 = this.sps;
                arrayList.add(Arrays.copyOf(uVar3.nalData, uVar3.nalLength));
                u uVar4 = this.pps;
                arrayList.add(Arrays.copyOf(uVar4.nalData, uVar4.nalLength));
                u uVar5 = this.sps;
                com.google.android.exoplayer2.util.y.c cVarL = com.google.android.exoplayer2.util.y.l(uVar5.nalData, 3, uVar5.nalLength);
                u uVar6 = this.pps;
                com.google.android.exoplayer2.util.y.b bVarJ = com.google.android.exoplayer2.util.y.j(uVar6.nalData, 3, uVar6.nalLength);
                this.output.d(new a2.b().S(this.formatId).e0("video/avc").I(com.google.android.exoplayer2.util.e.a(cVarL.profileIdc, cVarL.constraintsFlagsAndReservedZero2Bits, cVarL.levelIdc)).j0(cVarL.width).Q(cVarL.height).a0(cVarL.pixelWidthHeightRatio).T(arrayList).E());
                this.hasOutputFormat = true;
                this.sampleReader.f(cVarL);
                this.sampleReader.e(bVarJ);
                this.sps.d();
                this.pps.d();
            }
        }
        if (this.sei.b(i11)) {
            u uVar7 = this.sei;
            this.seiWrapper.N(this.sei.nalData, com.google.android.exoplayer2.util.y.q(uVar7.nalData, uVar7.nalLength));
            this.seiWrapper.P(4);
            this.seiReader.a(j10, this.seiWrapper);
        }
        if (this.sampleReader.b(j6, i10, this.hasOutputFormat, this.randomAccessIndicator)) {
            this.randomAccessIndicator = false;
        }
    }

    private void f(byte[] bArr, int i10, int i11) {
        if (!this.hasOutputFormat || this.sampleReader.c()) {
            this.sps.a(bArr, i10, i11);
            this.pps.a(bArr, i10, i11);
        }
        this.sei.a(bArr, i10, i11);
        this.sampleReader.a(bArr, i10, i11);
    }

    private void g(long j6, int i10, long j10) {
        if (!this.hasOutputFormat || this.sampleReader.c()) {
            this.sps.e(i10);
            this.pps.e(i10);
        }
        this.sei.e(i10);
        this.sampleReader.h(j6, i10, j10);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void seek() {
        this.totalBytesWritten = 0L;
        this.randomAccessIndicator = false;
        this.pesTimeUs = -9223372036854775807L;
        com.google.android.exoplayer2.util.y.a(this.prefixFlags);
        this.sps.d();
        this.pps.d();
        this.sei.d();
        b bVar = this.sampleReader;
        if (bVar != null) {
            bVar.g();
        }
    }

    public p(d0 d0Var, boolean z6, boolean z10) {
        this.seiReader = d0Var;
        this.allowNonIdrKeyframes = z6;
        this.detectAccessUnits = z10;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c(com.google.android.exoplayer2.util.c0 c0Var) {
        int i10;
        a();
        int iE = c0Var.e();
        int iF = c0Var.f();
        byte[] bArrD = c0Var.d();
        this.totalBytesWritten += (long) c0Var.a();
        this.output.c(c0Var, c0Var.a());
        while (true) {
            int iC = com.google.android.exoplayer2.util.y.c(bArrD, iE, iF, this.prefixFlags);
            if (iC == iF) {
                f(bArrD, iE, iF);
                return;
            }
            int iF2 = com.google.android.exoplayer2.util.y.f(bArrD, iC);
            int i11 = iC - iE;
            if (i11 > 0) {
                f(bArrD, iE, iC);
            }
            int i12 = iF - iC;
            long j6 = this.totalBytesWritten - ((long) i12);
            if (i11 < 0) {
                i10 = -i11;
            } else {
                i10 = 0;
            }
            e(j6, i12, i10, this.pesTimeUs);
            g(j6, iF2, this.pesTimeUs);
            iE = iC + 3;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.n nVar, i0.d dVar) {
        dVar.a();
        this.formatId = dVar.b();
        com.google.android.exoplayer2.extractor.e0 e0VarTrack = nVar.track(dVar.c(), 2);
        this.output = e0VarTrack;
        this.sampleReader = new b(e0VarTrack, this.allowNonIdrKeyframes, this.detectAccessUnits);
        this.seiReader.b(nVar, dVar);
    }
}
