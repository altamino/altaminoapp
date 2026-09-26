package com.google.android.exoplayer2.extractor.avi;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.util.t;
import com.google.common.collect.a0;

/* JADX INFO: loaded from: classes6.dex */
final class g implements a {
    private static final String TAG = "StreamFormatChunk";
    public final a2 format;

    @Nullable
    private static String a(int i10) {
        switch (i10) {
            case 808802372:
            case 877677894:
            case 1145656883:
            case 1145656920:
            case 1482049860:
            case 1684633208:
            case 2021026148:
                return "video/mp4v-es";
            case 826496577:
            case 828601953:
            case 875967048:
                return "video/avc";
            case 842289229:
                return "video/mp42";
            case 859066445:
                return "video/mp43";
            case 1196444237:
            case 1735420525:
                return "video/mjpeg";
            default:
                return null;
        }
    }

    @Nullable
    private static String b(int i10) {
        if (i10 == 1) {
            return "audio/raw";
        }
        if (i10 == 85) {
            return "audio/mpeg";
        }
        if (i10 == 255) {
            return "audio/mp4a-latm";
        }
        if (i10 == 8192) {
            return "audio/ac3";
        }
        if (i10 != 8193) {
            return null;
        }
        return "audio/vnd.dts";
    }

    @Nullable
    private static a c(c0 c0Var) {
        c0Var.Q(4);
        int iQ = c0Var.q();
        int iQ2 = c0Var.q();
        c0Var.Q(4);
        int iQ3 = c0Var.q();
        String strA = a(iQ3);
        if (strA != null) {
            a2.b bVar = new a2.b();
            bVar.j0(iQ).Q(iQ2).e0(strA);
            return new g(bVar.E());
        }
        t.i(TAG, "Ignoring track with unsupported compression " + iQ3);
        return null;
    }

    @Nullable
    public static a d(int i10, c0 c0Var) {
        if (i10 == 2) {
            return c(c0Var);
        }
        if (i10 == 1) {
            return e(c0Var);
        }
        t.i(TAG, "Ignoring strf box for unsupported track type: " + o0.g0(i10));
        return null;
    }

    @Override // com.google.android.exoplayer2.extractor.avi.a
    public int getType() {
        return 1718776947;
    }

    public g(a2 a2Var) {
        this.format = a2Var;
    }

    @Nullable
    private static a e(c0 c0Var) {
        int iV = c0Var.v();
        String strB = b(iV);
        if (strB == null) {
            t.i(TAG, "Ignoring track with unsupported format tag " + iV);
            return null;
        }
        int iV2 = c0Var.v();
        int iQ = c0Var.q();
        c0Var.Q(6);
        int iW = o0.W(c0Var.J());
        int iV3 = c0Var.v();
        byte[] bArr = new byte[iV3];
        c0Var.j(bArr, 0, iV3);
        a2.b bVar = new a2.b();
        bVar.e0(strB).H(iV2).f0(iQ);
        if ("audio/raw".equals(strB) && iW != 0) {
            bVar.Y(iW);
        }
        if ("audio/mp4a-latm".equals(strB) && iV3 > 0) {
            bVar.T(a0.y(bArr));
        }
        return new g(bVar.E());
    }
}
