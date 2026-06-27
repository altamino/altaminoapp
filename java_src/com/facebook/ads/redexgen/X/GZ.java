package com.facebook.ads.redexgen.X;

import android.net.wifi.ScanResult;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GZ implements InterfaceC0552Fq {
    private static byte[] A01;
    public final /* synthetic */ C0563Gb A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 55);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{38, 31, 28, 31, 32, 40, 31, -54, -68, -71, -68, -78, -63, -72, -76, -59};
    }

    public GZ(C0563Gb c0563Gb) {
        this.A00 = c0563Gb;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        GZ gz = this;
        Iterator<ScanResult> it = null;
        List<ScanResult> scanResultList = null;
        JSONArray jSONArray = null;
        String bssid = null;
        ScanResult next = null;
        char c = gz.A00.A05(A00(7, 9, 28)) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    return;
                case 3:
                    gz = gz;
                    scanResultList = gz.A00.A01.getScanResults();
                    if (!scanResultList.isEmpty()) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    gz = gz;
                    gz.A00.A02(A00(7, 9, 28), A00(0, 7, 122));
                    c = 2;
                    break;
                case 5:
                    gz = gz;
                    scanResultList = scanResultList;
                    bssid = gz.A00.A01.getConnectionInfo().getBSSID();
                    jSONArray = new JSONArray();
                    it = scanResultList.iterator();
                    c = 6;
                    break;
                case 6:
                    it = it;
                    if (!it.hasNext()) {
                        c = '\t';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    bssid = bssid;
                    it = it;
                    next = it.next();
                    if (!bssid.equals(next.BSSID)) {
                        c = '\b';
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case '\b':
                    jSONArray = jSONArray;
                    next = next;
                    jSONArray.put(next.BSSID);
                    if (jSONArray.length() <= 2) {
                        c = 6;
                        break;
                    } else {
                        c = '\t';
                        break;
                    }
                case '\t':
                    gz = gz;
                    jSONArray = jSONArray;
                    gz.A00.A03(A00(7, 9, 28), jSONArray);
                    c = 2;
                    break;
            }
        }
    }
}
