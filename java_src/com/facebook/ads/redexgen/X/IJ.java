package com.facebook.ads.redexgen.X;

import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.tonyodev.fetch.FetchConst;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public abstract class IJ {
    private static byte[] A01;
    public final IP A00;

    static {
        A04();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_FILE_NOT_FOUND);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A01 = new byte[]{14, 52, 64, 61, 59, 14, -18, -59, -45, -48, -47, -95, -43, -62, -61, -51, -58, -95, -54, -57, -95, -58, -39, -54, -44, -43, -44, -95, 26, 41, 28, 24, 43, 28, -9, 43, 24, 25, 35, 28, -9, -24, -38, -31, -38, -40, -23, -75, -100, -112, -88, -33, -48, -51, -38, -51, -88, -41, -33, -52, -23, -52, -21};
    }

    public abstract String A06();

    public abstract II[] A0B();

    public IJ(IP ip) {
        this.A00 = ip;
    }

    private String A00() {
        String result = null;
        int i = 0;
        String strA01 = null;
        II[] iiArrA0B = A0B();
        char c = iiArrA0B.length < 1 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    result = null;
                    c = 3;
                    break;
                case 3:
                    return result;
                case 4:
                    strA01 = A01(28, 0, 124);
                    i = 0;
                    c = 5;
                    break;
                case 5:
                    iiArrA0B = iiArrA0B;
                    if (i >= iiArrA0B.length - 1) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    iiArrA0B = iiArrA0B;
                    strA01 = strA01 + iiArrA0B[i].A02() + A01(48, 2, 1);
                    i++;
                    c = 5;
                    break;
                case 7:
                    iiArrA0B = iiArrA0B;
                    strA01 = strA01;
                    result = strA01 + iiArrA0B[iiArrA0B.length - 1].A02();
                    c = 3;
                    break;
            }
        }
    }

    public static String A02(String str, II[] iiArr) {
        StringBuilder sb = new StringBuilder(A01(41, 7, 38));
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    iiArr = iiArr;
                    if (i >= iiArr.length - 1) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    iiArr = iiArr;
                    sb = sb;
                    sb.append(iiArr[i].A01);
                    sb.append(A01(48, 2, 1));
                    i++;
                    c = 2;
                    break;
                case 4:
                    StringBuilder sb2 = sb;
                    sb2.append(iiArr[r6.length - 1].A01);
                    sb2.append(A01(0, 6, 127));
                    sb2.append(str);
                    return sb2.toString();
            }
        }
    }

    public static String A03(String str, II[] iiArr, II ii) {
        return A02(str, iiArr) + A01(50, 7, 25) + ii.A01 + A01(59, 4, 61);
    }

    public final SQLiteDatabase A05() {
        return this.A00.A0E();
    }

    public final void A07() {
    }

    public final void A08(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL(A01(28, 13, 104) + A06() + A01(57, 2, 72) + A00() + A01(6, 1, 86));
    }

    public final void A09(SQLiteDatabase sQLiteDatabase) throws SQLException {
        sQLiteDatabase.execSQL(A01(7, 21, 18) + A06());
    }

    public final boolean A0A() {
        boolean z = false;
        char c = A05().delete(A06(), null, null) > 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }
}
