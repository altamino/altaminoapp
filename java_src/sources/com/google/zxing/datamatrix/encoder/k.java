package com.google.zxing.datamatrix.encoder;

import androidx.compose.runtime.ComposerKt;
import com.narvii.util.ws.WsMessage;

/* JADX INFO: loaded from: classes4.dex */
public class k {
    static final k[] PROD_SYMBOLS;
    private static k[] symbols;
    private final int dataCapacity;
    private final int dataRegions;
    private final int errorCodewords;
    public final int matrixHeight;
    public final int matrixWidth;
    private final boolean rectangular;
    private final int rsBlockData;
    private final int rsBlockError;

    public k(boolean z6, int i10, int i11, int i12, int i13, int i14) {
        this(z6, i10, i11, i12, i13, i14, i10, i11);
    }

    public final int a() {
        return this.dataCapacity;
    }

    public int b(int i10) {
        return this.rsBlockData;
    }

    public final int c() {
        return this.errorCodewords;
    }

    public final int d(int i10) {
        return this.rsBlockError;
    }

    static {
        k[] kVarArr = {new k(false, 3, 5, 8, 8, 1), new k(false, 5, 7, 10, 10, 1), new k(true, 5, 7, 16, 6, 1), new k(false, 8, 10, 12, 12, 1), new k(true, 10, 11, 14, 6, 2), new k(false, 12, 12, 14, 14, 1), new k(true, 16, 14, 24, 10, 1), new k(false, 18, 14, 16, 16, 1), new k(false, 22, 18, 18, 18, 1), new k(true, 22, 18, 16, 10, 2), new k(false, 30, 20, 20, 20, 1), new k(true, 32, 24, 16, 14, 2), new k(false, 36, 24, 22, 22, 1), new k(false, 44, 28, 24, 24, 1), new k(true, 49, 28, 22, 14, 2), new k(false, 62, 36, 14, 14, 4), new k(false, 86, 42, 16, 16, 4), new k(false, 114, 48, 18, 18, 4), new k(false, 144, 56, 20, 20, 4), new k(false, 174, 68, 22, 22, 4), new k(false, ComposerKt.providerMapsKey, 84, 24, 24, 4, 102, 42), new k(false, 280, 112, 14, 14, 16, 140, 56), new k(false, 368, 144, 16, 16, 16, 92, 36), new k(false, 456, 192, 18, 18, 16, 114, 48), new k(false, 576, 224, 20, 20, 16, 144, 56), new k(false, 696, 272, 22, 22, 16, 174, 68), new k(false, 816, 336, 24, 24, 16, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 56), new k(false, 1050, 408, 18, 18, 36, 175, 68), new k(false, 1304, 496, 20, 20, 36, 163, 62), new d()};
        PROD_SYMBOLS = kVarArr;
        symbols = kVarArr;
    }

    k(boolean z6, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.rectangular = z6;
        this.dataCapacity = i10;
        this.errorCodewords = i11;
        this.matrixWidth = i12;
        this.matrixHeight = i13;
        this.dataRegions = i14;
        this.rsBlockData = i15;
        this.rsBlockError = i16;
    }

    private int e() {
        int i10 = this.dataRegions;
        int i11 = 1;
        if (i10 != 1) {
            i11 = 2;
            if (i10 != 2 && i10 != 4) {
                if (i10 == 16) {
                    return 4;
                }
                if (i10 == 36) {
                    return 6;
                }
                throw new IllegalStateException("Cannot handle this number of data regions");
            }
        }
        return i11;
    }

    private int k() {
        int i10 = this.dataRegions;
        if (i10 == 1 || i10 == 2) {
            return 1;
        }
        if (i10 == 4) {
            return 2;
        }
        if (i10 == 16) {
            return 4;
        }
        if (i10 == 36) {
            return 6;
        }
        throw new IllegalStateException("Cannot handle this number of data regions");
    }

    public static k l(int i10, l lVar, com.google.zxing.b bVar, com.google.zxing.b bVar2, boolean z6) {
        for (k kVar : symbols) {
            if (!(lVar == l.FORCE_SQUARE && kVar.rectangular) && ((lVar != l.FORCE_RECTANGLE || kVar.rectangular) && ((bVar == null || (kVar.j() >= bVar.b() && kVar.i() >= bVar.a())) && ((bVar2 == null || (kVar.j() <= bVar2.b() && kVar.i() <= bVar2.a())) && i10 <= kVar.dataCapacity)))) {
                return kVar;
            }
        }
        if (z6) {
            throw new IllegalArgumentException("Can't find a symbol arrangement that matches the message. Data codewords: ".concat(String.valueOf(i10)));
        }
        return null;
    }

    public int f() {
        return this.dataCapacity / this.rsBlockData;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.rectangular ? "Rectangular Symbol:" : "Square Symbol:");
        sb.append(" data region ");
        sb.append(this.matrixWidth);
        sb.append('x');
        sb.append(this.matrixHeight);
        sb.append(", symbol size ");
        sb.append(j());
        sb.append('x');
        sb.append(i());
        sb.append(", symbol data size ");
        sb.append(h());
        sb.append('x');
        sb.append(g());
        sb.append(", codewords ");
        sb.append(this.dataCapacity);
        sb.append('+');
        sb.append(this.errorCodewords);
        return sb.toString();
    }

    public final int g() {
        return k() * this.matrixHeight;
    }

    public final int h() {
        return e() * this.matrixWidth;
    }

    public final int i() {
        return g() + (k() << 1);
    }

    public final int j() {
        return h() + (e() << 1);
    }
}
