package com.google.android.exoplayer2.extractor.ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.util.o0;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes7.dex */
public final class o implements m {
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
    private final a csdBuffer;
    private String formatId;
    private boolean hasOutputFormat;
    private com.google.android.exoplayer2.extractor.e0 output;
    private long pesTimeUs;
    private final boolean[] prefixFlags;
    private b sampleReader;
    private long totalBytesWritten;

    @Nullable
    private final u userData;

    @Nullable
    private final com.google.android.exoplayer2.util.c0 userDataParsable;

    @Nullable
    private final k0 userDataReader;

    private static final class a {
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
                            if (i10 == o.START_CODE_VALUE_GROUP_OF_VOP || i10 == o.START_CODE_VALUE_VISUAL_OBJECT) {
                                this.length -= i11;
                                this.isFilling = false;
                                return true;
                            }
                        } else if ((i10 & 240) != 32) {
                            com.google.android.exoplayer2.util.t.i(o.TAG, "Unexpected start code value");
                            c();
                        } else {
                            this.volStartPosition = this.length;
                            this.state = 4;
                        }
                    } else if (i10 > 31) {
                        com.google.android.exoplayer2.util.t.i(o.TAG, "Unexpected start code value");
                        c();
                    } else {
                        this.state = 3;
                    }
                } else if (i10 != o.START_CODE_VALUE_VISUAL_OBJECT) {
                    com.google.android.exoplayer2.util.t.i(o.TAG, "Unexpected start code value");
                    c();
                } else {
                    this.state = 2;
                }
            } else if (i10 == o.START_CODE_VALUE_VISUAL_OBJECT_SEQUENCE) {
                this.state = 1;
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

    private static final class b {
        private static final int OFFSET_VOP_CODING_TYPE = 1;
        private static final int VOP_CODING_TYPE_INTRA = 0;
        private boolean lookingForVopCodingType;
        private final com.google.android.exoplayer2.extractor.e0 output;
        private boolean readingSample;
        private boolean sampleIsKeyframe;
        private long samplePosition;
        private long sampleTimeUs;
        private int startCodeValue;
        private int vopBytesRead;

        public void c(int i10, long j6) {
            this.startCodeValue = i10;
            this.sampleIsKeyframe = false;
            this.readingSample = i10 == o.START_CODE_VALUE_VOP || i10 == o.START_CODE_VALUE_GROUP_OF_VOP;
            this.lookingForVopCodingType = i10 == o.START_CODE_VALUE_VOP;
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
            if (this.startCodeValue == o.START_CODE_VALUE_VOP && z6 && this.readingSample) {
                long j10 = this.sampleTimeUs;
                if (j10 != -9223372036854775807L) {
                    this.output.e(j10, this.sampleIsKeyframe ? 1 : 0, (int) (j6 - this.samplePosition), i10, null);
                }
            }
            if (this.startCodeValue != o.START_CODE_VALUE_GROUP_OF_VOP) {
                this.samplePosition = j6;
            }
        }

        public b(com.google.android.exoplayer2.extractor.e0 e0Var) {
            this.output = e0Var;
        }
    }

    public o() {
        this(null);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void b(long j6, int i10) {
        if (j6 != -9223372036854775807L) {
            this.pesTimeUs = j6;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void packetFinished() {
    }

    o(@Nullable k0 k0Var) {
        this.userDataReader = k0Var;
        this.prefixFlags = new boolean[4];
        this.csdBuffer = new a(128);
        this.pesTimeUs = -9223372036854775807L;
        if (k0Var != null) {
            this.userData = new u(START_CODE_VALUE_USER_DATA, 128);
            this.userDataParsable = new com.google.android.exoplayer2.util.c0();
        } else {
            this.userData = null;
            this.userDataParsable = null;
        }
    }

    private static a2 a(a aVar, int i10, String str) {
        byte[] bArrCopyOf = Arrays.copyOf(aVar.data, aVar.length);
        com.google.android.exoplayer2.util.b0 b0Var = new com.google.android.exoplayer2.util.b0(bArrCopyOf);
        b0Var.s(i10);
        b0Var.s(4);
        b0Var.q();
        b0Var.r(8);
        if (b0Var.g()) {
            b0Var.r(4);
            b0Var.r(3);
        }
        int iH = b0Var.h(4);
        float f = 1.0f;
        if (iH == 15) {
            int iH2 = b0Var.h(8);
            int iH3 = b0Var.h(8);
            if (iH3 == 0) {
                com.google.android.exoplayer2.util.t.i(TAG, "Invalid aspect ratio");
            } else {
                f = iH2 / iH3;
            }
        } else {
            float[] fArr = PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO;
            if (iH < fArr.length) {
                f = fArr[iH];
            } else {
                com.google.android.exoplayer2.util.t.i(TAG, "Invalid aspect ratio");
            }
        }
        if (b0Var.g()) {
            b0Var.r(2);
            b0Var.r(1);
            if (b0Var.g()) {
                b0Var.r(15);
                b0Var.q();
                b0Var.r(15);
                b0Var.q();
                b0Var.r(15);
                b0Var.q();
                b0Var.r(3);
                b0Var.r(11);
                b0Var.q();
                b0Var.r(15);
                b0Var.q();
            }
        }
        if (b0Var.h(2) != 0) {
            com.google.android.exoplayer2.util.t.i(TAG, "Unhandled video object layer shape");
        }
        b0Var.q();
        int iH4 = b0Var.h(16);
        b0Var.q();
        if (b0Var.g()) {
            if (iH4 == 0) {
                com.google.android.exoplayer2.util.t.i(TAG, "Invalid vop_increment_time_resolution");
            } else {
                int i11 = 0;
                for (int i12 = iH4 - 1; i12 > 0; i12 >>= 1) {
                    i11++;
                }
                b0Var.r(i11);
            }
        }
        b0Var.q();
        int iH5 = b0Var.h(13);
        b0Var.q();
        int iH6 = b0Var.h(13);
        b0Var.q();
        b0Var.q();
        return new a2.b().S(str).e0("video/mp4v-es").j0(iH5).Q(iH6).a0(f).T(Collections.singletonList(bArrCopyOf)).E();
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c(com.google.android.exoplayer2.util.c0 c0Var) {
        com.google.android.exoplayer2.util.a.i(this.sampleReader);
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
            int i10 = iC + 3;
            int i11 = c0Var.d()[i10] & 255;
            int i12 = iC - iE;
            int i13 = 0;
            if (!this.hasOutputFormat) {
                if (i12 > 0) {
                    this.csdBuffer.a(bArrD, iE, iC);
                }
                if (this.csdBuffer.b(i11, i12 < 0 ? -i12 : 0)) {
                    com.google.android.exoplayer2.extractor.e0 e0Var = this.output;
                    a aVar = this.csdBuffer;
                    e0Var.d(a(aVar, aVar.volStartPosition, (String) com.google.android.exoplayer2.util.a.e(this.formatId)));
                    this.hasOutputFormat = true;
                }
            }
            this.sampleReader.a(bArrD, iE, iC);
            u uVar = this.userData;
            if (uVar != null) {
                if (i12 > 0) {
                    uVar.a(bArrD, iE, iC);
                } else {
                    i13 = -i12;
                }
                if (this.userData.b(i13)) {
                    u uVar2 = this.userData;
                    ((com.google.android.exoplayer2.util.c0) o0.j(this.userDataParsable)).N(this.userData.nalData, com.google.android.exoplayer2.util.y.q(uVar2.nalData, uVar2.nalLength));
                    ((k0) o0.j(this.userDataReader)).a(this.pesTimeUs, this.userDataParsable);
                }
                if (i11 == START_CODE_VALUE_USER_DATA && c0Var.d()[iC + 2] == 1) {
                    this.userData.e(i11);
                }
            }
            int i14 = iF - iC;
            this.sampleReader.b(this.totalBytesWritten - ((long) i14), i14, this.hasOutputFormat);
            this.sampleReader.c(i11, this.pesTimeUs);
            iE = i10;
        }
        if (!this.hasOutputFormat) {
            this.csdBuffer.a(bArrD, iE, iF);
        }
        this.sampleReader.a(bArrD, iE, iF);
        u uVar3 = this.userData;
        if (uVar3 != null) {
            uVar3.a(bArrD, iE, iF);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void seek() {
        com.google.android.exoplayer2.util.y.a(this.prefixFlags);
        this.csdBuffer.c();
        b bVar = this.sampleReader;
        if (bVar != null) {
            bVar.d();
        }
        u uVar = this.userData;
        if (uVar != null) {
            uVar.d();
        }
        this.totalBytesWritten = 0L;
        this.pesTimeUs = -9223372036854775807L;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.n nVar, i0.d dVar) {
        dVar.a();
        this.formatId = dVar.b();
        com.google.android.exoplayer2.extractor.e0 e0VarTrack = nVar.track(dVar.c(), 2);
        this.output = e0VarTrack;
        this.sampleReader = new b(e0VarTrack);
        k0 k0Var = this.userDataReader;
        if (k0Var != null) {
            k0Var.b(nVar, dVar);
        }
    }
}
