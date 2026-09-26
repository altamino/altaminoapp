package androidx.media3.extractor.ts;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.container.ParsableNalUnitBitArray;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
@UnstableApi
public final class H264Reader implements ElementaryStreamReader {
    private final boolean allowNonIdrKeyframes;
    private final boolean detectAccessUnits;
    private String formatId;
    private boolean hasOutputFormat;
    private TrackOutput output;
    private boolean randomAccessIndicator;
    private SampleReader sampleReader;
    private final SeiReader seiReader;
    private long totalBytesWritten;
    private final boolean[] prefixFlags = new boolean[3];
    private final NalUnitTargetBuffer sps = new NalUnitTargetBuffer(7, 128);
    private final NalUnitTargetBuffer pps = new NalUnitTargetBuffer(8, 128);
    private final NalUnitTargetBuffer sei = new NalUnitTargetBuffer(6, 128);
    private long pesTimeUs = -9223372036854775807L;
    private final ParsableByteArray seiWrapper = new ParsableByteArray();

    private static final class SampleReader {
        private static final int DEFAULT_BUFFER_SIZE = 128;
        private final boolean allowNonIdrKeyframes;
        private final ParsableNalUnitBitArray bitArray;
        private byte[] buffer;
        private int bufferLength;
        private final boolean detectAccessUnits;
        private boolean isFilling;
        private long nalUnitStartPosition;
        private long nalUnitTimeUs;
        private int nalUnitType;
        private final TrackOutput output;
        private SliceHeaderData previousSliceHeader;
        private boolean readingSample;
        private boolean sampleIsKeyframe;
        private long samplePosition;
        private long sampleTimeUs;
        private SliceHeaderData sliceHeader;
        private final SparseArray<NalUnitUtil.SpsData> sps = new SparseArray<>();
        private final SparseArray<NalUnitUtil.PpsData> pps = new SparseArray<>();

        private static final class SliceHeaderData {
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
            private NalUnitUtil.SpsData spsData;

            private SliceHeaderData() {
            }

            public void b() {
                this.hasSliceType = false;
                this.isComplete = false;
            }

            public boolean d() {
                int i10;
                return this.hasSliceType && ((i10 = this.sliceType) == 7 || i10 == 2);
            }

            public void e(NalUnitUtil.SpsData spsData, int i10, int i11, int i12, int i13, boolean z6, boolean z10, boolean z11, boolean z12, int i14, int i15, int i16, int i17, int i18) {
                this.spsData = spsData;
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
            public boolean c(SliceHeaderData sliceHeaderData) {
                int i10;
                int i11;
                int i12;
                boolean z6;
                if (!this.isComplete) {
                    return false;
                }
                if (!sliceHeaderData.isComplete) {
                    return true;
                }
                NalUnitUtil.SpsData spsData = (NalUnitUtil.SpsData) Assertions.i(this.spsData);
                NalUnitUtil.SpsData spsData2 = (NalUnitUtil.SpsData) Assertions.i(sliceHeaderData.spsData);
                return (this.frameNum == sliceHeaderData.frameNum && this.picParameterSetId == sliceHeaderData.picParameterSetId && this.fieldPicFlag == sliceHeaderData.fieldPicFlag && (!this.bottomFieldFlagPresent || !sliceHeaderData.bottomFieldFlagPresent || this.bottomFieldFlag == sliceHeaderData.bottomFieldFlag) && (((i10 = this.nalRefIdc) == (i11 = sliceHeaderData.nalRefIdc) || (i10 != 0 && i11 != 0)) && (((i12 = spsData.picOrderCountType) != 0 || spsData2.picOrderCountType != 0 || (this.picOrderCntLsb == sliceHeaderData.picOrderCntLsb && this.deltaPicOrderCntBottom == sliceHeaderData.deltaPicOrderCntBottom)) && ((i12 != 1 || spsData2.picOrderCountType != 1 || (this.deltaPicOrderCnt0 == sliceHeaderData.deltaPicOrderCnt0 && this.deltaPicOrderCnt1 == sliceHeaderData.deltaPicOrderCnt1)) && (z6 = this.idrPicFlag) == sliceHeaderData.idrPicFlag && (!z6 || this.idrPicId == sliceHeaderData.idrPicId))))) ? false : true;
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
            this.output.f(j6, z6 ? 1 : 0, (int) (this.nalUnitStartPosition - this.samplePosition), i10, null);
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
                                NalUnitUtil.PpsData ppsData = this.pps.get(iH3);
                                NalUnitUtil.SpsData spsData = this.sps.get(ppsData.seqParameterSetId);
                                if (spsData.separateColorPlaneFlag) {
                                    if (!this.bitArray.b(2)) {
                                        return;
                                    } else {
                                        this.bitArray.l(2);
                                    }
                                }
                                if (this.bitArray.b(spsData.frameNumLength)) {
                                    int iE3 = this.bitArray.e(spsData.frameNumLength);
                                    if (!spsData.frameMbsOnlyFlag) {
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
                                            i12 = spsData.picOrderCountType;
                                            if (i12 != 0) {
                                                if (this.bitArray.b(spsData.picOrderCntLsbLength)) {
                                                    iE = this.bitArray.e(spsData.picOrderCntLsbLength);
                                                    if (ppsData.bottomFieldPicOrderInFramePresentFlag || z6) {
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
                                                    this.sliceHeader.e(spsData, iE2, iH2, iE3, iH3, z6, z10, zD, z11, iH, i13, iG, i14, iG2);
                                                    this.isFilling = false;
                                                }
                                                return;
                                            }
                                            if (i12 == 1 || spsData.deltaPicOrderAlwaysZeroFlag) {
                                                i13 = 0;
                                                iG = 0;
                                            } else {
                                                if (!this.bitArray.c()) {
                                                    return;
                                                }
                                                int iG3 = this.bitArray.g();
                                                if (!ppsData.bottomFieldPicOrderInFramePresentFlag || z6) {
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
                                            this.sliceHeader.e(spsData, iE2, iH2, iE3, iH3, z6, z10, zD, z11, iH, i13, iG, i14, iG2);
                                            this.isFilling = false;
                                            i14 = iG;
                                            iG2 = i14;
                                            this.sliceHeader.e(spsData, iE2, iH2, iE3, iH3, z6, z10, zD, z11, iH, i13, iG, i14, iG2);
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
                                    i12 = spsData.picOrderCountType;
                                    if (i12 != 0) {
                                        if (i12 == 1) {
                                        }
                                        i13 = 0;
                                        iG = 0;
                                    } else {
                                        if (this.bitArray.b(spsData.picOrderCntLsbLength)) {
                                            return;
                                        }
                                        iE = this.bitArray.e(spsData.picOrderCntLsbLength);
                                        if (ppsData.bottomFieldPicOrderInFramePresentFlag) {
                                        }
                                        i13 = iE;
                                        iG = 0;
                                    }
                                    i14 = iG;
                                    iG2 = i14;
                                    this.sliceHeader.e(spsData, iE2, iH2, iE3, iH3, z6, z10, zD, z11, iH, i13, iG, i14, iG2);
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

        public void e(NalUnitUtil.PpsData ppsData) {
            this.pps.append(ppsData.picParameterSetId, ppsData);
        }

        public void f(NalUnitUtil.SpsData spsData) {
            this.sps.append(spsData.seqParameterSetId, spsData);
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
            SliceHeaderData sliceHeaderData = this.previousSliceHeader;
            this.previousSliceHeader = this.sliceHeader;
            this.sliceHeader = sliceHeaderData;
            sliceHeaderData.b();
            this.bufferLength = 0;
            this.isFilling = true;
        }

        public SampleReader(TrackOutput trackOutput, boolean z6, boolean z10) {
            this.output = trackOutput;
            this.allowNonIdrKeyframes = z6;
            this.detectAccessUnits = z10;
            this.previousSliceHeader = new SliceHeaderData();
            this.sliceHeader = new SliceHeaderData();
            byte[] bArr = new byte[128];
            this.buffer = bArr;
            this.bitArray = new ParsableNalUnitBitArray(bArr, 0, 0);
            g();
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void b(long j6, int i10) {
        if (j6 != -9223372036854775807L) {
            this.pesTimeUs = j6;
        }
        this.randomAccessIndicator |= (i10 & 2) != 0;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
    }

    private void d() {
        Assertions.i(this.output);
        Util.j(this.sampleReader);
    }

    private void e(long j6, int i10, int i11, long j10) {
        if (!this.hasOutputFormat || this.sampleReader.c()) {
            this.sps.b(i11);
            this.pps.b(i11);
            if (this.hasOutputFormat) {
                if (this.sps.c()) {
                    NalUnitTargetBuffer nalUnitTargetBuffer = this.sps;
                    this.sampleReader.f(NalUnitUtil.l(nalUnitTargetBuffer.nalData, 3, nalUnitTargetBuffer.nalLength));
                    this.sps.d();
                } else if (this.pps.c()) {
                    NalUnitTargetBuffer nalUnitTargetBuffer2 = this.pps;
                    this.sampleReader.e(NalUnitUtil.j(nalUnitTargetBuffer2.nalData, 3, nalUnitTargetBuffer2.nalLength));
                    this.pps.d();
                }
            } else if (this.sps.c() && this.pps.c()) {
                ArrayList arrayList = new ArrayList();
                NalUnitTargetBuffer nalUnitTargetBuffer3 = this.sps;
                arrayList.add(Arrays.copyOf(nalUnitTargetBuffer3.nalData, nalUnitTargetBuffer3.nalLength));
                NalUnitTargetBuffer nalUnitTargetBuffer4 = this.pps;
                arrayList.add(Arrays.copyOf(nalUnitTargetBuffer4.nalData, nalUnitTargetBuffer4.nalLength));
                NalUnitTargetBuffer nalUnitTargetBuffer5 = this.sps;
                NalUnitUtil.SpsData spsDataL = NalUnitUtil.l(nalUnitTargetBuffer5.nalData, 3, nalUnitTargetBuffer5.nalLength);
                NalUnitTargetBuffer nalUnitTargetBuffer6 = this.pps;
                NalUnitUtil.PpsData ppsDataJ = NalUnitUtil.j(nalUnitTargetBuffer6.nalData, 3, nalUnitTargetBuffer6.nalLength);
                this.output.d(new Format.Builder().U(this.formatId).g0("video/avc").K(CodecSpecificDataUtil.a(spsDataL.profileIdc, spsDataL.constraintsFlagsAndReservedZero2Bits, spsDataL.levelIdc)).n0(spsDataL.width).S(spsDataL.height).c0(spsDataL.pixelWidthHeightRatio).V(arrayList).G());
                this.hasOutputFormat = true;
                this.sampleReader.f(spsDataL);
                this.sampleReader.e(ppsDataJ);
                this.sps.d();
                this.pps.d();
            }
        }
        if (this.sei.b(i11)) {
            NalUnitTargetBuffer nalUnitTargetBuffer7 = this.sei;
            this.seiWrapper.S(this.sei.nalData, NalUnitUtil.q(nalUnitTargetBuffer7.nalData, nalUnitTargetBuffer7.nalLength));
            this.seiWrapper.U(4);
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

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.totalBytesWritten = 0L;
        this.randomAccessIndicator = false;
        this.pesTimeUs = -9223372036854775807L;
        NalUnitUtil.a(this.prefixFlags);
        this.sps.d();
        this.pps.d();
        this.sei.d();
        SampleReader sampleReader = this.sampleReader;
        if (sampleReader != null) {
            sampleReader.g();
        }
    }

    public H264Reader(SeiReader seiReader, boolean z6, boolean z10) {
        this.seiReader = seiReader;
        this.allowNonIdrKeyframes = z6;
        this.detectAccessUnits = z10;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void a(ParsableByteArray parsableByteArray) {
        int i10;
        d();
        int iF = parsableByteArray.f();
        int iG = parsableByteArray.g();
        byte[] bArrE = parsableByteArray.e();
        this.totalBytesWritten += (long) parsableByteArray.a();
        this.output.b(parsableByteArray, parsableByteArray.a());
        while (true) {
            int iC = NalUnitUtil.c(bArrE, iF, iG, this.prefixFlags);
            if (iC == iG) {
                f(bArrE, iF, iG);
                return;
            }
            int iF2 = NalUnitUtil.f(bArrE, iC);
            int i11 = iC - iF;
            if (i11 > 0) {
                f(bArrE, iF, iC);
            }
            int i12 = iG - iC;
            long j6 = this.totalBytesWritten - ((long) i12);
            if (i11 < 0) {
                i10 = -i11;
            } else {
                i10 = 0;
            }
            e(j6, i12, i10, this.pesTimeUs);
            g(j6, iF2, this.pesTimeUs);
            iF = iC + 3;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void c(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        this.formatId = trackIdGenerator.b();
        TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.c(), 2);
        this.output = trackOutputTrack;
        this.sampleReader = new SampleReader(trackOutputTrack, this.allowNonIdrKeyframes, this.detectAccessUnits);
        this.seiReader.b(extractorOutput, trackIdGenerator);
    }
}
