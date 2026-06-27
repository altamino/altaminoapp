package com.facebook.ads.redexgen.X;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class AS {
    private static byte[] A00;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 23);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{-102, -105, -101, -105, -94, -115, -94, -96, -113, -111, -103, -105, -100, -107, -39, -31, -36, -77, -64, -74, -60, -63, -69, -74, -69, -74, -93, -81, -82, -76, -91, -82, -76, 122, 111, 111, -93, -81, -83, 110, -90, -95, -93, -91, -94, -81, -81, -85, 110, -85, -95, -76, -95, -82, -95, 110, -80, -78, -81, -74, -87, -92, -91, -78, 110, -127, -76, -76, -78, -87, -94, -75, -76, -87, -81, -82, -119, -92, -112, -78, -81, -74, -87, -92, -91, -78};
    }

    private AS() {
    }

    public static AR A00(ContentResolver contentResolver) {
        AR ar;
        Cursor cursor = null;
        try {
            Cursor cursorQuery = contentResolver.query(Uri.parse(A01(26, 60, 41)), new String[]{A01(14, 3, 97), A01(17, 9, 59), A01(0, 14, 23)}, null, null, null);
            if (cursorQuery == null || !cursorQuery.moveToFirst()) {
                ar = new AR(null, null, false);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } else {
                String string = cursorQuery.getString(cursorQuery.getColumnIndex(A01(14, 3, 97)));
                String attributionId = A01(17, 9, 59);
                String string2 = cursorQuery.getString(cursorQuery.getColumnIndex(attributionId));
                String attributionId2 = A01(0, 14, 23);
                ar = new AR(string, string2, Boolean.valueOf(cursorQuery.getString(cursorQuery.getColumnIndex(attributionId2))).booleanValue());
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
            return ar;
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }
}
