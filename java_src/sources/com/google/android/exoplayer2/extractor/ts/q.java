package com.google.android.exoplayer2.extractor.ts;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.util.o0;
import java.util.Collections;

/* JADX INFO: loaded from: classes7.dex */
public final class q implements m {
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
    private com.google.android.exoplayer2.extractor.e0 output;
    private a sampleReader;
    private final d0 seiReader;
    private long totalBytesWritten;
    private final boolean[] prefixFlags = new boolean[3];
    private final u vps = new u(32, 128);
    private final u sps = new u(33, 128);
    private final u pps = new u(34, 128);
    private final u prefixSei = new u(39, 128);
    private final u suffixSei = new u(40, 128);
    private long pesTimeUs = -9223372036854775807L;
    private final com.google.android.exoplayer2.util.c0 seiWrapper = new com.google.android.exoplayer2.util.c0();

    private static final class a {
        private static final int FIRST_SLICE_FLAG_OFFSET = 2;
        private boolean isFirstPrefixNalUnit;
        private boolean isFirstSlice;
        private boolean lookingForFirstSliceFlag;
        private int nalUnitBytesRead;
        private boolean nalUnitHasKeyframeData;
        private long nalUnitPosition;
        private long nalUnitTimeUs;
        private final com.google.android.exoplayer2.extractor.e0 output;
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
            this.output.e(j6, z6 ? 1 : 0, (int) (this.nalUnitPosition - this.samplePosition), i10, null);
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

        public a(com.google.android.exoplayer2.extractor.e0 e0Var) {
            this.output = e0Var;
        }
    }

    private static void h(com.google.android.exoplayer2.util.d0 d0Var) {
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = 0;
            while (i11 < 6) {
                int i12 = 1;
                if (d0Var.d()) {
                    int iMin = Math.min(64, 1 << ((i10 << 1) + 4));
                    if (i10 > 1) {
                        d0Var.g();
                    }
                    for (int i13 = 0; i13 < iMin; i13++) {
                        d0Var.g();
                    }
                } else {
                    d0Var.h();
                }
                if (i10 == 3) {
                    i12 = 3;
                }
                i11 += i12;
            }
        }
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

    private void a() {
        com.google.android.exoplayer2.util.a.i(this.output);
        o0.j(this.sampleReader);
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
            u uVar = this.prefixSei;
            this.seiWrapper.N(this.prefixSei.nalData, com.google.android.exoplayer2.util.y.q(uVar.nalData, uVar.nalLength));
            this.seiWrapper.Q(5);
            this.seiReader.a(j10, this.seiWrapper);
        }
        if (this.suffixSei.b(i11)) {
            u uVar2 = this.suffixSei;
            this.seiWrapper.N(this.suffixSei.nalData, com.google.android.exoplayer2.util.y.q(uVar2.nalData, uVar2.nalLength));
            this.seiWrapper.Q(5);
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

    private static a2 g(@Nullable String str, u uVar, u uVar2, u uVar3) {
        int i10 = uVar.nalLength;
        byte[] bArr = new byte[uVar2.nalLength + i10 + uVar3.nalLength];
        int i11 = 0;
        System.arraycopy(uVar.nalData, 0, bArr, 0, i10);
        System.arraycopy(uVar2.nalData, 0, bArr, uVar.nalLength, uVar2.nalLength);
        System.arraycopy(uVar3.nalData, 0, bArr, uVar.nalLength + uVar2.nalLength, uVar3.nalLength);
        com.google.android.exoplayer2.util.d0 d0Var = new com.google.android.exoplayer2.util.d0(uVar2.nalData, 0, uVar2.nalLength);
        d0Var.l(44);
        int iE = d0Var.e(3);
        d0Var.k();
        int iE2 = d0Var.e(2);
        boolean zD = d0Var.d();
        int iE3 = d0Var.e(5);
        int i12 = 0;
        int i13 = 0;
        while (true) {
            if (i13 >= 32) {
                break;
            }
            if (d0Var.d()) {
                i12 |= 1 << i13;
            }
            i13++;
        }
        int[] iArr = new int[6];
        for (int i14 = 0; i14 < 6; i14++) {
            iArr[i14] = d0Var.e(8);
        }
        int iE4 = d0Var.e(8);
        for (int i15 = 0; i15 < iE; i15++) {
            if (d0Var.d()) {
                i11 += 89;
            }
            if (d0Var.d()) {
                i11 += 8;
            }
        }
        d0Var.l(i11);
        if (iE > 0) {
            d0Var.l((8 - iE) * 2);
        }
        d0Var.h();
        int iH = d0Var.h();
        if (iH == 3) {
            d0Var.k();
        }
        int iH2 = d0Var.h();
        int iH3 = d0Var.h();
        if (d0Var.d()) {
            int iH4 = d0Var.h();
            int iH5 = d0Var.h();
            int iH6 = d0Var.h();
            int iH7 = d0Var.h();
            iH2 -= ((iH == 1 || iH == 2) ? 2 : 1) * (iH4 + iH5);
            iH3 -= (iH == 1 ? 2 : 1) * (iH6 + iH7);
        }
        d0Var.h();
        d0Var.h();
        int iH8 = d0Var.h();
        for (int i16 = d0Var.d() ? 0 : iE; i16 <= iE; i16++) {
            d0Var.h();
            d0Var.h();
            d0Var.h();
        }
        d0Var.h();
        d0Var.h();
        d0Var.h();
        d0Var.h();
        d0Var.h();
        d0Var.h();
        if (d0Var.d() && d0Var.d()) {
            h(d0Var);
        }
        d0Var.l(2);
        if (d0Var.d()) {
            d0Var.l(8);
            d0Var.h();
            d0Var.h();
            d0Var.k();
        }
        i(d0Var);
        if (d0Var.d()) {
            for (int i17 = 0; i17 < d0Var.h(); i17++) {
                d0Var.l(iH8 + 5);
            }
        }
        d0Var.l(2);
        float f = 1.0f;
        if (d0Var.d()) {
            if (d0Var.d()) {
                int iE5 = d0Var.e(8);
                if (iE5 == 255) {
                    int iE6 = d0Var.e(16);
                    int iE7 = d0Var.e(16);
                    if (iE6 != 0 && iE7 != 0) {
                        f = iE6 / iE7;
                    }
                } else {
                    float[] fArr = com.google.android.exoplayer2.util.y.ASPECT_RATIO_IDC_VALUES;
                    if (iE5 < fArr.length) {
                        f = fArr[iE5];
                    } else {
                        com.google.android.exoplayer2.util.t.i(TAG, "Unexpected aspect_ratio_idc value: " + iE5);
                    }
                }
            }
            if (d0Var.d()) {
                d0Var.k();
            }
            if (d0Var.d()) {
                d0Var.l(4);
                if (d0Var.d()) {
                    d0Var.l(24);
                }
            }
            if (d0Var.d()) {
                d0Var.h();
                d0Var.h();
            }
            d0Var.k();
            if (d0Var.d()) {
                iH3 *= 2;
            }
        }
        return new a2.b().S(str).e0("video/hevc").I(com.google.android.exoplayer2.util.e.c(iE2, zD, iE3, i12, iArr, iE4)).j0(iH2).Q(iH3).a0(f).T(Collections.singletonList(bArr)).E();
    }

    private void j(long j6, int i10, int i11, long j10) {
        this.sampleReader.g(j6, i10, i11, j10, this.hasOutputFormat);
        if (!this.hasOutputFormat) {
            this.vps.e(i11);
            this.sps.e(i11);
            this.pps.e(i11);
        }
        this.prefixSei.e(i11);
        this.suffixSei.e(i11);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void c(com.google.android.exoplayer2.util.c0 c0Var) {
        a();
        while (c0Var.a() > 0) {
            int iE = c0Var.e();
            int iF = c0Var.f();
            byte[] bArrD = c0Var.d();
            this.totalBytesWritten += (long) c0Var.a();
            this.output.c(c0Var, c0Var.a());
            while (iE < iF) {
                int iC = com.google.android.exoplayer2.util.y.c(bArrD, iE, iF, this.prefixFlags);
                if (iC == iF) {
                    f(bArrD, iE, iF);
                    return;
                }
                int iE2 = com.google.android.exoplayer2.util.y.e(bArrD, iC);
                int i10 = iC - iE;
                if (i10 > 0) {
                    f(bArrD, iE, iC);
                }
                int i11 = iF - iC;
                long j6 = this.totalBytesWritten - ((long) i11);
                e(j6, i11, i10 < 0 ? -i10 : 0, this.pesTimeUs);
                j(j6, i11, iE2, this.pesTimeUs);
                iE = iC + 3;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void seek() {
        this.totalBytesWritten = 0L;
        this.pesTimeUs = -9223372036854775807L;
        com.google.android.exoplayer2.util.y.a(this.prefixFlags);
        this.vps.d();
        this.sps.d();
        this.pps.d();
        this.prefixSei.d();
        this.suffixSei.d();
        a aVar = this.sampleReader;
        if (aVar != null) {
            aVar.f();
        }
    }

    public q(d0 d0Var) {
        this.seiReader = d0Var;
    }

    private static void i(com.google.android.exoplayer2.util.d0 d0Var) {
        int iH = d0Var.h();
        boolean zD = false;
        int i10 = 0;
        for (int i11 = 0; i11 < iH; i11++) {
            if (i11 != 0) {
                zD = d0Var.d();
            }
            if (zD) {
                d0Var.k();
                d0Var.h();
                for (int i12 = 0; i12 <= i10; i12++) {
                    if (d0Var.d()) {
                        d0Var.k();
                    }
                }
            } else {
                int iH2 = d0Var.h();
                int iH3 = d0Var.h();
                int i13 = iH2 + iH3;
                for (int i14 = 0; i14 < iH2; i14++) {
                    d0Var.h();
                    d0Var.k();
                }
                for (int i15 = 0; i15 < iH3; i15++) {
                    d0Var.h();
                    d0Var.k();
                }
                i10 = i13;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.m
    public void d(com.google.android.exoplayer2.extractor.n nVar, i0.d dVar) {
        dVar.a();
        this.formatId = dVar.b();
        com.google.android.exoplayer2.extractor.e0 e0VarTrack = nVar.track(dVar.c(), 2);
        this.output = e0VarTrack;
        this.sampleReader = new a(e0VarTrack);
        this.seiReader.b(nVar, dVar);
    }
}
