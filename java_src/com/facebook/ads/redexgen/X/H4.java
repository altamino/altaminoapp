package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class H4 extends AbstractC0556Fu {
    private static byte[] A0I;
    private boolean A00;
    private boolean A01;
    private boolean A02;
    private boolean A03;
    private boolean A04;
    private boolean A05;
    public SensorManager A06;
    private final Context A07;
    private final String A0C = A01(88, 4, 103);
    private final String A0G = A01(72, 6, 44);
    private final String A0H = A01(140, 7, 100);
    private final String A0F = A01(35, 4, 81);
    private final String A0A = A01(147, 9, 24);
    private final String A0E = A01(130, 10, 108);
    private final String A0D = A01(39, 5, 32);
    private final String A0B = A01(121, 9, 93);
    private final String A09 = A01(63, 9, 32);
    private final String A08 = A01(56, 2, 59);

    static {
        A03();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0I, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 6);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A0I = new byte[]{109, 114, 90, 117, 119, 106, 125, 108, 104, 108, 113, 124, 90, 118, 96, 107, 118, 106, 119, 111, 112, 88, 102, 100, 100, 98, 107, 98, 117, 104, 106, 98, 115, 98, 117, 35, 46, 39, 50, 86, 73, 81, 67, 84, 74, 85, 125, 64, 67, 80, 77, 79, 71, 86, 71, 80, 84, 89, 41, 62, 62, 35, 62, 75, 71, 94, 121, 66, 67, 74, 71, 95, 92, 79, 68, 78, 69, 88, 69, 90, 114, 78, 66, 64, 93, 76, 94, 94, 15, 0, 12, 4, 95, 64, 104, 91, 94, 80, 95, 67, 104, 68, 82, 89, 68, 88, 69, 86, 73, 97, 89, 71, 76, 81, 90, 65, 68, 65, 64, 88, 65, 54, 50, 53, 4, 63, 62, 55, 58, 34, 24, 15, 25, 5, 6, 31, 30, 3, 5, 4, 20, 7, 16, 17, 11, 13, 12, 115, 127, 102, 65, 108, 127, 112, 121, 123};
    }

    public H4(Context context) {
        this.A07 = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A02() {
        H4 h4 = this;
        char c = !h4.A04 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    h4 = h4;
                    h4.A02(A01(92, 15, 49), A01(114, 7, 41));
                    c = 3;
                    break;
                case 3:
                    h4 = h4;
                    if (!h4.A05) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    h4 = h4;
                    h4.A02(A01(0, 19, 3), A01(114, 7, 41));
                    c = 5;
                    break;
                case 5:
                    h4 = h4;
                    if (!h4.A03) {
                        c = 6;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 6:
                    h4 = h4;
                    h4.A02(A01(107, 7, 56), A01(114, 7, 41));
                    c = 7;
                    break;
                case 7:
                    h4 = h4;
                    if (!h4.A00) {
                        c = '\b';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\b':
                    h4 = h4;
                    h4.A02(A01(19, 16, 1), A01(114, 7, 41));
                    c = '\t';
                    break;
                case '\t':
                    h4 = h4;
                    if (!h4.A02) {
                        c = '\n';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case '\n':
                    h4 = h4;
                    h4.A02(A01(78, 10, 43), A01(114, 7, 41));
                    c = 11;
                    break;
                case 11:
                    h4 = h4;
                    if (!h4.A01) {
                        c = '\f';
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\f':
                    h4 = h4;
                    h4.A02(A01(44, 12, 36), A01(114, 7, 41));
                    c = '\r';
                    break;
                case '\r':
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A06(String str, Sensor sensor) throws JSONException {
        String strA01 = null;
        int maxDelay = 0;
        String strA012 = null;
        int id = 0;
        JSONObject jSONObject = new JSONObject();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    jSONObject.put(A01(88, 4, 103), sensor.getName());
                    jSONObject.put(A01(72, 6, 44), sensor.getVendor());
                    jSONObject.put(A01(35, 4, 81), sensor.getType());
                    jSONObject.put(A01(39, 5, 32), sensor.getPower());
                    jSONObject.put(A01(140, 7, 100), sensor.getVersion());
                    jSONObject.put(A01(121, 9, 93), sensor.getMinDelay());
                    strA01 = A01(63, 9, 32);
                    if (Build.VERSION.SDK_INT < 21) {
                        c = '\'';
                        break;
                    } else {
                        c = 23;
                        break;
                    }
                case 23:
                    sensor = sensor;
                    maxDelay = sensor.getMaxDelay();
                    c = 25;
                    break;
                case 25:
                    jSONObject = jSONObject;
                    strA01 = strA01;
                    jSONObject.put(strA01, maxDelay);
                    jSONObject.put(A01(147, 9, 24), sensor.getMaximumRange());
                    jSONObject.put(A01(130, 10, 108), sensor.getResolution());
                    strA012 = A01(56, 2, 59);
                    if (Build.VERSION.SDK_INT < 24) {
                        c = '%';
                        break;
                    } else {
                        c = '#';
                        break;
                    }
                case '#':
                    try {
                        sensor = sensor;
                        id = sensor.getId();
                        c = '%';
                        break;
                    } catch (JSONException unused) {
                        A02(str, A01(58, 5, 74));
                        return;
                    }
                case '%':
                    JSONObject jSONObject2 = jSONObject;
                    jSONObject2.put(strA012, id);
                    A03(str, jSONObject2);
                    return;
                case '\'':
                    id = 0;
                    maxDelay = 0;
                    c = 25;
                    break;
            }
        }
    }

    public final InterfaceC0552Fq A0D() {
        return new H3(this);
    }
}
