package com.google.zxing;

import com.google.zxing.oned.j;
import com.google.zxing.oned.k;
import com.google.zxing.oned.m;
import com.google.zxing.oned.p;
import com.google.zxing.oned.w;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class e implements g {

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$google$zxing$BarcodeFormat;

        static {
            int[] iArr = new int[com.google.zxing.a.values().length];
            $SwitchMap$com$google$zxing$BarcodeFormat = iArr;
            try {
                iArr[com.google.zxing.a.EAN_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$google$zxing$BarcodeFormat[com.google.zxing.a.UPC_E.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$google$zxing$BarcodeFormat[com.google.zxing.a.EAN_13.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$google$zxing$BarcodeFormat[com.google.zxing.a.UPC_A.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$google$zxing$BarcodeFormat[com.google.zxing.a.QR_CODE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$google$zxing$BarcodeFormat[com.google.zxing.a.CODE_39.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$google$zxing$BarcodeFormat[com.google.zxing.a.CODE_93.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$google$zxing$BarcodeFormat[com.google.zxing.a.CODE_128.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$google$zxing$BarcodeFormat[com.google.zxing.a.ITF.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$google$zxing$BarcodeFormat[com.google.zxing.a.PDF_417.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$google$zxing$BarcodeFormat[com.google.zxing.a.CODABAR.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$google$zxing$BarcodeFormat[com.google.zxing.a.DATA_MATRIX.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$google$zxing$BarcodeFormat[com.google.zxing.a.AZTEC.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    @Override // com.google.zxing.g
    public g5.b a(String str, com.google.zxing.a aVar, int i10, int i11, Map<c, ?> map) throws h {
        g kVar;
        switch (a.$SwitchMap$com$google$zxing$BarcodeFormat[aVar.ordinal()]) {
            case 1:
                kVar = new k();
                break;
            case 2:
                kVar = new w();
                break;
            case 3:
                kVar = new j();
                break;
            case 4:
                kVar = new p();
                break;
            case 5:
                kVar = new k5.a();
                break;
            case 6:
                kVar = new com.google.zxing.oned.f();
                break;
            case 7:
                kVar = new com.google.zxing.oned.h();
                break;
            case 8:
                kVar = new com.google.zxing.oned.d();
                break;
            case 9:
                kVar = new m();
                break;
            case 10:
                kVar = new j5.a();
                break;
            case 11:
                kVar = new com.google.zxing.oned.b();
                break;
            case 12:
                kVar = new i5.a();
                break;
            case 13:
                kVar = new f5.a();
                break;
            default:
                throw new IllegalArgumentException("No encoder available for format ".concat(String.valueOf(aVar)));
        }
        return kVar.a(str, aVar, i10, i11, map);
    }
}
