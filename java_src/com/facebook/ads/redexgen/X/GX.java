package com.facebook.ads.redexgen.X;

import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Arrays;
import java.util.Enumeration;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public class GX implements InterfaceC0552Fq {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 101);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{69, 78, 95, 92, 68, 89, 64, 116, 93, 66, 89, 95, 94, 74, 71, 72, 79, 68, 85, 126, 64, 69, 69, 83, 68, 82, 82, 68, 82, 91, 78, 76, 38, 91, 13, 20, 31, 14, 13, 21, 8, 17, 37, 23, 27, 25, 114, 121, 104, 107, 115, 110, 119, 67, 112, 115, 115, 108, 126, 125, 127, 119, 15, 24, 24, 5, 24, 37, 46, 63, 60, 36, 57, 32, 20, 34, 37, 63, 46, 57, 45, 42, 40, 46, 20, 37, 42, 38, 46, 18, 42, 33, 48, 51, 43, 54, 47, 27, 45, 42, 48, 33, 54, 34, 37, 39, 33, 55, 56, 51, 34, 33, 57, 36, 61, 9, 63, 38};
    }

    public GX(C0563Gb c0563Gb) {
        this.A00 = c0563Gb;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0552Fq
    public final void A32() throws Throwable {
        try {
            Enumeration<NetworkInterface> en = NetworkInterface.getNetworkInterfaces();
            if (en == null) {
                this.A00.A02(A00(90, 18, 33), null);
                return;
            }
            JSONArray jSONArray = new JSONArray();
            while (en.hasMoreElements()) {
                Object objA00 = A00(108, 0, 13);
                NetworkInterface networkInterfaceNextElement = en.nextElement();
                if (networkInterfaceNextElement != null && networkInterfaceNextElement.isUp()) {
                    JSONObject jSONObject = new JSONObject();
                    byte[] hardwareAddress = networkInterfaceNextElement.getHardwareAddress();
                    if (hardwareAddress != null) {
                        StringBuilder sb = new StringBuilder();
                        int i = 0;
                        while (i < hardwareAddress.length) {
                            String strA00 = A00(29, 6, 27);
                            Object[] objArr = new Object[2];
                            objArr[0] = Byte.valueOf(hardwareAddress[i]);
                            objArr[1] = i < hardwareAddress.length + (-1) ? A00(89, 1, 90) : A00(108, 0, 13);
                            sb.append(String.format(strA00, objArr));
                            i++;
                        }
                        objA00 = sb.toString();
                    }
                    jSONObject.put(A00(35, 11, 31), objA00);
                    jSONObject.put(A00(0, 15, 78), networkInterfaceNextElement.isVirtual());
                    jSONObject.put(A00(67, 22, 46), networkInterfaceNextElement.getName());
                    JSONArray jSONArray2 = new JSONArray();
                    Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        JSONObject jSONObject2 = new JSONObject();
                        InetAddress inetAddressNextElement = inetAddresses.nextElement();
                        jSONObject2.put(A00(108, 10, 51), inetAddressNextElement.getHostAddress());
                        jSONObject2.put(A00(46, 16, 121), inetAddressNextElement.isLoopbackAddress());
                        jSONArray2.put(jSONObject2);
                    }
                    jSONObject.put(A00(15, 14, 68), jSONArray2);
                    jSONArray.put(jSONObject);
                }
            }
            this.A00.A03(A00(90, 18, 33), jSONArray);
        } catch (Throwable unused) {
            this.A00.A02(A00(90, 18, 33), A00(62, 5, 15));
        }
    }
}
