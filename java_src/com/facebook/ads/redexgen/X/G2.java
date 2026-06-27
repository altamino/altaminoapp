package com.facebook.ads.redexgen.X;

import android.media.AudioDeviceInfo;
import android.os.Build;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class G2 implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ G4 A00;

    static {
        A01();
    }

    private static String A00(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 94);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{83, 72, 77, 72, 73, 81, 72, 86, 66, 83, 94, 88, 104, 67, 78, 71, 82, 68, 70, 91, 80, 65, 87, 64, 107, 90, 85, 89, 81, 33, 53, 36, 41, 47, 31, 36, 37, 54, 41, 35, 37, 51};
    }

    public G2(G4 g4) {
        this.A00 = g4;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        G2 g2 = this;
        int i = 0;
        int length = 0;
        JSONArray jSONArray = null;
        AudioDeviceInfo[] devices = null;
        char c = Build.VERSION.SDK_INT >= 23 ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    g2 = g2;
                    if (g2.A00.A00 != null) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    g2 = g2;
                    g2.A00.A02(A00(29, 13, 30), A00(0, 7, 120));
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    g2 = g2;
                    jSONArray = new JSONArray();
                    devices = g2.A00.A00.getDevices(1);
                    length = devices.length;
                    i = 0;
                    c = 6;
                    break;
                case 6:
                    if (i >= length) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    jSONArray = jSONArray;
                    devices = devices;
                    AudioDeviceInfo audioDeviceInfo = devices[i];
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put(A00(17, 12, 106), audioDeviceInfo.getProductName().toString());
                    jSONObject.put(A00(7, 10, 105), audioDeviceInfo.getType());
                    jSONArray.put(jSONObject);
                    i++;
                    c = 6;
                    break;
                case '\b':
                    g2 = g2;
                    jSONArray = jSONArray;
                    g2.A00.A03(A00(29, 13, 30), jSONArray);
                    c = 4;
                    break;
            }
        }
    }
}
