package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class JK {
    private static byte[] A0F;
    private static final AdPlacementType A0G;
    private static final String A0H;
    public int A00;
    public int A01;
    private int A02;
    private int A03;
    private int A04;
    private int A05;
    private int A06;
    private int A07;
    private int A08;
    private int A09;
    private int A0A;
    private AdPlacementType A0B;
    private List<JI> A0C;
    private boolean A0D;
    private final long A0E = System.currentTimeMillis();

    private static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 16);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A0F = new byte[]{-93, -106, -110, -92, -114, -113, -106, -103, -106, -95, -90, -116, -112, -107, -110, -112, -104, -116, -95, -106, -112, -104, -110, -97, -44, -39, -48, -59, -73, -86, -85, -73, -86, -72, -83, -92, -71, -83, -73, -86, -72, -83, -76, -79, -87, -104, -117, -121, -103, -125, -124, -117, -114, -117, -106, -101, -127, -123, -118, -121, -123, -115, -127, -117, -112, -106, -121, -108, -104, -125, -114, -108, -112, -123, -121, -119, -111, -119, -110, -104, -125, -116, -119, -115, -117, -116, -104, -61, -63, -61, -56, -59, -63, -62, -52, -59, -3, -16, -15, -3, -16, -2, -13, -3, -16, -21, -20, -10, -26, -5, -16, -12, -20, -26, -9, -10, -13, -13, -16, -11, -18, -26, -16, -11, -5, -20, -7, -3, -24, -13, -37, -50, -54, -36, -58, -57, -50, -47, -50, -39, -34, -60, -56, -51, -54, -56, -48, -60, -50, -45, -50, -39, -50, -58, -47, -60, -55, -54, -47, -58, -34, -114, -118, -113, -128, -105, -118, -122, -104, -126, -125, -118, -115, -118, -107, -102, -128, -111, -122, -109, -124, -122, -113, -107, -126, -120, -122, -80, -75, -67, -88, -77, -80, -85, -88, -69, -80, -74, -75, -90, -85, -68, -71, -88, -69, -80, -74, -75, -90, -80, -75, -90, -70, -84, -86, -74, -75, -85, -70, -120, -89, -62, -54, -51, -58, -59, -127, -43, -48, -127, -44, -58, -43, -127, -60, -48, -48, -52, -54, -58, -113, -104, -117, -105, -101, -117, -103, -102, -123, -102, -113, -109, -117, -107, -101, -102, 101, 110, -103, -105, -117, -109, -104, 103, -76, -23, -38, -19, -31, -74, -88, 75, 85, -120, -128, 121, -126, 117, -125, 77, -77, -81, -92, -90, -88, -80, -88, -79, -73, -94, -70, -84, -89, -73, -85, -108, -96, -97, -89, -112, -91, -93, -110, -108, -100, -102, -97, -104, -112, -107, -110, -91, -110};
    }

    static {
        A02();
        A0H = JK.class.getSimpleName();
        A0G = AdPlacementType.UNKNOWN;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private JK(java.util.Map<java.lang.String, java.lang.String> r14) {
        /*
            Method dump skipped, instructions count: 812
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.JK.<init>(java.util.Map):void");
    }

    public static JK A00(JSONObject jSONObject) {
        JK jk = null;
        Iterator<String> itKeys = null;
        HashMap map = null;
        char c = jSONObject == null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    jk = null;
                    c = 3;
                    break;
                case 3:
                    return jk;
                case 4:
                    jSONObject = jSONObject;
                    itKeys = jSONObject.keys();
                    map = new HashMap();
                    c = 5;
                    break;
                case 5:
                    itKeys = itKeys;
                    if (!itKeys.hasNext()) {
                        c = 7;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 6:
                    jSONObject = jSONObject;
                    itKeys = itKeys;
                    map = map;
                    String next = itKeys.next();
                    map.put(next, String.valueOf(jSONObject.opt(next)));
                    c = 5;
                    break;
                case 7:
                    map = map;
                    jk = new JK(map);
                    c = 3;
                    break;
            }
        }
    }

    public final int A03() {
        return this.A02 * 1000;
    }

    public final int A04() {
        return this.A03;
    }

    public final int A05() {
        return this.A06;
    }

    public final int A06() {
        return this.A07;
    }

    public final int A07() {
        return this.A08;
    }

    public final int A08() {
        return this.A09;
    }

    public final int A09() {
        return this.A0A;
    }

    public final long A0A() {
        return this.A04 * 1000;
    }

    public final long A0B() {
        return this.A05 * 1000;
    }

    public final long A0C() {
        return this.A0E;
    }

    public final AdPlacementType A0D() {
        return this.A0B;
    }

    public final boolean A0E() {
        return this.A0D;
    }
}
