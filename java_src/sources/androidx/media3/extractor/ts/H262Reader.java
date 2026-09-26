package androidx.media3.extractor.ts;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class H262Reader implements ElementaryStreamReader {
    private static final double[] FRAME_RATE_VALUES = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    private static final int START_EXTENSION = 181;
    private static final int START_GROUP = 184;
    private static final int START_PICTURE = 0;
    private static final int START_SEQUENCE_HEADER = 179;
    private static final int START_USER_DATA = 178;
    private final CsdBuffer csdBuffer;
    private String formatId;
    private long frameDurationUs;
    private boolean hasOutputFormat;
    private TrackOutput output;
    private long pesTimeUs;
    private final boolean[] prefixFlags;
    private boolean sampleHasPicture;
    private boolean sampleIsKeyframe;
    private long samplePosition;
    private long sampleTimeUs;
    private boolean startedFirstSample;
    private long totalBytesWritten;

    @Nullable
    private final NalUnitTargetBuffer userData;

    @Nullable
    private final ParsableByteArray userDataParsable;

    @Nullable
    private final UserDataReader userDataReader;

    private static final class CsdBuffer {
        private static final byte[] START_CODE = {0, 0, 1};
        public byte[] data;
        private boolean isFilling;
        public int length;
        public int sequenceExtensionPosition;

        public void c() {
            this.isFilling = false;
            this.length = 0;
            this.sequenceExtensionPosition = 0;
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
            if (this.isFilling) {
                int i12 = this.length - i11;
                this.length = i12;
                if (this.sequenceExtensionPosition != 0 || i10 != H262Reader.START_EXTENSION) {
                    this.isFilling = false;
                    return true;
                }
                this.sequenceExtensionPosition = i12;
            } else if (i10 == H262Reader.START_SEQUENCE_HEADER) {
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

    public H262Reader() {
        this(null);
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void b(long j6, int i10) {
        this.pesTimeUs = j6;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
    }

    H262Reader(@Nullable UserDataReader userDataReader) {
        this.userDataReader = userDataReader;
        this.prefixFlags = new boolean[4];
        this.csdBuffer = new CsdBuffer(128);
        if (userDataReader != null) {
            this.userData = new NalUnitTargetBuffer(START_USER_DATA, 128);
            this.userDataParsable = new ParsableByteArray();
        } else {
            this.userData = null;
            this.userDataParsable = null;
        }
        this.pesTimeUs = -9223372036854775807L;
        this.sampleTimeUs = -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0074  */
    /* JADX WARN: Code duplicated, block: B:16:0x0079  */
    /* JADX WARN: Code duplicated, block: B:18:0x0088  */
    /* JADX WARN: Code duplicated, block: B:20:0x0099  */
    private static Pair<Format, Long> d(CsdBuffer csdBuffer, String str) {
        float f;
        int i10;
        float f6;
        int i11;
        long j6;
        double[] dArr;
        double d;
        int i12;
        int i13;
        byte[] bArrCopyOf = Arrays.copyOf(csdBuffer.data, csdBuffer.length);
        int i14 = bArrCopyOf[4] & 255;
        byte b7 = bArrCopyOf[5];
        int i15 = (i14 << 4) | ((b7 & 255) >> 4);
        int i16 = ((b7 & com.google.common.base.c.SI) << 8) | (bArrCopyOf[6] & 255);
        int i17 = (bArrCopyOf[7] & 240) >> 4;
        if (i17 == 2) {
            f = i16 * 4;
            i10 = i15 * 3;
        } else {
            if (i17 != 3) {
                if (i17 != 4) {
                    f6 = 1.0f;
                } else {
                    f = i16 * 121;
                    i10 = i15 * 100;
                }
                Format formatG = new Format.Builder().U(str).g0("video/mpeg2").n0(i15).S(i16).c0(f6).V(Collections.singletonList(bArrCopyOf)).G();
                i11 = (bArrCopyOf[7] & com.google.common.base.c.SI) - 1;
                if (i11 >= 0) {
                    dArr = FRAME_RATE_VALUES;
                    if (i11 < dArr.length) {
                        d = dArr[i11];
                        byte b10 = bArrCopyOf[csdBuffer.sequenceExtensionPosition + 9];
                        i12 = (b10 & 96) >> 5;
                        i13 = b10 & com.google.common.base.c.US;
                        if (i12 != i13) {
                            d *= (((double) i12) + 1.0d) / ((double) (i13 + 1));
                        }
                        j6 = (long) (1000000.0d / d);
                    } else {
                        j6 = 0;
                    }
                } else {
                    j6 = 0;
                }
                return Pair.create(formatG, Long.valueOf(j6));
            }
            f = i16 * 16;
            i10 = i15 * 9;
        }
        f6 = f / i10;
        Format formatG2 = new Format.Builder().U(str).g0("video/mpeg2").n0(i15).S(i16).c0(f6).V(Collections.singletonList(bArrCopyOf)).G();
        i11 = (bArrCopyOf[7] & com.google.common.base.c.SI) - 1;
        if (i11 >= 0) {
            dArr = FRAME_RATE_VALUES;
            if (i11 < dArr.length) {
                d = dArr[i11];
                byte b11 = bArrCopyOf[csdBuffer.sequenceExtensionPosition + 9];
                i12 = (b11 & 96) >> 5;
                i13 = b11 & com.google.common.base.c.US;
                if (i12 != i13) {
                    d *= (((double) i12) + 1.0d) / ((double) (i13 + 1));
                }
                j6 = (long) (1000000.0d / d);
            } else {
                j6 = 0;
            }
        } else {
            j6 = 0;
        }
        return Pair.create(formatG2, Long.valueOf(j6));
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0112  */
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
    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void a(ParsableByteArray parsableByteArray) {
        boolean z6;
        int i10;
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
            int i11 = iC + 3;
            int i12 = parsableByteArray.e()[i11] & 255;
            int i13 = iC - iF;
            if (!this.hasOutputFormat) {
                if (i13 > 0) {
                    this.csdBuffer.a(bArrE, iF, iC);
                }
                if (this.csdBuffer.b(i12, i13 < 0 ? -i13 : 0)) {
                    Pair<Format, Long> pairD = d(this.csdBuffer, (String) Assertions.e(this.formatId));
                    this.output.d((Format) pairD.first);
                    this.frameDurationUs = ((Long) pairD.second).longValue();
                    this.hasOutputFormat = true;
                }
            }
            NalUnitTargetBuffer nalUnitTargetBuffer = this.userData;
            if (nalUnitTargetBuffer != null) {
                if (i13 > 0) {
                    nalUnitTargetBuffer.a(bArrE, iF, iC);
                    i10 = 0;
                } else {
                    i10 = -i13;
                }
                if (this.userData.b(i10)) {
                    NalUnitTargetBuffer nalUnitTargetBuffer2 = this.userData;
                    ((ParsableByteArray) Util.j(this.userDataParsable)).S(this.userData.nalData, NalUnitUtil.q(nalUnitTargetBuffer2.nalData, nalUnitTargetBuffer2.nalLength));
                    ((UserDataReader) Util.j(this.userDataReader)).a(this.sampleTimeUs, this.userDataParsable);
                }
                if (i12 == START_USER_DATA && parsableByteArray.e()[iC + 2] == 1) {
                    this.userData.e(i12);
                }
            }
            if (i12 == 0 || i12 == START_SEQUENCE_HEADER) {
                int i14 = iG - iC;
                if (this.sampleHasPicture && this.hasOutputFormat) {
                    long j6 = this.sampleTimeUs;
                    if (j6 != -9223372036854775807L) {
                        this.output.f(j6, this.sampleIsKeyframe ? 1 : 0, ((int) (this.totalBytesWritten - this.samplePosition)) - i14, i14, null);
                    }
                }
                if (!this.startedFirstSample || this.sampleHasPicture) {
                    this.samplePosition = this.totalBytesWritten - ((long) i14);
                    long j10 = this.pesTimeUs;
                    if (j10 == -9223372036854775807L) {
                        long j11 = this.sampleTimeUs;
                        j10 = j11 != -9223372036854775807L ? j11 + this.frameDurationUs : -9223372036854775807L;
                    }
                    this.sampleTimeUs = j10;
                    this.sampleIsKeyframe = false;
                    this.pesTimeUs = -9223372036854775807L;
                    z6 = true;
                    this.startedFirstSample = true;
                } else {
                    z6 = true;
                }
                this.sampleHasPicture = i12 == 0 ? z6 : false;
            } else if (i12 == START_GROUP) {
                this.sampleIsKeyframe = true;
            }
            iF = i11;
        }
        if (!this.hasOutputFormat) {
            this.csdBuffer.a(bArrE, iF, iG);
        }
        NalUnitTargetBuffer nalUnitTargetBuffer3 = this.userData;
        if (nalUnitTargetBuffer3 != null) {
            nalUnitTargetBuffer3.a(bArrE, iF, iG);
        }
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void seek() {
        NalUnitUtil.a(this.prefixFlags);
        this.csdBuffer.c();
        NalUnitTargetBuffer nalUnitTargetBuffer = this.userData;
        if (nalUnitTargetBuffer != null) {
            nalUnitTargetBuffer.d();
        }
        this.totalBytesWritten = 0L;
        this.startedFirstSample = false;
        this.pesTimeUs = -9223372036854775807L;
        this.sampleTimeUs = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.ts.ElementaryStreamReader
    public void c(ExtractorOutput extractorOutput, TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.a();
        this.formatId = trackIdGenerator.b();
        this.output = extractorOutput.track(trackIdGenerator.c(), 2);
        UserDataReader userDataReader = this.userDataReader;
        if (userDataReader != null) {
            userDataReader.b(extractorOutput, trackIdGenerator);
        }
    }
}
