package com.facebook.ads.redexgen.X;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import io.agora.rtc.Constants;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GY implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 96);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{72, 63, 78, 81, 73, 76, 69, 57, 61, 59, 74, 59, 60, 67, 70, 67, 78, 67, 63, 77, 57, 72, 73, 78, 57, 80, 74, 72, -26, -35, -20, -17, -25, -22, -29, -41, -37, -39, -24, -39, -38, -31, -28, -31, -20, -31, -35, -21, -41, -31, -26, -34, -25, 41, 54, 44, 58, 55, 49, 44, -10, 56, 45, 58, 53, 49, 59, 59, 49, 55, 54, -10, 9, 11, 11, 13, 27, 27, 39, 22, 13, 28, 31, 23, 26, 19, 39, 27, 28, 9, 28, 13, 56, 47, 62, 65, 57, 60, 53, 41, 45, 43, 58, 43, 44, 51, 54, 51, 62, 51, 47, 61, 41, 51, 56, 62, 47, 60, 56, 47, 62, -25, -34, -19, -16, -24, -21, -28, -40, -19, -21, -38, -25, -20, -23, -24, -21, -19, -40, -19, -14, -23, -34, -27, -26, -42, -25, -36, -23, -28, -32, -22, -22, -32, -26, -27, 15, 27, 26, 26, 17, 15, 32, 21, 34, 21, 32, 37, 60, 73, 73, 70, 73, 79, 72, 69, 72, 73, 81, 72, 16, 7, 22, 25, 17, 20, 13, 21};
    }

    public GY(C0563Gb c0563Gb) {
        this.A00 = c0563Gb;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        GY gy = this;
        ConnectivityManager connectivityManager = null;
        JSONArray jSONArray = null;
        Network[] allNetworks = null;
        int length = 0;
        int i = 0;
        Integer num = null;
        JSONObject jSONObject = null;
        NetworkCapabilities networkCapabilities = null;
        char c = Build.VERSION.SDK_INT < 21 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    gy = gy;
                    gy.A00.A02(A00(180, 8, 66), A00(173, 7, 122));
                    c = 3;
                    break;
                case 3:
                    return;
                case 4:
                    gy = gy;
                    if (!gy.A00.A06(gy.A00.A00, A00(53, 39, 104))) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    gy = gy;
                    gy.A00.A02(A00(180, 8, 66), A00(143, 13, 23));
                    c = 3;
                    break;
                case 6:
                    gy = gy;
                    connectivityManager = (ConnectivityManager) gy.A00.A00.getSystemService(A00(Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED, 12, 76));
                    if (connectivityManager != null) {
                        c = '\b';
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    gy = gy;
                    gy.A00.A02(A00(180, 8, 66), A00(168, 5, 119));
                    c = 3;
                    break;
                case '\b':
                    connectivityManager = connectivityManager;
                    allNetworks = connectivityManager.getAllNetworks();
                    jSONArray = new JSONArray();
                    length = allNetworks.length;
                    i = 0;
                    c = '\t';
                    break;
                case '\t':
                    if (i >= length) {
                        c = 26;
                        break;
                    } else {
                        c = '\n';
                        break;
                    }
                case '\n':
                    connectivityManager = connectivityManager;
                    allNetworks = allNetworks;
                    Network network = allNetworks[i];
                    jSONObject = new JSONObject();
                    networkCapabilities = connectivityManager.getNetworkCapabilities(network);
                    if (networkCapabilities != null) {
                        c = '\f';
                        break;
                    } else {
                        c = 11;
                        break;
                    }
                case 11:
                    i++;
                    c = '\t';
                    break;
                case '\f':
                    jSONObject = jSONObject;
                    networkCapabilities = networkCapabilities;
                    jSONObject.put(A00(28, 25, 24), networkCapabilities.toString());
                    jSONObject.put(A00(92, 29, 106), networkCapabilities.hasCapability(12));
                    jSONObject.put(A00(0, 28, 122), networkCapabilities.hasCapability(15));
                    num = -1;
                    if (!networkCapabilities.hasTransport(0)) {
                        c = 15;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    num = 0;
                    c = 14;
                    break;
                case 14:
                    jSONArray = jSONArray;
                    jSONObject = jSONObject;
                    num = num;
                    jSONObject.put(A00(121, 22, 25), num);
                    jSONArray.put(jSONObject);
                    c = 11;
                    break;
                case 15:
                    networkCapabilities = networkCapabilities;
                    if (!networkCapabilities.hasTransport(1)) {
                        c = 17;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    num = 1;
                    c = 14;
                    break;
                case 17:
                    networkCapabilities = networkCapabilities;
                    if (!networkCapabilities.hasTransport(2)) {
                        c = 19;
                        break;
                    } else {
                        c = 18;
                        break;
                    }
                case 18:
                    num = 2;
                    c = 14;
                    break;
                case 19:
                    networkCapabilities = networkCapabilities;
                    if (!networkCapabilities.hasTransport(3)) {
                        c = 21;
                        break;
                    } else {
                        c = 20;
                        break;
                    }
                case 20:
                    num = 3;
                    c = 14;
                    break;
                case 21:
                    networkCapabilities = networkCapabilities;
                    if (!networkCapabilities.hasTransport(4)) {
                        c = 23;
                        break;
                    } else {
                        c = 22;
                        break;
                    }
                case 22:
                    num = 4;
                    c = 14;
                    break;
                case 23:
                    networkCapabilities = networkCapabilities;
                    if (!networkCapabilities.hasTransport(5)) {
                        c = 14;
                        break;
                    } else {
                        c = 24;
                        break;
                    }
                case 24:
                    if (Build.VERSION.SDK_INT < 26) {
                        c = 14;
                        break;
                    } else {
                        c = 25;
                        break;
                    }
                case 25:
                    num = 5;
                    c = 14;
                    break;
                case 26:
                    gy = gy;
                    jSONArray = jSONArray;
                    gy.A00.A03(A00(180, 8, 66), jSONArray);
                    c = 3;
                    break;
            }
        }
    }
}
