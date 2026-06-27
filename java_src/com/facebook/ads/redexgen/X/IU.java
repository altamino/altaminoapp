package com.facebook.ads.redexgen.X;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.ads.internal.api.BuildConfigApi;
import java.util.Arrays;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class IU extends IJ {
    private static byte[] A00;
    public static final II A01;
    public static final II A02;
    public static final II[] A03;
    private static final String A04;
    private static final String A05;
    private static final String A06;
    private static final String A07;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 81);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{115, 120, 69, 94, 88, 77, 73, 84, 82, 83, 29, 74, 85, 88, 83, 29, 73, 79, 68, 84, 83, 90, 29, 73, 82, 29, 89, 88, 81, 88, 73, 88, 29, 94, 85, 84, 81, 89, 81, 88, 78, 78, 29, 73, 82, 86, 88, 83, 78, 19, 100, 119, 100, 111, 117, 114, 77, 86, 82, 92, 87, 74, 86, 75, 86, 78, 86, 77, 73, 71, 76, 125, 75, 70, 115, 114, 123, 114, 99, 114, 23, 113, 101, 120, 122, 23, 67, 88, 92, 82, 89, 68, 23, 96, 127, 114, 101, 114, 23, 121, 120, 99, 23, 114, 111, 126, 100, 99, 100, 23, 31, 100, 114, 123, 114, 116, 99, 23, 6, 23, 113, 101, 120, 122, 23, 82, 65, 82, 89, 67, 68, 23, 96, 127, 114, 101, 114, 23, 67, 88, 92, 82, 89, 68, 25, 60, 39, 35, 45, 38, 27, 10, 23, 27, 111, 31, 29, 6, 2, 14, 29, 22, 111, 4, 10, 22, 55, 16, 8, 31, 18, 23, 26, 94, 10, 17, 21, 27, 16, 80, 24, 9, 20, 24};
    }

    static {
        A01();
        A02 = new II(0, A00(66, 8, 115), A00(150, 16, 30));
        A01 = new II(1, A00(145, 5, 25), A00(180, 4, 29));
        A03 = new II[]{A02, A01};
        A07 = IU.class.getSimpleName();
        A05 = IJ.A02(A00(56, 6, 104), A03);
        A06 = IJ.A03(A00(56, 6, 104), A03, A01);
        A04 = A00(74, 71, 102) + A02.A01 + A00(62, 3, 39) + A00(50, 6, 80) + A00(0, 1, 12) + IK.A08.A01 + A00(65, 1, 54);
    }

    public IU(IP ip) {
        super(ip);
    }

    @Override // com.facebook.ads.redexgen.X.IJ
    public final String A06() {
        return A00(56, 6, 104);
    }

    @Override // com.facebook.ads.redexgen.X.IJ
    public final II[] A0B() {
        return A03;
    }

    public final Cursor A0C() {
        return A05().rawQuery(A05, null);
    }

    public final String A0D(String str) throws SQLiteException, IllegalArgumentException {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(A00(166, 14, 47));
        }
        Cursor cursorRawQuery = null;
        try {
            cursorRawQuery = A05().rawQuery(A06, new String[]{str});
            String existingTokenId = cursorRawQuery.moveToNext() ? cursorRawQuery.getString(A02.A00) : null;
            if (!TextUtils.isEmpty(existingTokenId)) {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
            } else {
                existingTokenId = UUID.randomUUID().toString();
                ContentValues contentValues = new ContentValues(2);
                String newTokenId = A02.A01;
                contentValues.put(newTokenId, existingTokenId);
                String newTokenId2 = A01.A01;
                contentValues.put(newTokenId2, str);
                A05().insertOrThrow(A00(56, 6, 104), null, contentValues);
            }
            return existingTokenId;
        } finally {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
        }
    }

    public final void A0E() throws SQLException {
        try {
            A05().execSQL(A04);
        } catch (SQLException e) {
            if (BuildConfigApi.isDebug()) {
                Log.e(A07, A00(1, 49, 108), e);
            }
        }
    }
}
