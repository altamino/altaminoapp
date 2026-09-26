package com.google.zxing.qrcode.encoder;

import com.google.zxing.h;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class c {
    private static final int[] ALPHANUMERIC_TABLE = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};
    static final String DEFAULT_BYTE_MODE_ENCODING = "ISO-8859-1";

    private static l5.c m(int i10, l5.a aVar) throws h {
        for (int i11 = 1; i11 <= 40; i11++) {
            l5.c cVarE = l5.c.e(i11);
            if (v(i10, cVarE, aVar)) {
                return cVarE;
            }
        }
        throw new h("Data too big");
    }

    static byte[] o(byte[] bArr, int i10) {
        int length = bArr.length;
        int[] iArr = new int[length + i10];
        for (int i11 = 0; i11 < length; i11++) {
            iArr[i11] = bArr[i11] & 255;
        }
        new h5.c(h5.a.QR_CODE_FIELD_256).b(iArr, i10);
        byte[] bArr2 = new byte[i10];
        for (int i12 = 0; i12 < i10; i12++) {
            bArr2[i12] = (byte) iArr[length + i12];
        }
        return bArr2;
    }

    private static boolean s(String str) {
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            if (length % 2 != 0) {
                return false;
            }
            for (int i10 = 0; i10 < length; i10 += 2) {
                int i11 = bytes[i10] & 255;
                if ((i11 < 129 || i11 > 159) && (i11 < 224 || i11 > 235)) {
                    return false;
                }
            }
            return true;
        } catch (UnsupportedEncodingException unused) {
            return false;
        }
    }

    private static l5.c t(l5.a aVar, l5.b bVar, g5.a aVar2, g5.a aVar3) throws h {
        return m(i(bVar, aVar2, aVar3, m(i(bVar, aVar2, aVar3, l5.c.e(1)), aVar)), aVar);
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$qrcode$decoder$Mode;

        static {
            int[] iArr = new int[l5.b.values().length];
            $SwitchMap$com$google$zxing$qrcode$decoder$Mode = iArr;
            try {
                iArr[l5.b.NUMERIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[l5.b.ALPHANUMERIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[l5.b.BYTE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$qrcode$decoder$Mode[l5.b.KANJI.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static void c(String str, l5.b bVar, g5.a aVar, String str2) throws h {
        int i10 = a.$SwitchMap$com$google$zxing$qrcode$decoder$Mode[bVar.ordinal()];
        if (i10 == 1) {
            h(str, aVar);
            return;
        }
        if (i10 == 2) {
            b(str, aVar);
        } else if (i10 == 3) {
            a(str, aVar, str2);
        } else {
            if (i10 != 4) {
                throw new h("Invalid mode: ".concat(String.valueOf(bVar)));
            }
            e(str, aVar);
        }
    }

    private static void d(g5.c cVar, g5.a aVar) {
        aVar.d(l5.b.ECI.a(), 4);
        aVar.d(cVar.b(), 8);
    }

    static void e(String str, g5.a aVar) throws h {
        int i10;
        try {
            byte[] bytes = str.getBytes("Shift_JIS");
            int length = bytes.length;
            for (int i11 = 0; i11 < length; i11 += 2) {
                int i12 = ((bytes[i11] & 255) << 8) | (bytes[i11 + 1] & 255);
                int i13 = 33088;
                if (i12 >= 33088 && i12 <= 40956) {
                    i10 = i12 - i13;
                } else if (i12 < 57408 || i12 > 60351) {
                    i10 = -1;
                } else {
                    i13 = 49472;
                    i10 = i12 - i13;
                }
                if (i10 == -1) {
                    throw new h("Invalid byte sequence");
                }
                aVar.d(((i10 >> 8) * 192) + (i10 & 255), 13);
            }
        } catch (UnsupportedEncodingException e) {
            throw new h(e);
        }
    }

    private static l5.b l(String str, String str2) {
        if ("Shift_JIS".equals(str2) && s(str)) {
            return l5.b.KANJI;
        }
        boolean z6 = false;
        boolean z10 = false;
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt >= '0' && cCharAt <= '9') {
                z10 = true;
            } else {
                if (p(cCharAt) == -1) {
                    return l5.b.BYTE;
                }
                z6 = true;
            }
        }
        if (z6) {
            return l5.b.ALPHANUMERIC;
        }
        return z10 ? l5.b.NUMERIC : l5.b.BYTE;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x008d  */
    public static f n(String str, l5.a aVar, Map<com.google.zxing.c, ?> map) throws h {
        l5.c cVarT;
        g5.c cVarA;
        boolean z6 = map != null && map.containsKey(com.google.zxing.c.CHARACTER_SET);
        String string = z6 ? map.get(com.google.zxing.c.CHARACTER_SET).toString() : "ISO-8859-1";
        l5.b bVarL = l(str, string);
        g5.a aVar2 = new g5.a();
        l5.b bVar = l5.b.BYTE;
        if (bVarL == bVar && z6 && (cVarA = g5.c.a(string)) != null) {
            d(cVarA, aVar2);
        }
        if (map != null) {
            com.google.zxing.c cVar = com.google.zxing.c.GS1_FORMAT;
            if (map.containsKey(cVar) && Boolean.valueOf(map.get(cVar).toString()).booleanValue()) {
                g(l5.b.FNC1_FIRST_POSITION, aVar2);
            }
        }
        g(bVarL, aVar2);
        g5.a aVar3 = new g5.a();
        c(str, bVarL, aVar3, string);
        if (map != null) {
            com.google.zxing.c cVar2 = com.google.zxing.c.QR_VERSION;
            if (map.containsKey(cVar2)) {
                cVarT = l5.c.e(Integer.parseInt(map.get(cVar2).toString()));
                if (!v(i(bVarL, aVar2, aVar3, cVarT), cVarT, aVar)) {
                    throw new h("Data too big for requested version");
                }
            } else {
                cVarT = t(aVar, bVarL, aVar2, aVar3);
            }
        } else {
            cVarT = t(aVar, bVarL, aVar2, aVar3);
        }
        g5.a aVar4 = new g5.a();
        aVar4.c(aVar2);
        f(bVarL == bVar ? aVar3.j() : str.length(), cVarT, bVarL, aVar4);
        aVar4.c(aVar3);
        l5.c.b bVarC = cVarT.c(aVar);
        int iD = cVarT.d() - bVarC.d();
        u(iD, aVar4);
        g5.a aVarR = r(aVar4, cVarT.d(), iD, bVarC.c());
        f fVar = new f();
        fVar.c(aVar);
        fVar.f(bVarL);
        fVar.g(cVarT);
        int iB = cVarT.b();
        b bVar2 = new b(iB, iB);
        int iK = k(aVarR, aVar, cVarT, bVar2);
        fVar.d(iK);
        e.a(aVarR, aVar, cVarT, iK, bVar2);
        fVar.e(bVar2);
        return fVar;
    }

    static int p(int i10) {
        int[] iArr = ALPHANUMERIC_TABLE;
        if (i10 < iArr.length) {
            return iArr[i10];
        }
        return -1;
    }

    static void q(int i10, int i11, int i12, int i13, int[] iArr, int[] iArr2) throws h {
        if (i13 >= i12) {
            throw new h("Block ID too large");
        }
        int i14 = i10 % i12;
        int i15 = i12 - i14;
        int i16 = i10 / i12;
        int i17 = i16 + 1;
        int i18 = i11 / i12;
        int i19 = i18 + 1;
        int i20 = i16 - i18;
        int i21 = i17 - i19;
        if (i20 != i21) {
            throw new h("EC bytes mismatch");
        }
        if (i12 != i15 + i14) {
            throw new h("RS blocks mismatch");
        }
        if (i10 != ((i18 + i20) * i15) + ((i19 + i21) * i14)) {
            throw new h("Total bytes mismatch");
        }
        if (i13 < i15) {
            iArr[0] = i18;
            iArr2[0] = i20;
        } else {
            iArr[0] = i19;
            iArr2[0] = i21;
        }
    }

    static g5.a r(g5.a aVar, int i10, int i11, int i12) throws h {
        if (aVar.j() != i11) {
            throw new h("Number of bits and data bytes does not match");
        }
        ArrayList arrayList = new ArrayList(i12);
        int i13 = 0;
        int iMax = 0;
        int iMax2 = 0;
        for (int i14 = 0; i14 < i12; i14++) {
            int[] iArr = new int[1];
            int[] iArr2 = new int[1];
            q(i10, i11, i12, i14, iArr, iArr2);
            int i15 = iArr[0];
            byte[] bArr = new byte[i15];
            aVar.l(i13 << 3, bArr, 0, i15);
            byte[] bArrO = o(bArr, iArr2[0]);
            arrayList.add(new com.google.zxing.qrcode.encoder.a(bArr, bArrO));
            iMax = Math.max(iMax, i15);
            iMax2 = Math.max(iMax2, bArrO.length);
            i13 += iArr[0];
        }
        if (i11 != i13) {
            throw new h("Data bytes does not match offset");
        }
        g5.a aVar2 = new g5.a();
        for (int i16 = 0; i16 < iMax; i16++) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                byte[] bArrA = ((com.google.zxing.qrcode.encoder.a) it.next()).a();
                if (i16 < bArrA.length) {
                    aVar2.d(bArrA[i16], 8);
                }
            }
        }
        for (int i17 = 0; i17 < iMax2; i17++) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                byte[] bArrB = ((com.google.zxing.qrcode.encoder.a) it2.next()).b();
                if (i17 < bArrB.length) {
                    aVar2.d(bArrB[i17], 8);
                }
            }
        }
        if (i10 == aVar2.j()) {
            return aVar2;
        }
        throw new h("Interleaving error: " + i10 + " and " + aVar2.j() + " differ.");
    }

    static void u(int i10, g5.a aVar) throws h {
        int i11 = i10 << 3;
        if (aVar.i() > i11) {
            throw new h("data bits cannot fit in the QR Code" + aVar.i() + " > " + i11);
        }
        for (int i12 = 0; i12 < 4 && aVar.i() < i11; i12++) {
            aVar.b(false);
        }
        int i13 = aVar.i() & 7;
        if (i13 > 0) {
            while (i13 < 8) {
                aVar.b(false);
                i13++;
            }
        }
        int iJ = i10 - aVar.j();
        for (int i14 = 0; i14 < iJ; i14++) {
            aVar.d((i14 & 1) == 0 ? 236 : 17, 8);
        }
        if (aVar.i() != i11) {
            throw new h("Bits size does not equal capacity");
        }
    }

    static void a(String str, g5.a aVar, String str2) throws h {
        try {
            for (byte b7 : str.getBytes(str2)) {
                aVar.d(b7, 8);
            }
        } catch (UnsupportedEncodingException e) {
            throw new h(e);
        }
    }

    static void b(CharSequence charSequence, g5.a aVar) throws h {
        int length = charSequence.length();
        int i10 = 0;
        while (i10 < length) {
            int iP = p(charSequence.charAt(i10));
            if (iP != -1) {
                int i11 = i10 + 1;
                if (i11 < length) {
                    int iP2 = p(charSequence.charAt(i11));
                    if (iP2 != -1) {
                        aVar.d((iP * 45) + iP2, 11);
                        i10 += 2;
                    } else {
                        throw new h();
                    }
                } else {
                    aVar.d(iP, 6);
                    i10 = i11;
                }
            } else {
                throw new h();
            }
        }
    }

    static void f(int i10, l5.c cVar, l5.b bVar, g5.a aVar) throws h {
        int iB = bVar.b(cVar);
        int i11 = 1 << iB;
        if (i10 < i11) {
            aVar.d(i10, iB);
            return;
        }
        throw new h(i10 + " is bigger than " + (i11 - 1));
    }

    static void g(l5.b bVar, g5.a aVar) {
        aVar.d(bVar.a(), 4);
    }

    static void h(CharSequence charSequence, g5.a aVar) {
        int length = charSequence.length();
        int i10 = 0;
        while (i10 < length) {
            int iCharAt = charSequence.charAt(i10) - '0';
            int i11 = i10 + 2;
            if (i11 < length) {
                aVar.d((iCharAt * 100) + ((charSequence.charAt(i10 + 1) - '0') * 10) + (charSequence.charAt(i11) - '0'), 10);
                i10 += 3;
            } else {
                i10++;
                if (i10 < length) {
                    aVar.d((iCharAt * 10) + (charSequence.charAt(i10) - '0'), 7);
                    i10 = i11;
                } else {
                    aVar.d(iCharAt, 4);
                }
            }
        }
    }

    private static int i(l5.b bVar, g5.a aVar, g5.a aVar2, l5.c cVar) {
        return aVar.i() + bVar.b(cVar) + aVar2.i();
    }

    private static int j(b bVar) {
        return d.a(bVar) + d.c(bVar) + d.d(bVar) + d.e(bVar);
    }

    private static int k(g5.a aVar, l5.a aVar2, l5.c cVar, b bVar) throws h {
        int i10 = Integer.MAX_VALUE;
        int i11 = -1;
        for (int i12 = 0; i12 < 8; i12++) {
            e.a(aVar, aVar2, cVar, i12, bVar);
            int iJ = j(bVar);
            if (iJ < i10) {
                i11 = i12;
                i10 = iJ;
            }
        }
        return i11;
    }

    private static boolean v(int i10, l5.c cVar, l5.a aVar) {
        if (cVar.d() - cVar.c(aVar).d() >= (i10 + 7) / 8) {
            return true;
        }
        return false;
    }
}
