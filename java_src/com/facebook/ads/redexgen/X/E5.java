package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.hardware.Sensor;
import android.os.Build;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class E5 implements InterfaceC0466Ci {
    private static byte[] A0K;
    private final float A00;
    private final float A01;
    private final float A02;
    private final int A03;
    private final int A04;
    private final int A05;
    private final int A06;
    private final int A07;
    private final String A0I;
    private final String A0J;
    private final String A08 = A00(2, 2, 54);
    private final String A0A = A00(8, 2, 84);
    private final String A0B = A00(4, 3, 102);
    private final String A09 = A00(10, 3, 119);
    private final String A0C = A00(1, 1, 33);
    private final String A0D = A00(19, 1, 21);
    private final String A0E = A00(7, 1, 85);
    private final String A0F = A00(0, 1, 50);
    private final String A0G = A00(16, 3, 123);
    private final String A0H = A00(13, 3, 62);

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0K, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 117);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A0K = new byte[]{51, 58, 42, 39, 126, 122, 119, 82, 76, 83, 111, 99, 102, 61, 46, 57, 120, 107, 96, 16};
    }

    public E5(Sensor sensor) {
        this.A03 = Build.VERSION.SDK_INT < 24 ? 0 : sensor.getId();
        this.A04 = Build.VERSION.SDK_INT >= 21 ? sensor.getMaxDelay() : 0;
        this.A00 = sensor.getMaximumRange();
        this.A05 = sensor.getMinDelay();
        this.A0I = sensor.getName();
        this.A01 = sensor.getPower();
        this.A02 = sensor.getResolution();
        this.A06 = sensor.getType();
        this.A0J = sensor.getVendor();
        this.A07 = sensor.getVersion();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0466Ci
    public final boolean A3v(Object obj) {
        E5 customObjectSignalValueDef = this;
        boolean z = false;
        E5 e5 = (E5) obj;
        char c = customObjectSignalValueDef.A03 == e5.A03 ? (char) 2 : '\r';
        while (true) {
            switch (c) {
                case 2:
                    customObjectSignalValueDef = customObjectSignalValueDef;
                    e5 = e5;
                    if (customObjectSignalValueDef.A04 != e5.A04) {
                        c = '\r';
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    customObjectSignalValueDef = customObjectSignalValueDef;
                    e5 = e5;
                    if (Math.abs(customObjectSignalValueDef.A00 - e5.A00) >= C0430Ay.A01()) {
                        c = '\r';
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    customObjectSignalValueDef = customObjectSignalValueDef;
                    e5 = e5;
                    if (customObjectSignalValueDef.A05 != e5.A05) {
                        c = '\r';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    customObjectSignalValueDef = customObjectSignalValueDef;
                    e5 = e5;
                    if (!FH.A0D(customObjectSignalValueDef.A0I, e5.A0I)) {
                        c = '\r';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    customObjectSignalValueDef = customObjectSignalValueDef;
                    e5 = e5;
                    if (Math.abs(customObjectSignalValueDef.A01 - e5.A01) >= C0430Ay.A01()) {
                        c = '\r';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    customObjectSignalValueDef = customObjectSignalValueDef;
                    e5 = e5;
                    if (Math.abs(customObjectSignalValueDef.A02 - e5.A02) >= C0430Ay.A01()) {
                        c = '\r';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    customObjectSignalValueDef = customObjectSignalValueDef;
                    e5 = e5;
                    if (customObjectSignalValueDef.A06 != e5.A06) {
                        c = '\r';
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    customObjectSignalValueDef = customObjectSignalValueDef;
                    e5 = e5;
                    if (!FH.A0D(customObjectSignalValueDef.A0J, e5.A0J)) {
                        c = '\r';
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    customObjectSignalValueDef = customObjectSignalValueDef;
                    e5 = e5;
                    if (customObjectSignalValueDef.A07 != e5.A07) {
                        c = '\r';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    z = true;
                    c = '\f';
                    break;
                case '\f':
                    return z;
                case '\r':
                    z = false;
                    c = '\f';
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0466Ci
    public final int A76() {
        return A00(2, 2, 54).length() + 4 + A00(10, 3, 119).length() + 4 + A00(8, 2, 84).length() + 4 + A00(4, 3, 102).length() + 4 + A00(1, 1, 33).length() + this.A0I.length() + A00(19, 1, 21).length() + 4 + A00(7, 1, 85).length() + 4 + A00(0, 1, 50).length() + 4 + A00(16, 3, 123).length() + this.A0J.length() + A00(13, 3, 62).length() + 4;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0466Ci
    @SuppressLint({"CatchGeneralException"})
    public final JSONObject A79() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A00(2, 2, 54), this.A03);
            jSONObject.put(A00(10, 3, 119), this.A04);
            jSONObject.put(A00(8, 2, 84), this.A00);
            jSONObject.put(A00(4, 3, 102), this.A05);
            jSONObject.put(A00(1, 1, 33), this.A0I);
            jSONObject.put(A00(19, 1, 21), this.A01);
            jSONObject.put(A00(7, 1, 85), this.A02);
            jSONObject.put(A00(0, 1, 50), this.A06);
            jSONObject.put(A00(16, 3, 123), this.A0J);
            jSONObject.put(A00(13, 3, 62), this.A07);
        } catch (Throwable th) {
            BC.A03(th);
        }
        return jSONObject;
    }
}
