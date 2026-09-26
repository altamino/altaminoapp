package androidx.media3.extractor.ts;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import java.util.Collections;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class H265Reader implements ElementaryStreamReader {
    private static final int AUD_NUT = 35;
    private static final int BLA_W_LP = 16;
    private static final int CRA_NUT = 21;
    private static final int PPS_NUT = 34;
    private static final int PREFIX_SEI_NUT = 39;
    private static final int RASL_R = 9;
    private static final int SPS_NUT = 33;
    private static final int SUFFIX_SEI_NUT = 40;
    private static final String TAG = "H265Reader";
    private static final int VPS_NUT = 32;
    private String formatId;
    private boolean hasOutputFormat;
    private TrackOutput output;
    private SampleReader sampleReader;
    private final SeiReader seiReader;
    private long totalBytesWritten;
    private final boolean[] prefixFlags = new boolean[3];
    private final NalUnitTargetBuffer vps = new NalUnitTargetBuffer(32, 128);
    private final NalUnitTargetBuffer sps = new NalUnitTargetBuffer(33, 128);
    private final NalUnitTargetBuffer pps = new NalUnitTargetBuffer(34, 128);
    private final NalUnitTargetBuffer prefixSei = new NalUnitTargetBuffer(39, 128);
    private final NalUnitTargetBuffer suffixSei = new NalUnitTargetBuffer(40, 128);
    private long pesTimeUs = -9223372036854775807L;
    private final ParsableByteArray seiWrapper = new ParsableByteArray();

    private static final class SampleReader {
        private static final int FIRST_SLICE_FLAG_OFFSET = 2;
        private boolean isFirstPrefixNalUnit;
        private boolean isFirstSlice;
        private boolean lookingForFirstSliceFlag;
        private int nalUnitBytesRead;
        private boolean nalUnitHasKeyframeData;
        private long nalUnitPosition;
        private long nalUnitTimeUs;
        private final TrackOutput output;
        private boolean readingPrefix;
        private boolean readingSample;
        private boolean sampleIsKeyframe;
        private long samplePosition;
        private long sampleTimeUs;

        private static boolean b(int i10) {
            return (32 <= i10 && i10 <= 35) || i10 == 39;
        }

        private static boolean c(int i10) {
            return i10 < 32 || i10 == 40;
        }

        public void f() {
            this.lookingForFirstSliceFlag = false;
            this.isFirstSlice = false;
            this.isFirstPrefixNalUnit = false;
            this.readingSample = false;
            this.readingPrefix = false;
        }

        public void g(long j6, int i10, int i11, long j10, boolean z6) {
            this.isFirstSlice = false;
            this.isFirstPrefixNalUnit = false;
            this.nalUnitTimeUs = j10;
            this.nalUnitBytesRead = 0;
            this.nalUnitPosition = j6;
            if (!c(i11)) {
                if (this.readingSample && !this.readingPrefix) {
                    if (z6) {
                        d(i10);
                    }
                    this.readingSample = false;
                }
                if (b(i11)) {
                    this.isFirstPrefixNalUnit = !this.readingPrefix;
                    this.readingPrefix = true;
                }
            }
            boolean z10 = i11 >= 16 && i11 <= 21;
            this.nalUnitHasKeyframeData = z10;
            this.lookingForFirstSliceFlag = z10 || i11 <= 9;
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
            this.output.f(j6, z6 ? 1 : 0, (int) (this.nalUnitPosition - this.samplePosition), i10, null);
        }

        public void a(long j6, int i10, boolean z6) {
            if (this.readingPrefix && this.isFirstSlice) {
                this.sampleIsKeyframe = this.nalUnitHasKeyframeData;
                this.readingPrefix = false;
            } else if (this.isFirstPrefixNalUnit || this.isFirstSlice) {
                if (z6 && this.readingSample) {
                    d(i10 + ((int) (j6 - this.nalUnitPosition)));
                }
                this.samplePosition = this.nalUnitPosition;
                this.sampleTimeUs = this.nalUnitTimeUs;
                this.sampleIsKeyframe = this.nalUnitHasKeyframeData;
                this.readingSample = true;
            }
        }

        public void e(byte[] bArr, int i10, int i11) {
            if (this.lookingForFirstSliceFlag) {
                int i12 = this.nalUnitBytesRead;
                int i13 = (i10 + 2) - i12;
                if (i13 >= i11) {
                    this.nalUnitBytesRead = i12 + (i11 - i10);
                } else {
                    this.isFirstSlice = (bArr[i13] & 128) != 0;
                    this.lookingForFirstSliceFlag = false;
                }
            }
        }

        public SampleReader(TrackOutput trackOutput) {
            this.output = trackOutput;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void b(long j6, int i10) {
        if (j6 != -9223372036854775807L) {
            this.pesTimeUs = j6;
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
    }

    private void d() {
        Assertions.i(this.output);
        Util.j(this.sampleReader);
    }

    private void e(long j6, int i10, int i11, long j10) {
        this.sampleReader.a(j6, i10, this.hasOutputFormat);
        if (!this.hasOutputFormat) {
            this.vps.b(i11);
            this.sps.b(i11);
            this.pps.b(i11);
            if (this.vps.c() && this.sps.c() && this.pps.c()) {
                this.output.d(g(this.formatId, this.vps, this.sps, this.pps));
                this.hasOutputFormat = true;
            }
        }
        if (this.prefixSei.b(i11)) {
            NalUnitTargetBuffer nalUnitTargetBuffer = this.prefixSei;
            this.seiWrapper.S(this.prefixSei.nalData, NalUnitUtil.q(nalUnitTargetBuffer.nalData, nalUnitTargetBuffer.nalLength));
            this.seiWrapper.V(5);
            this.seiReader.a(j10, this.seiWrapper);
        }
        if (this.suffixSei.b(i11)) {
            NalUnitTargetBuffer nalUnitTargetBuffer2 = this.suffixSei;
            this.seiWrapper.S(this.suffixSei.nalData, NalUnitUtil.q(nalUnitTargetBuffer2.nalData, nalUnitTargetBuffer2.nalLength));
            this.seiWrapper.V(5);
            this.seiReader.a(j10, this.seiWrapper);
        }
    }

    private void f(byte[] bArr, int i10, int i11) {
        this.sampleReader.e(bArr, i10, i11);
        if (!this.hasOutputFormat) {
            this.vps.a(bArr, i10, i11);
            this.sps.a(bArr, i10, i11);
            this.pps.a(bArr, i10, i11);
        }
        this.prefixSei.a(bArr, i10, i11);
        this.suffixSei.a(bArr, i10, i11);
    }

    private static Format g(@Nullable String str, NalUnitTargetBuffer nalUnitTargetBuffer, NalUnitTargetBuffer nalUnitTargetBuffer2, NalUnitTargetBuffer nalUnitTargetBuffer3) {
        int i10 = nalUnitTargetBuffer.nalLength;
        byte[] bArr = new byte[nalUnitTargetBuffer2.nalLength + i10 + nalUnitTargetBuffer3.nalLength];
        System.arraycopy(nalUnitTargetBuffer.nalData, 0, bArr, 0, i10);
        System.arraycopy(nalUnitTargetBuffer2.nalData, 0, bArr, nalUnitTargetBuffer.nalLength, nalUnitTargetBuffer2.nalLength);
        System.arraycopy(nalUnitTargetBuffer3.nalData, 0, bArr, nalUnitTargetBuffer.nalLength + nalUnitTargetBuffer2.nalLength, nalUnitTargetBuffer3.nalLength);
        NalUnitUtil.H265SpsData h265SpsDataH = NalUnitUtil.h(nalUnitTargetBuffer2.nalData, 3, nalUnitTargetBuffer2.nalLength);
        return new Format.Builder().U(str).g0("video/hevc").K(CodecSpecificDataUtil.c(h265SpsDataH.generalProfileSpace, h265SpsDataH.generalTierFlag, h265SpsDataH.generalProfileIdc, h265SpsDataH.generalProfileCompatibilityFlags, h265SpsDataH.constraintBytes, h265SpsDataH.generalLevelIdc)).n0(h265SpsDataH.width).S(h265SpsDataH.height).c0(h265SpsDataH.pixelWidthHeightRatio).V(Collections.singletonList(bArr)).G();
    }

    private void h(long j6, int i10, int i11, long j10) {
        this.sampleReader.g(j6, i10, i11, j10, this.hasOutputFormat);
        if (!this.hasOutputFormat) {
            this.vps.e(i11);
            this.sps.e(i11);
            this.pps.e(i11);
        }
        this.prefixSei.e(i11);
        this.suffixSei.e(i11);
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void a(ParsableByteArray parsableByteArray) {
        d();
        while (parsableByteArray.a() > 0) {
            int iF = parsableByteArray.f();
            int iG = parsableByteArray.g();
            byte[] bArrE = parsableByteArray.e();
            this.totalBytesWritten += (long) parsableByteArray.a();
            this.output.b(parsableByteArray, parsableByteArray.a());
            while (iF < iG) {
                int iC = NalUnitUtil.c(bArrE, iF, iG, this.prefixFlags);
                if (iC == iG) {
                    f(bArrE, iF, iG);
                    return;
                }
                int iE = NalUnitUtil.e(bArrE, iC);
                int i10 = iC - iF;
                if (i10 > 0) {
                    f(bArrE, iF, iC);
                }
                int i11 = iG - iC;
                long j6 = this.totalBytesWritten - ((long) i11);
                e(j6, i11, i10 < 0 ? -i10 : 0, this.pesTimeUs);
                h(j6, i11, iE, this.pesTimeUs);
                iF = iC + 3;
            }
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.totalBytesWritten = 0L;
        this.pesTimeUs = -9223372036854775807L;
        NalUnitUtil.a(this.prefixFlags);
        this.vps.d();
        this.sps.d();
        this.pps.d();
        this.prefixSei.d();
        this.suffixSei.d();
        SampleReader sampleReader = this.sampleReader;
        if (sampleReader != null) {
            sampleReader.f();
        }
    }

    public H265Reader(SeiReader seiReader) {
        this.seiReader = seiReader;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void c(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        this.formatId = trackIdGenerator.b();
        TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.c(), 2);
        this.output = trackOutputTrack;
        this.sampleReader = new SampleReader(trackOutputTrack);
        this.seiReader.b(extractorOutput, trackIdGenerator);
    }
}
