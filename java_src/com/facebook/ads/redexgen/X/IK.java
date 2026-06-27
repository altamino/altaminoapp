package com.facebook.ads.redexgen.X;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import com.narvii.util.Constants;
import java.util.Arrays;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class IK extends IJ {
    private static byte[] A00;
    public static final II A01;
    public static final II A02;
    public static final II A03;
    public static final II A04;
    public static final II A05;
    public static final II A06;
    public static final II A07;
    public static final II A08;
    public static final II A09;
    public static final II[] A0A;
    private static final String A0B;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 91);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A00 = new byte[]{28, 15, 28, 23, 13, 10, 33, 55, 33, 33, 59, 61, 60, 13, 59, 54, 117, 119, 108, 106, 119, 108, 113, 124, 120, 117, 124, 105, 92, 74, 92, 92, 70, 64, 65, 112, 91, 70, 66, 74, 59, 60, 38, 55, 53, 55, 32, 4, 18, 27, 18, 20, 3, 119, 52, 56, 34, 57, 35, 127, 125, 126, 119, 17, 5, 24, 26, 119, 50, 33, 50, 57, 35, 36, 0, 5, 16, 5, 93, 75, 66, 75, 77, 90, 46, 36, 46, 72, 92, 65, 67, 46, 107, 120, 107, 96, 122, 125, 46, 89, 70, 75, 92, 75, 46, 105, 120, 101, 105, 29, 111, 120, 123, 120, 111, 120, 115, 126, 120, 110, 29, 73, 82, 86, 88, 83, 78, 29, 114, 115, 29, 104, 109, 121, 124, 105, 120, 29, 126, 124, 110, 126, 124, 121, 120, 29, 114, 115, 29, 121, 120, 113, 120, 105, 120, 29, 111, 120, 110, 105, 111, 116, 126, 105, 97, 118, 114, 127, 88, 67, 71, 73, 66, 115, 69, 72, 93, 72, 72, 89, 81, 76, 72, 111, 126, 99, 111, 27, 107, 105, 114, 118, 122, 105, 98, 27, 112, 126, 98, 111, 124, 111, 100, 126, 85, 99, 110, 12, 29, 0, 12, 84, 73, 77, 69, 3, 30, 3, 28};
    }

    static {
        A01();
        A03 = new II(0, A00(199, 8, 81), A00(183, 16, 96));
        A08 = new II(1, A00(168, 8, 119), A00(105, 59, 102));
        A04 = new II(2, A00(16, 8, 94), A00(40, 7, 41));
        A09 = new II(3, A00(24, 4, 87), A00(Constants.ADMIN_SET_USER_MEMBERSHIP_TITLE, 4, 3));
        A07 = new II(4, A00(211, 4, 123), A00(164, 4, 104));
        A06 = new II(5, A00(28, 12, 116), A00(164, 4, 104));
        A05 = new II(6, A00(6, 10, 9), A00(Constants.ADMIN_SET_USER_MEMBERSHIP_TITLE, 4, 3));
        A02 = new II(7, A00(74, 4, 63), A00(Constants.ADMIN_SET_USER_MEMBERSHIP_TITLE, 4, 3));
        A01 = new II(8, A00(176, 7, 103), A00(40, 7, 41));
        A0A = new II[]{A03, A08, A04, A09, A07, A06, A05, A02, A01};
        A0B = IJ.A02(A00(0, 6, 34), A0A);
    }

    public IK(IP ip) {
        super(ip);
    }

    @Override // com.facebook.ads.redexgen.X.IJ
    public final String A06() {
        return A00(0, 6, 34);
    }

    @Override // com.facebook.ads.redexgen.X.IJ
    public final II[] A0B() {
        return A0A;
    }

    public final Cursor A0C() {
        return A05().rawQuery(A00(47, 27, 12), null);
    }

    public final Cursor A0D() {
        return A05().rawQuery(A0B, null);
    }

    public final Cursor A0E(String str) {
        return A05().rawQuery(A00(78, 27, 85) + A03.A01 + A00(ThirdPartyAccountBaseFragment.API_ERR_EMAIL_TAKEN, 4, 120), new String[]{str});
    }

    public final String A0F(String str, int i, String str2, double d, double d2, String str3, Map<String, String> map) throws SQLException {
        Map<String, String> map2 = map;
        String string = null;
        String str4 = null;
        String string2 = UUID.randomUUID().toString();
        ContentValues contentValues = new ContentValues(9);
        contentValues.put(A03.A01, string2);
        contentValues.put(A08.A01, str);
        contentValues.put(A04.A01, Integer.valueOf(i));
        contentValues.put(A09.A01, str2);
        contentValues.put(A07.A01, Double.valueOf(d));
        contentValues.put(A06.A01, Double.valueOf(d2));
        contentValues.put(A05.A01, str3);
        String str5 = A02.A01;
        char c = map2 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    map2 = map2;
                    string = new JSONObject(map2).toString();
                    c = 3;
                    break;
                case 3:
                    ContentValues contentValues2 = contentValues;
                    contentValues2.put(str5, string);
                    contentValues2.put(A01.A01, (Integer) 0);
                    A05().insertOrThrow(A00(0, 6, 34), str4, contentValues2);
                    return string2;
                case 4:
                    str4 = null;
                    string = null;
                    c = 3;
                    break;
            }
        }
    }

    public final boolean A0G(String str) {
        return A05().delete(A00(0, 6, 34), new StringBuilder().append(A03.A01).append(A00(ThirdPartyAccountBaseFragment.API_ERR_EMAIL_TAKEN, 4, 120)).toString(), new String[]{str}) > 0;
    }
}
