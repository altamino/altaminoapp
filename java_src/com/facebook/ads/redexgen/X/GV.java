package com.facebook.ads.redexgen.X;

import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GV implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 37);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-89, -103, -106, -103, -113, -94, -93, -93, -103, -16, -30, -33, -30, -40, -31, -30, -35, -35, -34, -25, -40, -20, -20, -30, -35, 15, 1, -2, 1, -9, 1, 8, -65, -79, -82, -79, -89, -86, -69, -69, -79, -84, 79, -114, 88, 79, -114, 88, 79, -114, 88, 79, -114, -33, -47, -50, -47, -57, -37, -36, -55, -36, -51, -30, -44, -47, -44, -54, -44, -39, -47, -38, 108, -94, 102, 109, -64, 108, 102, 104, 109, 4, -10, -13, -10, -20, 0, 0, -10, -15, -43, -36, -45, -45};
    }

    public GV(C0563Gb c0563Gb) {
        this.A00 = c0563Gb;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        GV gv = this;
        JSONObject jSONObject = null;
        NetworkInfo.DetailedState state = null;
        String strA00 = null;
        String ssid = null;
        String strA002 = null;
        WifiInfo connectionInfo = null;
        char c = !gv.A00.A05(A00(63, 9, 70)) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    gv = gv;
                    if (gv.A00.A01.getConnectionInfo() != null) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    return;
                case 4:
                    gv = gv;
                    connectionInfo = gv.A00.A01.getConnectionInfo();
                    state = WifiInfo.getDetailedStateOf(connectionInfo.getSupplicantState());
                    jSONObject = new JSONObject();
                    strA00 = A00(53, 10, 67);
                    if (state != null) {
                        c = '\r';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    strA002 = A00(90, 4, 66);
                    c = 6;
                    break;
                case 6:
                    state = state;
                    jSONObject = jSONObject;
                    strA00 = strA00;
                    strA002 = strA002;
                    jSONObject.put(strA00, strA002);
                    if (state == NetworkInfo.DetailedState.CONNECTED) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    state = state;
                    if (state != NetworkInfo.DetailedState.OBTAINING_IPADDR) {
                        c = '\f';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    gv = gv;
                    connectionInfo = connectionInfo;
                    jSONObject = jSONObject;
                    jSONObject.put(A00(0, 9, 11), connectionInfo.getRssi());
                    int ipAddress = connectionInfo.getIpAddress();
                    jSONObject.put(A00(25, 7, 115), String.format(Locale.US, A00(42, 11, 5), Integer.valueOf(ipAddress & 255), Integer.valueOf((ipAddress >> 8) & 255), Integer.valueOf((ipAddress >> 16) & 255), Integer.valueOf((ipAddress >> 24) & 255)));
                    if (!gv.A00.A01.getScanResults().isEmpty()) {
                        c = '\t';
                        break;
                    } else {
                        c = '\f';
                        break;
                    }
                case '\t':
                    connectionInfo = connectionInfo;
                    ssid = connectionInfo.getSSID();
                    if (ssid == null) {
                        c = 11;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    ssid = ssid.replaceAll(A00(72, 9, 31), A00(63, 0, 114));
                    c = 11;
                    break;
                case 11:
                    connectionInfo = connectionInfo;
                    jSONObject = jSONObject;
                    ssid = ssid;
                    jSONObject.put(A00(81, 9, 104), ssid);
                    jSONObject.put(A00(32, 10, 35), connectionInfo.getBSSID());
                    jSONObject.put(A00(9, 16, 84), connectionInfo.getHiddenSSID());
                    c = '\f';
                    break;
                case '\f':
                    gv = gv;
                    jSONObject = jSONObject;
                    gv.A00.A03(A00(63, 9, 70), jSONObject);
                    c = 3;
                    break;
                case '\r':
                    state = state;
                    strA002 = state.toString();
                    c = 6;
                    break;
            }
        }
    }
}
