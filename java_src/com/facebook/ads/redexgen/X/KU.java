package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.util.Log;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import com.tonyodev.fetch.FetchConst;
import com.tonyodev.fetch.FetchService;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class KU implements KK {
    private static byte[] A03;
    private static final String A04;
    private Context A00;
    private IP A01;
    private final String A02;

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + FetchConst.ERROR_FILE_ALREADY_CREATED);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A08() {
        A03 = new byte[]{-11, 19, 32, -39, 38, -46, 22, 23, 30, 23, 38, 23, -46, 19, 38, 38, 23, 31, 34, 38, 37, -46, 23, 42, 21, 23, 23, 22, 23, 22, -46, 23, 40, 23, 32, 38, 37, -32, -65, 18, 20, 2, 2, 4, 18, 18, 5, 20, 11, 11, 24, -51, -67, -18, 15, 22, 15, 30, 15, 14, -54, 15, 32, 15, 24, 30, 29, -54, 15, 34, 13, 15, 15, 14, 15, 14, -54, 28, 15, 30, 28, 35, -54, 22, 19, 23, 19, 30, -40, -54, -19, 25, 31, 24, 30, -28, -54, 18, 35, 18, 27, 33, 32, -16, 2, 15, 19, 2, 15, -67, 15, 2, 17, 18, 15, 11, 2, 1, -67, 11, 12, 11, -54, 15, 2, 17, 15, 22, -2, -1, 9, 2, -67, 2, 15, 15, 12, 15, -67, 0, 12, 1, 2, -67, -1, -6, -10, -16, -7, -2, 46, 32, 46, 46, 36, 42, 41, 26, 36, 31, 50, 75, 62, 63, 73, 66, -3, 81, 76, -3, 77, 62, 79, 80, 66, -3, 80, 66, 79, 83, 66, 79, -3, 79, 66, 80, 77, 76, 75, 80, 66, -3, 62, 81, -3, 77, 76, 80, 70, 81, 70, 76, 75, -3, -61, -43, -30, -26, -43, -30, -112, -32, -30, -33, -45, -43, -29, -29, -43, -44, -112, -43, -26, -43, -34, -28, -71, -44, -112, 37, 42, 33, 22, 31, 17, 31, 31, 21, 27, 26, 11, 32, 21, 25, 17, 31, 34, 52, 39, 34, 69, 64, 4, 31, 39, 42, 35, 34, -34, 50, 45, -34, 46, 31, 48, 49, 35, -34, 31, 44, -34, 35, 52, 35, 44, 50, -34, 39, 44, -34, 35, 52, 35, 44, 50, 49, -34, 31, 48, 48, 31, 55, -34, 36, 45, 48, -34, 34, 39, 49, 46, 31, 50, 33, 38, -34, 36, 31, 39, 42, 51, 48, 35, -20, 12, 9, 28, 9, 38, 50, 39, 40, -49, -24, -37, -36, -26, -33, -102, -18, -23, -102, -22, -37, -20, -19, -33, -102, -34, -33, -36, -17, -31, -58, -23, -31, -65, -16, -33, -24, -18, -102, -37, -18, -102, 43, 42, 38, 57, 58, 55, 42, 36, 40, 52, 51, 43, 46, 44, 89, 84, 80, 74, 83, 68, 78, 73, -12, 7, 7, -8, 0, 3, 7, 81, 78, 97, 78, 79, 78, 96, 82, 75, 74, 70, 89, 90, 87, 74, 18, 72, 84, 83, 75, 78, 76, 18, 74, 91, 74, 83, 89, 18, 82, 70, 76, 78, 72, 21, 46, 33, 34, 44, 37, -32, 52, 47, -32, 48, 33, 50, 51, 37, -32, 37, 54, 37, 46, 52, -32, 33, 52, -32, -9, 61, 70, 73, -9, 60, 77, 60, 69, 75, 32, 59, -9, 26, 15, 19, 11, 45, 63, 76, 80, 63, 76, -6, 76, 63, 78, 79, 76, 72, 63, 62, -6, 76, 63, 78, 76, 83, 59, 60, 70, 63, -6, 63, 76, 76, 73, 76, -6, 61, 73, 62, 63, -6, 19, 68, 51, 60, 66, -18, 66, 71, 62, 51, -18, 62, 64, 61, 49, 51, 65, 65, 51, 50, -18, 48, 71, -18, 66, 54, 51, -18, 65, 51, 64, 68, 51, 64, 8, -18, 19, 11, 15, 15, 5, 0};
    }

    static {
        A08();
        A04 = KU.class.getSimpleName();
    }

    public KU(Context context, IP ip) {
        this.A00 = context;
        this.A01 = ip;
        this.A02 = C0592He.A02(context);
    }

    private JSONArray A01(Cursor cursor) throws JSONException {
        KU ku = this;
        String string = null;
        JSONObject jSONObject = null;
        String strA00 = null;
        JSONObject jSONObject2 = null;
        JSONArray jSONArray = new JSONArray();
        cursor.moveToPosition(-1);
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    cursor = cursor;
                    if (!cursor.moveToNext()) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    cursor = cursor;
                    jSONObject = new JSONObject();
                    jSONObject.put(A00(250, 2, 108), cursor.getString(IK.A03.A00));
                    jSONObject.put(A00(369, 8, 117), cursor.getString(IK.A08.A00));
                    jSONObject.put(A00(229, 4, 65), cursor.getString(IK.A09.A00));
                    jSONObject.put(A00(456, 4, 54), OO.A02(cursor.getDouble(IK.A07.A00)));
                    jSONObject.put(A00(233, 12, 60), OO.A02(cursor.getDouble(IK.A06.A00)));
                    jSONObject.put(A00(150, 10, 75), cursor.getString(IK.A05.A00));
                    string = cursor.getString(IK.A02.A00);
                    strA00 = A00(FetchService.ACTION_NETWORK, 4, 56);
                    if (string == null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    string = string;
                    jSONObject2 = new JSONObject(string);
                    c = 5;
                    break;
                case 5:
                    ku = ku;
                    cursor = cursor;
                    jSONArray = jSONArray;
                    jSONObject = jSONObject;
                    strA00 = strA00;
                    jSONObject2 = jSONObject2;
                    jSONObject.put(strA00, jSONObject2);
                    jSONObject.put(A00(377, 7, 35), cursor.getString(IK.A01.A00));
                    jSONObject.put(A00(245, 5, 78), AQ.A00().A02());
                    jSONObject.put(A00(533, 6, 44), ku.A02);
                    jSONArray.put(jSONObject);
                    c = 2;
                    break;
                case 6:
                    jSONObject2 = new JSONObject();
                    c = 5;
                    break;
                case 7:
                    return jSONArray;
            }
        }
    }

    private JSONArray A02(Cursor cursor) throws JSONException {
        KU ku = this;
        String string = null;
        JSONObject jSONObject = null;
        String strA00 = null;
        JSONObject jSONObject2 = null;
        JSONArray jSONArray = new JSONArray();
        cursor.moveToPosition(-1);
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    cursor = cursor;
                    if (!cursor.moveToNext()) {
                        c = 7;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    cursor = cursor;
                    jSONObject = new JSONObject();
                    jSONObject.put(A00(250, 2, 108), cursor.getString(2));
                    jSONObject.put(A00(369, 8, 117), cursor.getString(0));
                    jSONObject.put(A00(229, 4, 65), cursor.getString(4));
                    jSONObject.put(A00(456, 4, 54), OO.A02(cursor.getDouble(5)));
                    jSONObject.put(A00(233, 12, 60), OO.A02(cursor.getDouble(6)));
                    jSONObject.put(A00(150, 10, 75), cursor.getString(7));
                    string = cursor.getString(8);
                    strA00 = A00(FetchService.ACTION_NETWORK, 4, 56);
                    if (string == null) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    string = string;
                    jSONObject2 = new JSONObject(string);
                    c = 5;
                    break;
                case 5:
                    ku = ku;
                    cursor = cursor;
                    jSONArray = jSONArray;
                    jSONObject = jSONObject;
                    strA00 = strA00;
                    jSONObject2 = jSONObject2;
                    jSONObject.put(strA00, jSONObject2);
                    jSONObject.put(A00(377, 7, 35), cursor.getString(9));
                    jSONObject.put(A00(245, 5, 78), AQ.A00().A02());
                    jSONObject.put(A00(533, 6, 44), ku.A02);
                    jSONArray.put(jSONObject);
                    c = 2;
                    break;
                case 6:
                    jSONObject2 = new JSONObject();
                    c = 5;
                    break;
                case 7:
                    return jSONArray;
            }
        }
    }

    private static JSONArray A03(JSONArray jSONArray, JSONArray jSONArray2) {
        int length = 0;
        char c = jSONArray != null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    jSONArray = jSONArray;
                    length = 0 + jSONArray.length();
                    c = 3;
                    break;
                case 3:
                    jSONArray2 = jSONArray2;
                    if (jSONArray2 == null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    jSONArray2 = jSONArray2;
                    length += jSONArray2.length();
                    c = 5;
                    break;
                case 5:
                    return A04(jSONArray, jSONArray2, length);
            }
        }
    }

    private static JSONArray A04(JSONArray jSONArray, JSONArray jSONArray2, int debugIdx) throws JSONException {
        JSONArray jSONArray3 = jSONArray2;
        JSONArray jSONArray4 = jSONArray;
        int debugLength = 0;
        int length = 0;
        int length2 = 0;
        int i = 0;
        Throwable e = null;
        double d = 0.0d;
        JSONObject objEvent = null;
        Throwable e2 = null;
        JSONObject jSONObject = null;
        double d2 = 0.0d;
        JSONArray jSONArray5 = null;
        char c = jSONArray4 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return jSONArray3;
                case 3:
                    jSONArray3 = jSONArray3;
                    if (jSONArray3 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    jSONArray4 = jSONArray4;
                    jSONArray3 = jSONArray4;
                    c = 2;
                    break;
                case 5:
                    jSONArray4 = jSONArray4;
                    jSONArray3 = jSONArray3;
                    length = jSONArray4.length();
                    length2 = jSONArray3.length();
                    jSONArray5 = new JSONArray();
                    debugLength = 0;
                    i = 0;
                    objEvent = null;
                    jSONObject = null;
                    d2 = Double.MAX_VALUE;
                    d = Double.MAX_VALUE;
                    c = 6;
                    break;
                case 6:
                    if (debugLength < length) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    if (i >= length2) {
                        c = '$';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    if (debugIdx <= 0) {
                        c = '$';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    if (debugLength >= length) {
                        c = 19;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    if (objEvent != null) {
                        c = 19;
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    try {
                        jSONArray4 = jSONArray4;
                        objEvent = jSONArray4.getJSONObject(debugLength);
                        d2 = objEvent.getDouble(A00(456, 4, 54));
                        c = 18;
                        break;
                    } catch (JSONException e3) {
                        e2 = e3;
                        if (!BuildConfigApi.isDebug()) {
                            c = 17;
                            break;
                        } else {
                            c = 16;
                            break;
                        }
                    }
                case 16:
                    e2 = e2;
                    Log.e(A04, A00(FetchService.ACTION_UPDATE_REQUEST_URL, 33, 10) + debugLength, e2);
                    c = 17;
                    break;
                case 17:
                    objEvent = null;
                    d2 = Double.MAX_VALUE;
                    c = 18;
                    break;
                case 18:
                    debugLength++;
                    c = 19;
                    break;
                case 19:
                    if (i >= length2) {
                        c = 29;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    if (jSONObject != null) {
                        c = 29;
                        break;
                    } else {
                        c = 21;
                        break;
                    }
                case 21:
                    try {
                        jSONArray3 = jSONArray3;
                        jSONObject = jSONArray3.getJSONObject(i);
                        d = jSONObject.getDouble(A00(456, 4, 54));
                        c = 28;
                        break;
                    } catch (JSONException e4) {
                        e = e4;
                        if (!BuildConfigApi.isDebug()) {
                            c = 27;
                            break;
                        } else {
                            c = 26;
                            break;
                        }
                    }
                case 26:
                    e = e;
                    Log.e(A04, A00(418, 25, 80) + i, e);
                    c = 27;
                    break;
                case 27:
                    jSONObject = null;
                    d = Double.MAX_VALUE;
                    c = 28;
                    break;
                case 28:
                    i++;
                    c = 29;
                    break;
                case 29:
                    if (objEvent != null) {
                        c = 31;
                        break;
                    } else {
                        c = 30;
                        break;
                    }
                case 30:
                    if (jSONObject == null) {
                        c = 6;
                        break;
                    } else {
                        c = 31;
                        break;
                    }
                case 31:
                    if (objEvent == null) {
                        c = '!';
                        break;
                    } else {
                        c = ' ';
                        break;
                    }
                case ' ':
                    if (d >= d2) {
                        c = '#';
                        break;
                    } else {
                        c = '!';
                        break;
                    }
                case '!':
                    jSONArray5 = jSONArray5;
                    jSONArray5.put(jSONObject);
                    jSONObject = null;
                    d = Double.MAX_VALUE;
                    c = '\"';
                    break;
                case '\"':
                    debugIdx--;
                    c = 6;
                    break;
                case '#':
                    jSONArray5 = jSONArray5;
                    jSONArray5.put(objEvent);
                    objEvent = null;
                    d2 = Double.MAX_VALUE;
                    c = '\"';
                    break;
                case '$':
                    if (debugIdx <= 0) {
                        c = '\'';
                        break;
                    } else {
                        c = '%';
                        break;
                    }
                case '%':
                    if (objEvent == null) {
                        c = '(';
                        break;
                    } else {
                        c = '&';
                        break;
                    }
                case '&':
                    jSONArray5 = jSONArray5;
                    jSONArray5.put(objEvent);
                    c = '\'';
                    break;
                case '\'':
                    jSONArray5 = jSONArray5;
                    jSONArray3 = jSONArray5;
                    c = 2;
                    break;
                case '(':
                    if (jSONObject == null) {
                        c = '\'';
                        break;
                    } else {
                        c = ')';
                        break;
                    }
                case ')':
                    jSONArray5 = jSONArray5;
                    jSONArray5.put(jSONObject);
                    c = '\'';
                    break;
            }
        }
    }

    private JSONObject A05() {
        JSONObject jSONObject;
        JSONArray jSONArrayA03;
        Cursor cursorA0B = null;
        Cursor eventsCursor = null;
        try {
            cursorA0B = this.A01.A0B();
            eventsCursor = this.A01.A0A();
            JSONObject tokens = null;
            JSONArray jSONArrayA032 = null;
            if (cursorA0B.getCount() > 0 && eventsCursor.getCount() > 0) {
                tokens = A07(cursorA0B);
                jSONArrayA032 = A01(eventsCursor);
            }
            if (K1.A11(this.A00) && (jSONArrayA03 = C0621Ih.A03(this.A00)) != null && jSONArrayA03.length() > 0) {
                jSONArrayA032 = A03(jSONArrayA03, jSONArrayA032);
            }
            jSONObject = null;
            if (jSONArrayA032 != null) {
                jSONObject = new JSONObject();
                if (tokens != null) {
                    jSONObject.put(A00(IjkMediaMeta.FF_PROFILE_H264_HIGH_444, 6, 27), tokens);
                }
                jSONObject.put(A00(97, 6, 61), jSONArrayA032);
            }
            if (cursorA0B != null) {
                cursorA0B.close();
            }
            if (eventsCursor != null) {
                eventsCursor.close();
            }
        } catch (JSONException unused) {
            jSONObject = null;
            if (cursorA0B != null) {
                cursorA0B.close();
            }
            if (eventsCursor != null) {
                eventsCursor.close();
            }
        } catch (Throwable th) {
            if (cursorA0B != null) {
                cursorA0B.close();
            }
            if (eventsCursor != null) {
                eventsCursor.close();
            }
            throw th;
        }
        return jSONObject;
    }

    private JSONObject A06(int debugEventLimit) {
        JSONObject jSONObject;
        int iA0D;
        JSONArray jSONArrayA04;
        Cursor cursorA09 = null;
        Cursor cursorA0C = null;
        try {
            cursorA09 = this.A01.A09();
            cursorA0C = this.A01.A0C(debugEventLimit);
            JSONObject jSONObjectA07 = null;
            JSONArray jSONArrayA042 = null;
            if (cursorA0C.getCount() > 0) {
                jSONObjectA07 = A07(cursorA0C);
                jSONArrayA042 = A02(cursorA0C);
            }
            if (K1.A11(this.A00) && (jSONArrayA04 = C0621Ih.A04(this.A00, (iA0D = K1.A0D(this.A00)))) != null && jSONArrayA04.length() > 0) {
                jSONArrayA042 = A04(jSONArrayA04, jSONArrayA042, debugEventLimit + iA0D);
            }
            jSONObject = null;
            if (jSONArrayA042 != null) {
                jSONObject = new JSONObject();
                if (jSONObjectA07 != null) {
                    jSONObject.put(A00(IjkMediaMeta.FF_PROFILE_H264_HIGH_444, 6, 27), jSONObjectA07);
                }
                jSONObject.put(A00(97, 6, 61), jSONArrayA042);
            }
            if (cursorA09 != null) {
                cursorA09.close();
            }
            if (cursorA0C != null) {
                cursorA0C.close();
            }
        } catch (JSONException unused) {
            jSONObject = null;
            if (cursorA09 != null) {
                cursorA09.close();
            }
            if (cursorA0C != null) {
                cursorA0C.close();
            }
        } catch (Throwable th) {
            if (cursorA09 != null) {
                cursorA09.close();
            }
            if (cursorA0C != null) {
                cursorA0C.close();
            }
            throw th;
        }
        return jSONObject;
    }

    private JSONObject A07(Cursor cursor) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    cursor = cursor;
                    if (!cursor.moveToNext()) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    cursor = cursor;
                    jSONObject = jSONObject;
                    jSONObject.put(cursor.getString(0), cursor.getString(1));
                    c = 2;
                    break;
                case 4:
                    return jSONObject;
            }
        }
    }

    @SuppressLint({"CatchGeneralException"})
    private void A09(int i) {
        try {
            int iA08 = this.A01.A08(i);
            if (iA08 > 0) {
                P7.A07(this.A00, A00(384, 8, 125), P8.A0l, new PA(A00(53, 44, 58) + iA08));
            }
        } catch (Exception e) {
            if (BuildConfigApi.isDebug()) {
                Log.e(A04, A00(0, 38, 66), e);
            }
        }
    }

    private void A0A(String str) throws SQLException {
        KU ku = this;
        char c = C0621Ih.A0I(str) ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    C0621Ih.A0D(str);
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    ku = ku;
                    str = str;
                    ku.A01.A0L(str);
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.KK
    public final JSONObject A2r() {
        KU ku = this;
        JSONObject jSONObjectA06 = null;
        int iA0S = K1.A0S(ku.A00);
        char c = iA0S > 0 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    ku = ku;
                    jSONObjectA06 = ku.A06(iA0S);
                    c = 3;
                    break;
                case 3:
                    return jSONObjectA06;
                case 4:
                    ku = ku;
                    jSONObjectA06 = ku.A05();
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.KK
    public final boolean A3z() throws Throwable {
        KU ku = this;
        Throwable th = null;
        Cursor cursorA09 = null;
        int i = 0;
        boolean z = true;
        boolean z2 = false;
        int iA0S = K1.A0S(ku.A00);
        char c = iA0S < 1 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return z2;
                case 3:
                    cursorA09 = null;
                    c = 4;
                    break;
                case 4:
                    ku = ku;
                    cursorA09 = ku.A01.A09();
                    if (!cursorA09.moveToFirst()) {
                        c = '\r';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    try {
                        cursorA09 = cursorA09;
                        i = cursorA09.getInt(0);
                        c = '\n';
                        break;
                    } catch (Throwable th2) {
                        th = th2;
                        if (cursorA09 == null) {
                            c = 20;
                            break;
                        } else {
                            c = 19;
                            break;
                        }
                    }
                case '\n':
                    ku = ku;
                    if (C0621Ih.A00(ku.A00) + i <= iA0S) {
                        c = 14;
                        break;
                    } else {
                        c = 15;
                        break;
                    }
                case '\r':
                    z2 = false;
                    i = 0;
                    c = '\n';
                    break;
                case 14:
                    z2 = false;
                    z = false;
                    c = 15;
                    break;
                case 15:
                    cursorA09 = cursorA09;
                    if (cursorA09 == null) {
                        c = 17;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    cursorA09 = cursorA09;
                    cursorA09.close();
                    c = 17;
                    break;
                case 17:
                    z2 = z;
                    c = 2;
                    break;
                case 19:
                    cursorA09.close();
                    c = 20;
                    break;
                case 20:
                    throw th;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.KK
    public final void A4r() {
        int iA0T = K1.A0T(this.A00);
        if (iA0T > -1) {
            A09(iA0T);
        }
        this.A01.A0I();
        this.A01.A0J();
        C0621Ih.A0F(this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.KK
    public final void A5A(JSONArray jSONArray) throws SQLException {
        int length = jSONArray.length();
        int i = 0;
        int length2 = 2;
        while (true) {
            switch (length2) {
                case 2:
                    if (i >= length) {
                        length2 = 10;
                        break;
                    } else {
                        length2 = 3;
                        break;
                    }
                case 3:
                    try {
                        jSONArray = jSONArray;
                        A0A(jSONArray.getJSONObject(i).getString(A00(250, 2, 108)));
                    } catch (JSONException e) {
                        if (BuildConfigApi.isDebug()) {
                            Log.e(A04, A00(252, 62, 78), e);
                        }
                    }
                    i++;
                    length2 = 2;
                    break;
                case 10:
                    return;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.KK
    public final boolean A5C(JSONArray jSONArray) throws JSONException, SQLException {
        boolean z = true;
        boolean zA11 = K1.A11(this.A00);
        for (int i = 0; i < jSONArray.length(); i++) {
            try {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                String string = jSONObject.getString(A00(250, 2, 108));
                boolean isDebugGKEnabled = A00(392, 26, 117).equals(string);
                if (isDebugGKEnabled) {
                    K1.A0Z(this.A00).A28(jSONObject.getString(A00(355, 14, 85)));
                    DynamicLoaderFactory.makeLoader(this.A00).getInitApi().maybeAttachCrashListener(this.A00);
                } else {
                    int i2 = jSONObject.getInt(A00(FetchService.ACTION_RETRY, 4, 83));
                    if (i2 == 1) {
                        boolean isDebugGKEnabled2 = BuildConfigApi.isDebug();
                        if (isDebugGKEnabled2) {
                            String str = A00(204, 25, 0) + string + A00(38, 14, 47);
                            Cursor cursorA0D = this.A01.A0D(string);
                            boolean isDebugGKEnabled3 = cursorA0D.moveToNext();
                            if (isDebugGKEnabled3 && cursorA0D.getCount() > 0) {
                                String string2 = cursorA0D.getString(cursorA0D.getColumnIndex(IK.A09.A01));
                                StringBuilder sb = new StringBuilder();
                                String eventType = A00(497, 36, 94);
                                sb.append(eventType).append(string2).toString();
                            }
                            if (cursorA0D != null) {
                                cursorA0D.close();
                            }
                        }
                        if (!this.A01.A0K(string) && zA11) {
                            C0621Ih.A0C(string);
                        }
                    } else if (i2 >= 1000 && i2 < 2000) {
                        if (BuildConfigApi.isDebug()) {
                            Log.e(A04, A00(460, 37, 106) + i2 + A00(443, 13, 103) + string + A00(52, 1, 31));
                        }
                        A0A(string);
                        z = false;
                    } else if (i2 >= 2000 && i2 < 3000) {
                        if (BuildConfigApi.isDebug()) {
                            Log.e(A04, A00(103, 41, 45) + i2 + A00(443, 13, 103) + string + A00(52, 1, 31));
                        }
                        if (!this.A01.A0K(string) && zA11) {
                            C0621Ih.A0C(string);
                        }
                    }
                    C0418Al.A05(this.A00, jSONObject.toString());
                }
            } catch (JSONException e) {
                if (BuildConfigApi.isDebug()) {
                    Log.e(A04, A00(160, 44, 109) + i + A00(52, 1, 31), e);
                }
                z = false;
            }
        }
        return z;
    }

    @Override // com.facebook.ads.redexgen.X.KK
    public final void A65() {
        this.A01.A0H();
        C0621Ih.A07(this.A00);
    }
}
