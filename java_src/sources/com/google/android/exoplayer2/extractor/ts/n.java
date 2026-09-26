package com.google.android.exoplayer2.extractor.ts;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.util.o0;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes7.dex */
public final class n implements m {
    private static final double[] FRAME_RATE_VALUES = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};
    private static final int START_EXTENSION = 181;
    private static final int START_GROUP = 184;
    private static final int START_PICTURE = 0;
    private static final int START_SEQUENCE_HEADER = 179;
    private static final int START_USER_DATA = 178;
    private final a csdBuffer;
    private String formatId;
    private long frameDurationUs;
    private boolean hasOutputFormat;
    private com.google.android.exoplayer2.extractor.e0 output;
    private long pesTimeUs;
    private final boolean[] prefixFlags;
    private boolean sampleHasPicture;
    private boolean sampleIsKeyframe;
    private long samplePosition;
    private long sampleTimeUs;
    private boolean startedFirstSample;
    private long totalBytesWritten;

    @Nullable
    private final u userData;

    @Nullable
    private final com.google.android.exoplayer2.util.c0 userDataParsable;

    @Nullable
    private final k0 userDataReader;

    private static final class a {
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
                if (this.sequenceExtensionPosition != 0 || i10 != n.START_EXTENSION) {
                    this.isFilling = false;
                    return true;
                }
                this.sequenceExtensionPosition = i12;
            } else if (i10 == n.START_SEQUENCE_HEADER) {
                this.isFilling = true;
            }
            byte[] bArr = START_CODE;
            a(bArr, 0, bArr.length);
            return false;
        }

        public a(int i10) {
            this.data = new byte[i10];
        }
    }

    public n() {
        this(null);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void b(long j6, int i10) {
        this.pesTimeUs = j6;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void packetFinished() {
    }

    n(@Nullable k0 k0Var) {
        this.userDataReader = k0Var;
        this.prefixFlags = new boolean[4];
        this.csdBuffer = new a(128);
        if (k0Var != null) {
            this.userData = new u(START_USER_DATA, 128);
            this.userDataParsable = new com.google.android.exoplayer2.util.c0();
        } else {
            this.userData = null;
            this.userDataParsable = null;
        }
        this.pesTimeUs = -9223372036854775807L;
        this.sampleTimeUs = -9223372036854775807L;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0073  */
    /* JADX WARN: Code duplicated, block: B:16:0x0078  */
    /* JADX WARN: Code duplicated, block: B:18:0x0087  */
    /* JADX WARN: Code duplicated, block: B:20:0x0098  */
    private static Pair<a2, Long> a(a aVar, String str) {
        float f;
        int i10;
        float f6;
        int i11;
        long j6;
        double[] dArr;
        double d;
        int i12;
        int i13;
        byte[] bArrCopyOf = Arrays.copyOf(aVar.data, aVar.length);
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
                a2 a2VarE = new a2.b().S(str).e0("video/mpeg2").j0(i15).Q(i16).a0(f6).T(Collections.singletonList(bArrCopyOf)).E();
                i11 = (bArrCopyOf[7] & com.google.common.base.c.SI) - 1;
                if (i11 >= 0) {
                    dArr = FRAME_RATE_VALUES;
                    if (i11 < dArr.length) {
                        d = dArr[i11];
                        byte b10 = bArrCopyOf[aVar.sequenceExtensionPosition + 9];
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
                return Pair.create(a2VarE, Long.valueOf(j6));
            }
            f = i16 * 16;
            i10 = i15 * 9;
        }
        f6 = f / i10;
        a2 a2VarE2 = new a2.b().S(str).e0("video/mpeg2").j0(i15).Q(i16).a0(f6).T(Collections.singletonList(bArrCopyOf)).E();
        i11 = (bArrCopyOf[7] & com.google.common.base.c.SI) - 1;
        if (i11 >= 0) {
            dArr = FRAME_RATE_VALUES;
            if (i11 < dArr.length) {
                d = dArr[i11];
                byte b11 = bArrCopyOf[aVar.sequenceExtensionPosition + 9];
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
        return Pair.create(a2VarE2, Long.valueOf(j6));
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
    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c(com.google.android.exoplayer2.util.c0 c0Var) {
        boolean z6;
        int i10;
        com.google.android.exoplayer2.util.a.i(this.output);
        int iE = c0Var.e();
        int iF = c0Var.f();
        byte[] bArrD = c0Var.d();
        this.totalBytesWritten += (long) c0Var.a();
        this.output.c(c0Var, c0Var.a());
        while (true) {
            int iC = com.google.android.exoplayer2.util.y.c(bArrD, iE, iF, this.prefixFlags);
            if (iC == iF) {
                break;
            }
            int i11 = iC + 3;
            int i12 = c0Var.d()[i11] & 255;
            int i13 = iC - iE;
            if (!this.hasOutputFormat) {
                if (i13 > 0) {
                    this.csdBuffer.a(bArrD, iE, iC);
                }
                if (this.csdBuffer.b(i12, i13 < 0 ? -i13 : 0)) {
                    Pair<a2, Long> pairA = a(this.csdBuffer, (String) com.google.android.exoplayer2.util.a.e(this.formatId));
                    this.output.d((a2) pairA.first);
                    this.frameDurationUs = ((Long) pairA.second).longValue();
                    this.hasOutputFormat = true;
                }
            }
            u uVar = this.userData;
            if (uVar != null) {
                if (i13 > 0) {
                    uVar.a(bArrD, iE, iC);
                    i10 = 0;
                } else {
                    i10 = -i13;
                }
                if (this.userData.b(i10)) {
                    u uVar2 = this.userData;
                    ((com.google.android.exoplayer2.util.c0) o0.j(this.userDataParsable)).N(this.userData.nalData, com.google.android.exoplayer2.util.y.q(uVar2.nalData, uVar2.nalLength));
                    ((k0) o0.j(this.userDataReader)).a(this.sampleTimeUs, this.userDataParsable);
                }
                if (i12 == START_USER_DATA && c0Var.d()[iC + 2] == 1) {
                    this.userData.e(i12);
                }
            }
            if (i12 == 0 || i12 == START_SEQUENCE_HEADER) {
                int i14 = iF - iC;
                if (this.sampleHasPicture && this.hasOutputFormat) {
                    long j6 = this.sampleTimeUs;
                    if (j6 != -9223372036854775807L) {
                        this.output.e(j6, this.sampleIsKeyframe ? 1 : 0, ((int) (this.totalBytesWritten - this.samplePosition)) - i14, i14, null);
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
            iE = i11;
        }
        if (!this.hasOutputFormat) {
            this.csdBuffer.a(bArrD, iE, iF);
        }
        u uVar3 = this.userData;
        if (uVar3 != null) {
            uVar3.a(bArrD, iE, iF);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void seek() {
        com.google.android.exoplayer2.util.y.a(this.prefixFlags);
        this.csdBuffer.c();
        u uVar = this.userData;
        if (uVar != null) {
            uVar.d();
        }
        this.totalBytesWritten = 0L;
        this.startedFirstSample = false;
        this.pesTimeUs = -9223372036854775807L;
        this.sampleTimeUs = -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.n nVar, i0.d dVar) {
        dVar.a();
        this.formatId = dVar.b();
        this.output = nVar.track(dVar.c(), 2);
        k0 k0Var = this.userDataReader;
        if (k0Var != null) {
            k0Var.b(nVar, dVar);
        }
    }
}
