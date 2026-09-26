package com.google.android.exoplayer2.extractor;

import android.util.Base64;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.metadata.vorbis.VorbisComment;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.v2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public final class h0 {
    private static final String TAG = "VorbisUtil";

    public static int a(int i10) {
        int i11 = 0;
        while (i10 > 0) {
            i11++;
            i10 >>>= 1;
        }
        return i11;
    }

    private static long b(long j6, long j10) {
        return (long) Math.floor(Math.pow(j6, 1.0d / j10));
    }

    private static void e(g0 g0Var) throws v2 {
        int iD = g0Var.d(6) + 1;
        for (int i10 = 0; i10 < iD; i10++) {
            int iD2 = g0Var.d(16);
            if (iD2 == 0) {
                g0Var.e(8);
                g0Var.e(16);
                g0Var.e(16);
                g0Var.e(6);
                g0Var.e(8);
                int iD3 = g0Var.d(4) + 1;
                for (int i11 = 0; i11 < iD3; i11++) {
                    g0Var.e(8);
                }
            } else {
                if (iD2 != 1) {
                    throw v2.a("floor type greater than 1 not decodable: " + iD2, null);
                }
                int iD4 = g0Var.d(5);
                int[] iArr = new int[iD4];
                int i12 = -1;
                for (int i13 = 0; i13 < iD4; i13++) {
                    int iD5 = g0Var.d(4);
                    iArr[i13] = iD5;
                    if (iD5 > i12) {
                        i12 = iD5;
                    }
                }
                int i14 = i12 + 1;
                int[] iArr2 = new int[i14];
                for (int i15 = 0; i15 < i14; i15++) {
                    iArr2[i15] = g0Var.d(3) + 1;
                    int iD6 = g0Var.d(2);
                    if (iD6 > 0) {
                        g0Var.e(8);
                    }
                    for (int i16 = 0; i16 < (1 << iD6); i16++) {
                        g0Var.e(8);
                    }
                }
                g0Var.e(2);
                int iD7 = g0Var.d(4);
                int i17 = 0;
                int i18 = 0;
                for (int i19 = 0; i19 < iD4; i19++) {
                    i17 += iArr2[iArr[i19]];
                    while (i18 < i17) {
                        g0Var.e(iD7);
                        i18++;
                    }
                }
            }
        }
    }

    private static void f(int i10, g0 g0Var) throws v2 {
        int iD = g0Var.d(6) + 1;
        for (int i11 = 0; i11 < iD; i11++) {
            int iD2 = g0Var.d(16);
            if (iD2 != 0) {
                com.google.android.exoplayer2.util.t.c(TAG, "mapping type other than 0 not supported: " + iD2);
            } else {
                int iD3 = g0Var.c() ? g0Var.d(4) + 1 : 1;
                if (g0Var.c()) {
                    int iD4 = g0Var.d(8) + 1;
                    for (int i12 = 0; i12 < iD4; i12++) {
                        int i13 = i10 - 1;
                        g0Var.e(a(i13));
                        g0Var.e(a(i13));
                    }
                }
                if (g0Var.d(2) != 0) {
                    throw v2.a("to reserved bits must be zero after mapping coupling steps", null);
                }
                if (iD3 > 1) {
                    for (int i14 = 0; i14 < i10; i14++) {
                        g0Var.e(4);
                    }
                }
                for (int i15 = 0; i15 < iD3; i15++) {
                    g0Var.e(8);
                    g0Var.e(8);
                    g0Var.e(8);
                }
            }
        }
    }

    private static c[] g(g0 g0Var) {
        int iD = g0Var.d(6) + 1;
        c[] cVarArr = new c[iD];
        for (int i10 = 0; i10 < iD; i10++) {
            cVarArr[i10] = new c(g0Var.c(), g0Var.d(16), g0Var.d(16), g0Var.d(8));
        }
        return cVarArr;
    }

    private static void h(g0 g0Var) throws v2 {
        int iD = g0Var.d(6) + 1;
        for (int i10 = 0; i10 < iD; i10++) {
            if (g0Var.d(16) > 2) {
                throw v2.a("residueType greater than 2 is not decodable", null);
            }
            g0Var.e(24);
            g0Var.e(24);
            g0Var.e(24);
            int iD2 = g0Var.d(6) + 1;
            g0Var.e(8);
            int[] iArr = new int[iD2];
            for (int i11 = 0; i11 < iD2; i11++) {
                iArr[i11] = ((g0Var.c() ? g0Var.d(5) : 0) * 8) + g0Var.d(3);
            }
            for (int i12 = 0; i12 < iD2; i12++) {
                for (int i13 = 0; i13 < 8; i13++) {
                    if ((iArr[i12] & (1 << i13)) != 0) {
                        g0Var.e(8);
                    }
                }
            }
        }
    }

    public static b i(com.google.android.exoplayer2.util.c0 c0Var) throws v2 {
        return j(c0Var, true, true);
    }

    public static b j(com.google.android.exoplayer2.util.c0 c0Var, boolean z6, boolean z10) throws v2 {
        if (z6) {
            m(3, c0Var, false);
        }
        String strA = c0Var.A((int) c0Var.t());
        int length = strA.length();
        long jT = c0Var.t();
        String[] strArr = new String[(int) jT];
        int length2 = length + 15;
        for (int i10 = 0; i10 < jT; i10++) {
            String strA2 = c0Var.A((int) c0Var.t());
            strArr[i10] = strA2;
            length2 = length2 + 4 + strA2.length();
        }
        if (z10 && (c0Var.D() & 1) == 0) {
            throw v2.a("framing bit expected to be set", null);
        }
        return new b(strA, strArr, length2 + 1);
    }

    public static d k(com.google.android.exoplayer2.util.c0 c0Var) throws v2 {
        m(1, c0Var, false);
        int iU = c0Var.u();
        int iD = c0Var.D();
        int iU2 = c0Var.u();
        int iQ = c0Var.q();
        if (iQ <= 0) {
            iQ = -1;
        }
        int iQ2 = c0Var.q();
        if (iQ2 <= 0) {
            iQ2 = -1;
        }
        int iQ3 = c0Var.q();
        if (iQ3 <= 0) {
            iQ3 = -1;
        }
        int iD2 = c0Var.D();
        return new d(iU, iD, iU2, iQ, iQ2, iQ3, (int) Math.pow(2.0d, iD2 & 15), (int) Math.pow(2.0d, (iD2 & 240) >> 4), (c0Var.D() & 1) > 0, Arrays.copyOf(c0Var.d(), c0Var.f()));
    }

    public static c[] l(com.google.android.exoplayer2.util.c0 c0Var, int i10) throws v2 {
        m(5, c0Var, false);
        int iD = c0Var.D() + 1;
        g0 g0Var = new g0(c0Var.d());
        g0Var.e(c0Var.e() * 8);
        for (int i11 = 0; i11 < iD; i11++) {
            d(g0Var);
        }
        int iD2 = g0Var.d(6) + 1;
        for (int i12 = 0; i12 < iD2; i12++) {
            if (g0Var.d(16) != 0) {
                throw v2.a("placeholder of time domain transforms not zeroed out", null);
            }
        }
        e(g0Var);
        h(g0Var);
        f(i10, g0Var);
        c[] cVarArrG = g(g0Var);
        if (g0Var.c()) {
            return cVarArrG;
        }
        throw v2.a("framing bit after modes not set as expected", null);
    }

    private static final class a {
        public final int dimensions;
        public final int entries;
        public final boolean isOrdered;
        public final long[] lengthMap;
        public final int lookupType;

        public a(int i10, int i11, long[] jArr, int i12, boolean z6) {
            this.dimensions = i10;
            this.entries = i11;
            this.lengthMap = jArr;
            this.lookupType = i12;
            this.isOrdered = z6;
        }
    }

    public static final class b {
        public final String[] comments;
        public final int length;
        public final String vendor;

        public b(String str, String[] strArr, int i10) {
            this.vendor = str;
            this.comments = strArr;
            this.length = i10;
        }
    }

    public static final class c {
        public final boolean blockFlag;
        public final int mapping;
        public final int transformType;
        public final int windowType;

        public c(boolean z6, int i10, int i11, int i12) {
            this.blockFlag = z6;
            this.windowType = i10;
            this.transformType = i11;
            this.mapping = i12;
        }
    }

    public static final class d {
        public final int bitrateMaximum;
        public final int bitrateMinimum;
        public final int bitrateNominal;
        public final int blockSize0;
        public final int blockSize1;
        public final int channels;
        public final byte[] data;
        public final boolean framingFlag;
        public final int sampleRate;
        public final int version;

        public d(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, boolean z6, byte[] bArr) {
            this.version = i10;
            this.channels = i11;
            this.sampleRate = i12;
            this.bitrateMaximum = i13;
            this.bitrateNominal = i14;
            this.bitrateMinimum = i15;
            this.blockSize0 = i16;
            this.blockSize1 = i17;
            this.framingFlag = z6;
            this.data = bArr;
        }
    }

    @Nullable
    public static Metadata c(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            String str = list.get(i10);
            String[] strArrI0 = o0.I0(str, "=");
            if (strArrI0.length != 2) {
                com.google.android.exoplayer2.util.t.i(TAG, "Failed to parse Vorbis comment: " + str);
            } else if (strArrI0[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(PictureFrame.a(new com.google.android.exoplayer2.util.c0(Base64.decode(strArrI0[1], 0))));
                } catch (RuntimeException e) {
                    com.google.android.exoplayer2.util.t.j(TAG, "Failed to parse vorbis picture", e);
                }
            } else {
                arrayList.add(new VorbisComment(strArrI0[0], strArrI0[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    private static a d(g0 g0Var) throws v2 {
        if (g0Var.d(24) != 5653314) {
            throw v2.a("expected code book to start with [0x56, 0x43, 0x42] at " + g0Var.b(), null);
        }
        int iD = g0Var.d(16);
        int iD2 = g0Var.d(24);
        long[] jArr = new long[iD2];
        boolean zC = g0Var.c();
        long jB = 0;
        if (zC) {
            int iD3 = g0Var.d(5) + 1;
            int i10 = 0;
            while (i10 < iD2) {
                int iD4 = g0Var.d(a(iD2 - i10));
                for (int i11 = 0; i11 < iD4 && i10 < iD2; i11++) {
                    jArr[i10] = iD3;
                    i10++;
                }
                iD3++;
            }
        } else {
            boolean zC2 = g0Var.c();
            for (int i12 = 0; i12 < iD2; i12++) {
                if (!zC2) {
                    jArr[i12] = g0Var.d(5) + 1;
                } else if (g0Var.c()) {
                    jArr[i12] = g0Var.d(5) + 1;
                } else {
                    jArr[i12] = 0;
                }
            }
        }
        int iD5 = g0Var.d(4);
        if (iD5 > 2) {
            throw v2.a("lookup type greater than 2 not decodable: " + iD5, null);
        }
        if (iD5 == 1 || iD5 == 2) {
            g0Var.e(32);
            g0Var.e(32);
            int iD6 = g0Var.d(4) + 1;
            g0Var.e(1);
            if (iD5 != 1) {
                jB = ((long) iD2) * ((long) iD);
            } else if (iD != 0) {
                jB = b(iD2, iD);
            }
            g0Var.e((int) (jB * ((long) iD6)));
        }
        return new a(iD, iD2, jArr, iD5, zC);
    }

    public static boolean m(int i10, com.google.android.exoplayer2.util.c0 c0Var, boolean z6) throws v2 {
        if (c0Var.a() < 7) {
            if (z6) {
                return false;
            }
            throw v2.a("too short header: " + c0Var.a(), null);
        }
        if (c0Var.D() != i10) {
            if (z6) {
                return false;
            }
            throw v2.a("expected header type " + Integer.toHexString(i10), null);
        }
        if (c0Var.D() == 118 && c0Var.D() == 111 && c0Var.D() == 114 && c0Var.D() == 98 && c0Var.D() == 105 && c0Var.D() == 115) {
            return true;
        }
        if (z6) {
            return false;
        }
        throw v2.a("expected characters 'vorbis'", null);
    }
}
