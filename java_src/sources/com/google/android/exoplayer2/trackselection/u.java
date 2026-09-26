package com.google.android.exoplayer2.trackselection;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.n3;
import com.google.android.exoplayer2.o3;
import com.google.android.exoplayer2.p3;
import com.google.android.exoplayer2.source.f1;
import com.google.android.exoplayer2.source.h1;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.z3;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public abstract class u extends b0 {

    @Nullable
    private a currentMappedTrackInfo;

    public static final class a {
        public static final int RENDERER_SUPPORT_EXCEEDS_CAPABILITIES_TRACKS = 2;
        public static final int RENDERER_SUPPORT_NO_TRACKS = 0;
        public static final int RENDERER_SUPPORT_PLAYABLE_TRACKS = 3;
        public static final int RENDERER_SUPPORT_UNSUPPORTED_TRACKS = 1;
        private final int rendererCount;
        private final int[][][] rendererFormatSupports;
        private final int[] rendererMixedMimeTypeAdaptiveSupports;
        private final String[] rendererNames;
        private final h1[] rendererTrackGroups;
        private final int[] rendererTrackTypes;
        private final h1 unmappedTrackGroups;

        public int b(int i10, int i11, int[] iArr) {
            int i12 = 0;
            int iMin = 16;
            String str = null;
            boolean z6 = false;
            int i13 = 0;
            while (i12 < iArr.length) {
                String str2 = this.rendererTrackGroups[i10].b(i11).c(iArr[i12]).sampleMimeType;
                int i14 = i13 + 1;
                if (i13 == 0) {
                    str = str2;
                } else {
                    z6 |= !o0.c(str, str2);
                }
                iMin = Math.min(iMin, n3.d(this.rendererFormatSupports[i10][i11][i12]));
                i12++;
                i13 = i14;
            }
            return z6 ? Math.min(iMin, this.rendererMixedMimeTypeAdaptiveSupports[i10]) : iMin;
        }

        public int d() {
            return this.rendererCount;
        }

        public h1 h() {
            return this.unmappedTrackGroups;
        }

        public int a(int i10, int i11, boolean z6) {
            int i12 = this.rendererTrackGroups[i10].b(i11).length;
            int[] iArr = new int[i12];
            int i13 = 0;
            for (int i14 = 0; i14 < i12; i14++) {
                int iG = g(i10, i11, i14);
                if (iG == 4 || (z6 && iG == 3)) {
                    iArr[i13] = i14;
                    i13++;
                }
            }
            return b(i10, i11, Arrays.copyOf(iArr, i13));
        }

        public int c(int i10, int i11, int i12) {
            return this.rendererFormatSupports[i10][i11][i12];
        }

        public int e(int i10) {
            return this.rendererTrackTypes[i10];
        }

        public h1 f(int i10) {
            return this.rendererTrackGroups[i10];
        }

        @VisibleForTesting
        a(String[] strArr, int[] iArr, h1[] h1VarArr, int[] iArr2, int[][][] iArr3, h1 h1Var) {
            this.rendererNames = strArr;
            this.rendererTrackTypes = iArr;
            this.rendererTrackGroups = h1VarArr;
            this.rendererFormatSupports = iArr3;
            this.rendererMixedMimeTypeAdaptiveSupports = iArr2;
            this.unmappedTrackGroups = h1Var;
            this.rendererCount = iArr.length;
        }

        public int g(int i10, int i11, int i12) {
            return n3.f(c(i10, i11, i12));
        }
    }

    private static int k(o3[] o3VarArr, f1 f1Var, int[] iArr, boolean z6) throws com.google.android.exoplayer2.q {
        int length = o3VarArr.length;
        int i10 = 0;
        boolean z10 = true;
        for (int i11 = 0; i11 < o3VarArr.length; i11++) {
            o3 o3Var = o3VarArr[i11];
            int iMax = 0;
            for (int i12 = 0; i12 < f1Var.length; i12++) {
                iMax = Math.max(iMax, n3.f(o3Var.a(f1Var.c(i12))));
            }
            boolean z11 = iArr[i11] == 0;
            if (iMax > i10 || (iMax == i10 && z6 && !z10 && z11)) {
                length = i11;
                z10 = z11;
                i10 = iMax;
            }
        }
        return length;
    }

    private static int[] m(o3[] o3VarArr) throws com.google.android.exoplayer2.q {
        int length = o3VarArr.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = o3VarArr[i10].supportsMixedMimeTypeAdaptation();
        }
        return iArr;
    }

    @Override // com.google.android.exoplayer2.trackselection.b0
    public final c0 h(o3[] o3VarArr, h1 h1Var, com.google.android.exoplayer2.source.b0.b bVar, z3 z3Var) throws com.google.android.exoplayer2.q {
        int[] iArr = new int[o3VarArr.length + 1];
        int length = o3VarArr.length + 1;
        f1[][] f1VarArr = new f1[length][];
        int[][][] iArr2 = new int[o3VarArr.length + 1][][];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = h1Var.length;
            f1VarArr[i10] = new f1[i11];
            iArr2[i10] = new int[i11][];
        }
        int[] iArrM = m(o3VarArr);
        for (int i12 = 0; i12 < h1Var.length; i12++) {
            f1 f1VarB = h1Var.b(i12);
            int iK = k(o3VarArr, f1VarB, iArr, f1VarB.type == 5);
            int[] iArrL = iK == o3VarArr.length ? new int[f1VarB.length] : l(o3VarArr[iK], f1VarB);
            int i13 = iArr[iK];
            f1VarArr[iK][i13] = f1VarB;
            iArr2[iK][i13] = iArrL;
            iArr[iK] = i13 + 1;
        }
        h1[] h1VarArr = new h1[o3VarArr.length];
        String[] strArr = new String[o3VarArr.length];
        int[] iArr3 = new int[o3VarArr.length];
        for (int i14 = 0; i14 < o3VarArr.length; i14++) {
            int i15 = iArr[i14];
            h1VarArr[i14] = new h1((f1[]) o0.A0(f1VarArr[i14], i15));
            iArr2[i14] = (int[][]) o0.A0(iArr2[i14], i15);
            strArr[i14] = o3VarArr[i14].getName();
            iArr3[i14] = o3VarArr[i14].getTrackType();
        }
        a aVar = new a(strArr, iArr3, h1VarArr, iArrM, iArr2, new h1((f1[]) o0.A0(f1VarArr[o3VarArr.length], iArr[o3VarArr.length])));
        Pair<p3[], s[]> pairN = n(aVar, iArr2, iArrM, bVar, z3Var);
        return new c0((p3[]) pairN.first, (s[]) pairN.second, a0.a(aVar, (v[]) pairN.second), aVar);
    }

    protected abstract Pair<p3[], s[]> n(a aVar, int[][][] iArr, int[] iArr2, com.google.android.exoplayer2.source.b0.b bVar, z3 z3Var) throws com.google.android.exoplayer2.q;

    private static int[] l(o3 o3Var, f1 f1Var) throws com.google.android.exoplayer2.q {
        int[] iArr = new int[f1Var.length];
        for (int i10 = 0; i10 < f1Var.length; i10++) {
            iArr[i10] = o3Var.a(f1Var.c(i10));
        }
        return iArr;
    }

    @Override // com.google.android.exoplayer2.trackselection.b0
    public final void f(@Nullable Object obj) {
        this.currentMappedTrackInfo = (a) obj;
    }
}
