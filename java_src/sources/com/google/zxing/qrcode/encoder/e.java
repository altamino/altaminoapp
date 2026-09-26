package com.google.zxing.qrcode.encoder;

import androidx.compose.material.TextFieldImplKt;
import androidx.renderscript.ScriptIntrinsicBLAS;
import com.google.zxing.h;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.Constants;

/* JADX INFO: loaded from: classes6.dex */
final class e {
    private static final int TYPE_INFO_MASK_PATTERN = 21522;
    private static final int TYPE_INFO_POLY = 1335;
    private static final int VERSION_INFO_POLY = 7973;
    private static final int[][] POSITION_DETECTION_PATTERN = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};
    private static final int[][] POSITION_ADJUSTMENT_PATTERN = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};
    private static final int[][] POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, ScriptIntrinsicBLAS.RIGHT, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, 126, TextFieldImplKt.AnimationDuration}, new int[]{6, 24, 50, 76, 102, 128, Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, ScriptIntrinsicBLAS.RIGHT, 170}};
    private static final int[][] TYPE_INFO_COORDINATES = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    static void c(b bVar) {
        bVar.a((byte) -1);
    }

    private static void g(int i10, int i11, b bVar) throws h {
        for (int i12 = 0; i12 < 8; i12++) {
            int i13 = i10 + i12;
            if (!o(bVar.b(i13, i11))) {
                throw new h();
            }
            bVar.f(i13, i11, 0);
        }
    }

    private static void h(int i10, int i11, b bVar) {
        for (int i12 = 0; i12 < 5; i12++) {
            int[] iArr = POSITION_ADJUSTMENT_PATTERN[i12];
            for (int i13 = 0; i13 < 5; i13++) {
                bVar.f(i10 + i13, i11 + i12, iArr[i13]);
            }
        }
    }

    private static void i(int i10, int i11, b bVar) {
        for (int i12 = 0; i12 < 7; i12++) {
            int[] iArr = POSITION_DETECTION_PATTERN[i12];
            for (int i13 = 0; i13 < 7; i13++) {
                bVar.f(i10 + i13, i11 + i12, iArr[i13]);
            }
        }
    }

    private static void m(int i10, int i11, b bVar) throws h {
        for (int i12 = 0; i12 < 7; i12++) {
            int i13 = i11 + i12;
            if (!o(bVar.b(i10, i13))) {
                throw new h();
            }
            bVar.f(i10, i13, 0);
        }
    }

    private static boolean o(int i10) {
        return i10 == -1;
    }

    static int b(int i10, int i11) {
        if (i11 == 0) {
            throw new IllegalArgumentException("0 polynomial");
        }
        int iN = n(i11);
        int iN2 = i10 << (iN - 1);
        while (n(iN2) >= iN) {
            iN2 ^= i11 << (n(iN2) - iN);
        }
        return iN2;
    }

    private static void j(b bVar) throws h {
        int length = POSITION_DETECTION_PATTERN[0].length;
        i(0, 0, bVar);
        i(bVar.e() - length, 0, bVar);
        i(0, bVar.e() - length, bVar);
        g(0, 7, bVar);
        g(bVar.e() - 8, 7, bVar);
        g(0, bVar.e() - 8, bVar);
        m(7, 0, bVar);
        m(bVar.d() - 8, 0, bVar);
        m(7, bVar.d() - 7, bVar);
    }

    private static void k(b bVar) {
        int i10 = 8;
        while (i10 < bVar.e() - 8) {
            int i11 = i10 + 1;
            int i12 = i11 % 2;
            if (o(bVar.b(i10, 6))) {
                bVar.f(i10, 6, i12);
            }
            if (o(bVar.b(6, i10))) {
                bVar.f(6, i10, i12);
            }
            i10 = i11;
        }
    }

    static void l(l5.a aVar, int i10, b bVar) throws h {
        g5.a aVar2 = new g5.a();
        p(aVar, i10, aVar2);
        for (int i11 = 0; i11 < aVar2.i(); i11++) {
            boolean zG = aVar2.g((aVar2.i() - 1) - i11);
            int[] iArr = TYPE_INFO_COORDINATES[i11];
            bVar.g(iArr[0], iArr[1], zG);
            if (i11 < 8) {
                bVar.g((bVar.e() - i11) - 1, 8, zG);
            } else {
                bVar.g(8, (bVar.d() - 7) + (i11 - 8), zG);
            }
        }
    }

    static void a(g5.a aVar, l5.a aVar2, l5.c cVar, int i10, b bVar) throws h {
        c(bVar);
        d(cVar, bVar);
        l(aVar2, i10, bVar);
        s(cVar, bVar);
        f(aVar, i10, bVar);
    }

    static void d(l5.c cVar, b bVar) throws h {
        j(bVar);
        e(bVar);
        r(cVar, bVar);
        k(bVar);
    }

    private static void e(b bVar) throws h {
        if (bVar.b(8, bVar.d() - 8) != 0) {
            bVar.f(8, bVar.d() - 8, 1);
            return;
        }
        throw new h();
    }

    static void f(g5.a aVar, int i10, b bVar) throws h {
        boolean zG;
        int iE = bVar.e() - 1;
        int iD = bVar.d() - 1;
        int i11 = 0;
        int i12 = -1;
        while (iE > 0) {
            if (iE == 6) {
                iE--;
            }
            while (iD >= 0 && iD < bVar.d()) {
                for (int i13 = 0; i13 < 2; i13++) {
                    int i14 = iE - i13;
                    if (o(bVar.b(i14, iD))) {
                        if (i11 < aVar.i()) {
                            zG = aVar.g(i11);
                            i11++;
                        } else {
                            zG = false;
                        }
                        if (i10 != -1 && d.f(i10, i14, iD)) {
                            zG = !zG;
                        }
                        bVar.g(i14, iD, zG);
                    }
                }
                iD += i12;
            }
            i12 = -i12;
            iD += i12;
            iE -= 2;
        }
        if (i11 == aVar.i()) {
            return;
        }
        throw new h("Not all bits consumed: " + i11 + '/' + aVar.i());
    }

    static int n(int i10) {
        return 32 - Integer.numberOfLeadingZeros(i10);
    }

    static void p(l5.a aVar, int i10, g5.a aVar2) throws h {
        if (f.b(i10)) {
            int iA = (aVar.a() << 3) | i10;
            aVar2.d(iA, 5);
            aVar2.d(b(iA, TYPE_INFO_POLY), 10);
            g5.a aVar3 = new g5.a();
            aVar3.d(TYPE_INFO_MASK_PATTERN, 15);
            aVar2.m(aVar3);
            if (aVar2.i() == 15) {
                return;
            }
            throw new h("should not happen but we got: " + aVar2.i());
        }
        throw new h("Invalid mask pattern");
    }

    static void q(l5.c cVar, g5.a aVar) throws h {
        aVar.d(cVar.f(), 6);
        aVar.d(b(cVar.f(), VERSION_INFO_POLY), 12);
        if (aVar.i() == 18) {
            return;
        }
        throw new h("should not happen but we got: " + aVar.i());
    }

    private static void r(l5.c cVar, b bVar) {
        if (cVar.f() < 2) {
            return;
        }
        int[] iArr = POSITION_ADJUSTMENT_PATTERN_COORDINATE_TABLE[cVar.f() - 1];
        for (int i10 : iArr) {
            if (i10 >= 0) {
                for (int i11 : iArr) {
                    if (i11 >= 0 && o(bVar.b(i11, i10))) {
                        h(i11 - 2, i10 - 2, bVar);
                    }
                }
            }
        }
    }

    static void s(l5.c cVar, b bVar) throws h {
        if (cVar.f() < 7) {
            return;
        }
        g5.a aVar = new g5.a();
        q(cVar, aVar);
        int i10 = 17;
        for (int i11 = 0; i11 < 6; i11++) {
            for (int i12 = 0; i12 < 3; i12++) {
                boolean zG = aVar.g(i10);
                i10--;
                bVar.g(i11, (bVar.d() - 11) + i12, zG);
                bVar.g((bVar.d() - 11) + i12, i11, zG);
            }
        }
    }
}
