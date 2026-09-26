package androidx.media3.extractor.ts;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public final class H263Reader implements ElementaryStreamReader {
    private static final float[] PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    private static final int START_CODE_VALUE_GROUP_OF_VOP = 179;
    private static final int START_CODE_VALUE_MAX_VIDEO_OBJECT = 31;
    private static final int START_CODE_VALUE_UNSET = -1;
    private static final int START_CODE_VALUE_USER_DATA = 178;
    private static final int START_CODE_VALUE_VISUAL_OBJECT = 181;
    private static final int START_CODE_VALUE_VISUAL_OBJECT_SEQUENCE = 176;
    private static final int START_CODE_VALUE_VOP = 182;
    private static final String TAG = "H263Reader";
    private static final int VIDEO_OBJECT_LAYER_SHAPE_RECTANGULAR = 0;
    private final CsdBuffer csdBuffer;
    private String formatId;
    private boolean hasOutputFormat;
    private TrackOutput output;
    private long pesTimeUs;
    private final boolean[] prefixFlags;
    private SampleReader sampleReader;
    private long totalBytesWritten;

    @Nullable
    private final NalUnitTargetBuffer userData;

    @Nullable
    private final ParsableByteArray userDataParsable;

    @Nullable
    private final UserDataReader userDataReader;

    private static final class CsdBuffer {
        private static final byte[] START_CODE = {0, 0, 1};
        private static final int STATE_EXPECT_VIDEO_OBJECT_LAYER_START = 3;
        private static final int STATE_EXPECT_VIDEO_OBJECT_START = 2;
        private static final int STATE_EXPECT_VISUAL_OBJECT_START = 1;
        private static final int STATE_SKIP_TO_VISUAL_OBJECT_SEQUENCE_START = 0;
        private static final int STATE_WAIT_FOR_VOP_START = 4;
        public byte[] data;
        private boolean isFilling;
        public int length;
        private int state;
        public int volStartPosition;

        public void c() {
            this.isFilling = false;
            this.length = 0;
            this.state = 0;
        }

        public void a(byte[] bArr, int i10, int i11) {
            if (this.isFilling) {
                int i12 = i11 - i10;
                byte[] bArr2 = this.data;
                int length = bArr2.length;
                int i13 = this.length;
                if (length < i13 + i12) {
                    this.data = Arrays.copyOf(bArr2, (i13 + i12) * 2);
                }
                System.arraycopy(bArr, i10, this.data, this.length, i12);
                this.length += i12;
            }
        }

        public boolean b(int i10, int i11) {
            int i12 = this.state;
            if (i12 != 0) {
                if (i12 != 1) {
                    if (i12 != 2) {
                        if (i12 != 3) {
                            if (i12 != 4) {
                                throw new IllegalStateException();
                            }
                            if (i10 == H263Reader.START_CODE_VALUE_GROUP_OF_VOP || i10 == H263Reader.START_CODE_VALUE_VISUAL_OBJECT) {
                                this.length -= i11;
                                this.isFilling = false;
                                return true;
                            }
                        } else if ((i10 & 240) != 32) {
                            Log.i(H263Reader.TAG, "Unexpected start code value");
                            c();
                        } else {
                            this.volStartPosition = this.length;
                            this.state = 4;
                        }
                    } else if (i10 > 31) {
                        Log.i(H263Reader.TAG, "Unexpected start code value");
                        c();
                    } else {
                        this.state = 3;
                    }
                } else if (i10 != H263Reader.START_CODE_VALUE_VISUAL_OBJECT) {
                    Log.i(H263Reader.TAG, "Unexpected start code value");
                    c();
                } else {
                    this.state = 2;
                }
            } else if (i10 == H263Reader.START_CODE_VALUE_VISUAL_OBJECT_SEQUENCE) {
                this.state = 1;
                this.isFilling = true;
            }
            byte[] bArr = START_CODE;
            a(bArr, 0, bArr.length);
            return false;
        }

        public CsdBuffer(int i10) {
            this.data = new byte[i10];
        }
    }

    private static final class SampleReader {
        private static final int OFFSET_VOP_CODING_TYPE = 1;
        private static final int VOP_CODING_TYPE_INTRA = 0;
        private boolean lookingForVopCodingType;
        private final TrackOutput output;
        private boolean readingSample;
        private boolean sampleIsKeyframe;
        private long samplePosition;
        private long sampleTimeUs;
        private int startCodeValue;
        private int vopBytesRead;

        public void c(int i10, long j6) {
            this.startCodeValue = i10;
            this.sampleIsKeyframe = false;
            this.readingSample = i10 == H263Reader.START_CODE_VALUE_VOP || i10 == H263Reader.START_CODE_VALUE_GROUP_OF_VOP;
            this.lookingForVopCodingType = i10 == H263Reader.START_CODE_VALUE_VOP;
            this.vopBytesRead = 0;
            this.sampleTimeUs = j6;
        }

        public void d() {
            this.readingSample = false;
            this.lookingForVopCodingType = false;
            this.sampleIsKeyframe = false;
            this.startCodeValue = -1;
        }

        public void a(byte[] bArr, int i10, int i11) {
            if (this.lookingForVopCodingType) {
                int i12 = this.vopBytesRead;
                int i13 = (i10 + 1) - i12;
                if (i13 >= i11) {
                    this.vopBytesRead = i12 + (i11 - i10);
                } else {
                    this.sampleIsKeyframe = ((bArr[i13] & 192) >> 6) == 0;
                    this.lookingForVopCodingType = false;
                }
            }
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
        public void b(long j6, int i10, boolean z6) {
            if (this.startCodeValue == H263Reader.START_CODE_VALUE_VOP && z6 && this.readingSample) {
                long j10 = this.sampleTimeUs;
                if (j10 != -9223372036854775807L) {
                    this.output.f(j10, this.sampleIsKeyframe ? 1 : 0, (int) (j6 - this.samplePosition), i10, null);
                }
            }
            if (this.startCodeValue != H263Reader.START_CODE_VALUE_GROUP_OF_VOP) {
                this.samplePosition = j6;
            }
        }

        public SampleReader(TrackOutput trackOutput) {
            this.output = trackOutput;
        }
    }

    public H263Reader() {
        this(null);
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

    H263Reader(@Nullable UserDataReader userDataReader) {
        this.userDataReader = userDataReader;
        this.prefixFlags = new boolean[4];
        this.csdBuffer = new CsdBuffer(128);
        this.pesTimeUs = -9223372036854775807L;
        if (userDataReader != null) {
            this.userData = new NalUnitTargetBuffer(START_CODE_VALUE_USER_DATA, 128);
            this.userDataParsable = new ParsableByteArray();
        } else {
            this.userData = null;
            this.userDataParsable = null;
        }
    }

    private static Format d(CsdBuffer csdBuffer, int i10, String str) {
        byte[] bArrCopyOf = Arrays.copyOf(csdBuffer.data, csdBuffer.length);
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArrCopyOf);
        parsableBitArray.s(i10);
        parsableBitArray.s(4);
        parsableBitArray.q();
        parsableBitArray.r(8);
        if (parsableBitArray.g()) {
            parsableBitArray.r(4);
            parsableBitArray.r(3);
        }
        int iH = parsableBitArray.h(4);
        float f = 1.0f;
        if (iH == 15) {
            int iH2 = parsableBitArray.h(8);
            int iH3 = parsableBitArray.h(8);
            if (iH3 == 0) {
                Log.i(TAG, "Invalid aspect ratio");
            } else {
                f = iH2 / iH3;
            }
        } else {
            float[] fArr = PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO;
            if (iH < fArr.length) {
                f = fArr[iH];
            } else {
                Log.i(TAG, "Invalid aspect ratio");
            }
        }
        if (parsableBitArray.g()) {
            parsableBitArray.r(2);
            parsableBitArray.r(1);
            if (parsableBitArray.g()) {
                parsableBitArray.r(15);
                parsableBitArray.q();
                parsableBitArray.r(15);
                parsableBitArray.q();
                parsableBitArray.r(15);
                parsableBitArray.q();
                parsableBitArray.r(3);
                parsableBitArray.r(11);
                parsableBitArray.q();
                parsableBitArray.r(15);
                parsableBitArray.q();
            }
        }
        if (parsableBitArray.h(2) != 0) {
            Log.i(TAG, "Unhandled video object layer shape");
        }
        parsableBitArray.q();
        int iH4 = parsableBitArray.h(16);
        parsableBitArray.q();
        if (parsableBitArray.g()) {
            if (iH4 == 0) {
                Log.i(TAG, "Invalid vop_increment_time_resolution");
            } else {
                int i11 = 0;
                for (int i12 = iH4 - 1; i12 > 0; i12 >>= 1) {
                    i11++;
                }
                parsableBitArray.r(i11);
            }
        }
        parsableBitArray.q();
        int iH5 = parsableBitArray.h(13);
        parsableBitArray.q();
        int iH6 = parsableBitArray.h(13);
        parsableBitArray.q();
        parsableBitArray.q();
        return new Format.Builder().U(str).g0("video/mp4v-es").n0(iH5).S(iH6).c0(f).V(Collections.singletonList(bArrCopyOf)).G();
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void a(ParsableByteArray parsableByteArray) {
        Assertions.i(this.sampleReader);
        Assertions.i(this.output);
        int iF = parsableByteArray.f();
        int iG = parsableByteArray.g();
        byte[] bArrE = parsableByteArray.e();
        this.totalBytesWritten += (long) parsableByteArray.a();
        this.output.b(parsableByteArray, parsableByteArray.a());
        while (true) {
            int iC = NalUnitUtil.c(bArrE, iF, iG, this.prefixFlags);
            if (iC == iG) {
                break;
            }
            int i10 = iC + 3;
            int i11 = parsableByteArray.e()[i10] & 255;
            int i12 = iC - iF;
            int i13 = 0;
            if (!this.hasOutputFormat) {
                if (i12 > 0) {
                    this.csdBuffer.a(bArrE, iF, iC);
                }
                if (this.csdBuffer.b(i11, i12 < 0 ? -i12 : 0)) {
                    TrackOutput trackOutput = this.output;
                    CsdBuffer csdBuffer = this.csdBuffer;
                    trackOutput.d(d(csdBuffer, csdBuffer.volStartPosition, (String) Assertions.e(this.formatId)));
                    this.hasOutputFormat = true;
                }
            }
            this.sampleReader.a(bArrE, iF, iC);
            NalUnitTargetBuffer nalUnitTargetBuffer = this.userData;
            if (nalUnitTargetBuffer != null) {
                if (i12 > 0) {
                    nalUnitTargetBuffer.a(bArrE, iF, iC);
                } else {
                    i13 = -i12;
                }
                if (this.userData.b(i13)) {
                    NalUnitTargetBuffer nalUnitTargetBuffer2 = this.userData;
                    ((ParsableByteArray) Util.j(this.userDataParsable)).S(this.userData.nalData, NalUnitUtil.q(nalUnitTargetBuffer2.nalData, nalUnitTargetBuffer2.nalLength));
                    ((UserDataReader) Util.j(this.userDataReader)).a(this.pesTimeUs, this.userDataParsable);
                }
                if (i11 == START_CODE_VALUE_USER_DATA && parsableByteArray.e()[iC + 2] == 1) {
                    this.userData.e(i11);
                }
            }
            int i14 = iG - iC;
            this.sampleReader.b(this.totalBytesWritten - ((long) i14), i14, this.hasOutputFormat);
            this.sampleReader.c(i11, this.pesTimeUs);
            iF = i10;
        }
        if (!this.hasOutputFormat) {
            this.csdBuffer.a(bArrE, iF, iG);
        }
        this.sampleReader.a(bArrE, iF, iG);
        NalUnitTargetBuffer nalUnitTargetBuffer3 = this.userData;
        if (nalUnitTargetBuffer3 != null) {
            nalUnitTargetBuffer3.a(bArrE, iF, iG);
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void seek() {
        NalUnitUtil.a(this.prefixFlags);
        this.csdBuffer.c();
        SampleReader sampleReader = this.sampleReader;
        if (sampleReader != null) {
            sampleReader.d();
        }
        NalUnitTargetBuffer nalUnitTargetBuffer = this.userData;
        if (nalUnitTargetBuffer != null) {
            nalUnitTargetBuffer.d();
        }
        this.totalBytesWritten = 0L;
        this.pesTimeUs = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void c(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        this.formatId = trackIdGenerator.b();
        TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.c(), 2);
        this.output = trackOutputTrack;
        this.sampleReader = new SampleReader(trackOutputTrack);
        UserDataReader userDataReader = this.userDataReader;
        if (userDataReader != null) {
            userDataReader.b(extractorOutput, trackIdGenerator);
        }
    }
}
