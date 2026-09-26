package f5;

import com.google.zxing.aztec.encoder.c;
import com.google.zxing.g;
import g5.b;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class a implements g {
    private static b b(String str, com.google.zxing.a aVar, int i10, int i11, Charset charset, int i12, int i13) {
        if (aVar == com.google.zxing.a.AZTEC) {
            return c(c.d(str.getBytes(charset), i12, i13), i10, i11);
        }
        throw new IllegalArgumentException("Can only encode AZTEC, but got ".concat(String.valueOf(aVar)));
    }

    @Override // com.google.zxing.g
    public b a(String str, com.google.zxing.a aVar, int i10, int i11, Map<com.google.zxing.c, ?> map) {
        Charset charsetForName = StandardCharsets.ISO_8859_1;
        int i12 = 33;
        int i13 = 0;
        if (map != null) {
            com.google.zxing.c cVar = com.google.zxing.c.CHARACTER_SET;
            if (map.containsKey(cVar)) {
                charsetForName = Charset.forName(map.get(cVar).toString());
            }
            com.google.zxing.c cVar2 = com.google.zxing.c.ERROR_CORRECTION;
            i12 = map.containsKey(cVar2) ? Integer.parseInt(map.get(cVar2).toString()) : 33;
            com.google.zxing.c cVar3 = com.google.zxing.c.AZTEC_LAYERS;
            if (map.containsKey(cVar3)) {
                i13 = Integer.parseInt(map.get(cVar3).toString());
            }
        }
        return b(str, aVar, i10, i11, charsetForName, i12, i13);
    }

    private static b c(com.google.zxing.aztec.encoder.a aVar, int i10, int i11) {
        b bVarA = aVar.a();
        if (bVarA != null) {
            int i12 = bVarA.i();
            int iG = bVarA.g();
            int iMax = Math.max(i10, i12);
            int iMax2 = Math.max(i11, iG);
            int iMin = Math.min(iMax / i12, iMax2 / iG);
            int i13 = (iMax - (i12 * iMin)) / 2;
            int i14 = (iMax2 - (iG * iMin)) / 2;
            b bVar = new b(iMax, iMax2);
            int i15 = 0;
            while (i15 < iG) {
                int i16 = 0;
                int i17 = i13;
                while (i16 < i12) {
                    if (bVarA.f(i16, i15)) {
                        bVar.k(i17, i14, iMin, iMin);
                    }
                    i16++;
                    i17 += iMin;
                }
                i15++;
                i14 += iMin;
            }
            return bVar;
        }
        throw new IllegalStateException();
    }
}
