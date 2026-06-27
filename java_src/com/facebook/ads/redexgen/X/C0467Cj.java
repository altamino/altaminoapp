package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.os.Build;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Cj, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public class C0467Cj implements InterfaceC0466Ci {
    private static byte[] A06;
    private final int A00;
    private final int A01;
    private final int A02;
    private final int A03;
    private final int A04;
    private final String A05;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 110);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A06 = new byte[]{67, 1, 22, 21, 41, 42, 25, 11, 71, 62, 61};
    }

    @SuppressLint({"MissingPermission"})
    public C0467Cj(BluetoothDevice bluetoothDevice) {
        this.A05 = bluetoothDevice.getName();
        this.A03 = bluetoothDevice.getBondState();
        if (Build.VERSION.SDK_INT >= 18) {
            this.A04 = bluetoothDevice.getType();
        } else {
            this.A04 = -1;
        }
        this.A00 = bluetoothDevice.getBluetoothClass().getDeviceClass();
        this.A01 = bluetoothDevice.getBluetoothClass().getMajorDeviceClass();
        this.A02 = A00(bluetoothDevice.getBluetoothClass());
    }

    private static int A00(BluetoothClass bluetoothClass) {
        int i = 0;
        int i2 = 0;
        int serviceBitmask = 2;
        while (true) {
            switch (serviceBitmask) {
                case 2:
                    if (i2 >= 31) {
                        serviceBitmask = 6;
                        break;
                    } else {
                        serviceBitmask = 3;
                        break;
                    }
                case 3:
                    bluetoothClass = bluetoothClass;
                    int serviceBitmask2 = 1 << i2;
                    if (!bluetoothClass.hasService(serviceBitmask2)) {
                        serviceBitmask = 5;
                        break;
                    } else {
                        serviceBitmask = 4;
                        break;
                    }
                case 4:
                    int serviceBitmask3 = 1 << i2;
                    i |= serviceBitmask3;
                    serviceBitmask = 5;
                    break;
                case 5:
                    i2++;
                    serviceBitmask = 2;
                    break;
                case 6:
                    return i;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0466Ci
    public final boolean A3v(Object obj) {
        C0467Cj customObjectSignalValueDef = this;
        boolean z = false;
        C0467Cj c0467Cj = (C0467Cj) obj;
        char c = customObjectSignalValueDef.A05 == null ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    c0467Cj = c0467Cj;
                    if (c0467Cj.A05 == null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    customObjectSignalValueDef = customObjectSignalValueDef;
                    c0467Cj = c0467Cj;
                    if (!customObjectSignalValueDef.A05.equals(c0467Cj.A05)) {
                        c = 11;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    customObjectSignalValueDef = customObjectSignalValueDef;
                    c0467Cj = c0467Cj;
                    if (customObjectSignalValueDef.A03 != c0467Cj.A03) {
                        c = 11;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    customObjectSignalValueDef = customObjectSignalValueDef;
                    c0467Cj = c0467Cj;
                    if (customObjectSignalValueDef.A04 != c0467Cj.A04) {
                        c = 11;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    customObjectSignalValueDef = customObjectSignalValueDef;
                    c0467Cj = c0467Cj;
                    if (customObjectSignalValueDef.A00 != c0467Cj.A00) {
                        c = 11;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    customObjectSignalValueDef = customObjectSignalValueDef;
                    c0467Cj = c0467Cj;
                    if (customObjectSignalValueDef.A01 != c0467Cj.A01) {
                        c = 11;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    customObjectSignalValueDef = customObjectSignalValueDef;
                    c0467Cj = c0467Cj;
                    if (customObjectSignalValueDef.A02 != c0467Cj.A02) {
                        c = 11;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    z = true;
                    c = '\n';
                    break;
                case '\n':
                    return z;
                case 11:
                    z = false;
                    c = '\n';
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0466Ci
    @SuppressLint({"BadMethodUse-java.lang.String.length"})
    public final int A76() {
        C0467Cj c0467Cj = this;
        int length = 0;
        char c = c0467Cj.A05 != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    c0467Cj = c0467Cj;
                    length = A01(1, 1, 37).length() + c0467Cj.A05.length();
                    c = 3;
                    break;
                case 3:
                    return length + A01(4, 2, 72).length() + 4 + A01(0, 1, 97).length() + 4 + A01(2, 2, 68).length() + 4 + A01(8, 3, 108).length() + 4 + A01(6, 2, 56).length() + 4;
                case 4:
                    length = 0;
                    c = 3;
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0466Ci
    public final JSONObject A79() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(A01(1, 1, 37), this.A05);
        jSONObject.put(A01(4, 2, 72), this.A03);
        jSONObject.put(A01(0, 1, 97), this.A04);
        jSONObject.put(A01(2, 2, 68), this.A00);
        jSONObject.put(A01(8, 3, 108), this.A01);
        jSONObject.put(A01(6, 2, 56), this.A02);
        return jSONObject;
    }
}
