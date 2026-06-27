package com.facebook.ads.redexgen.X;

import com.narvii.master.MasterTemplatePickerFragment;
import com.narvii.util.ws.WsMessage;
import io.agora.rtc.Constants;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public enum BB {
    A03(A00(Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED, 14, 82)),
    A09(A00(WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE, 19, 106)),
    A05(A00(0, 15, 85)),
    A06(A00(65, 38, 8)),
    A08(A00(com.narvii.util.Constants.ADMIN_SET_USER_MEMBERSHIP_TITLE, 37, 94)),
    A04(A00(270, 40, 74)),
    A07(A00(MasterTemplatePickerFragment.API_ERR_COMMUNITY_USER_CREATED_COMMUNITIES_VERIFY, 13, 60));

    private static byte[] A01;
    private final String A00;

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 60);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A01() {
        A01 = new byte[]{-13, 6, -9, -9, -10, 3, -16, -12, -14, 1, -14, -12, -6, 5, 10, -39, -38, -57, -38, -49, -55, -27, -39, -49, -51, -44, -57, -46, -27, -55, -49, -40, -55, -37, -46, -57, -40, -27, -56, -37, -52, -52, -53, -40, -27, -46, -53, -44, -51, -38, -50, -5, 10, 10, 25, 13, -1, 13, 13, 3, 9, 8, 25, 3, -2, -88, -67, -78, -91, -79, -83, -89, -93, -73, -83, -85, -78, -91, -80, -93, -89, -83, -74, -71, -89, -71, -80, -91, -74, -93, -90, -71, -86, -86, -87, -74, -93, -80, -87, -78, -85, -72, -84, -125, -106, -121, -121, -122, -109, -96, -124, -126, -111, -126, -124, -118, -107, -102, -72, -83, -79, -87, -74, -61, -83, -78, -72, -87, -74, -70, -91, -80, -61, -72, -83, -79, -87, 26, 15, 19, 11, 24, 5, 15, 20, 26, 11, 24, 28, 7, 18, 5, 26, 15, 19, 11, -17, -2, -2, -19, 1, -13, 1, 1, -9, -3, -4, -19, -9, -14, -15, 6, -5, -18, -6, -10, -16, 12, 0, -10, -12, -5, -18, -7, 12, -16, -10, -1, -16, 2, -7, -18, -1, 12, -17, 2, -13, -13, -14, -1, 12, -7, -14, -5, -12, 1, -11, 13, 14, -5, 14, 3, -3, -7, 13, 3, 1, 8, -5, 6, -7, -3, 3, 12, 15, -3, 15, 6, -5, 12, -7, -4, 15, 0, 0, -1, 12, -7, 6, -1, 8, 1, 14, 2, -37, -47, -49, -42, -55, -44, -25, -53, -41, -42, -50, -47, -49, -21, -31, -33, -26, -39, -28, -41, -37, -25, -26, -34, -31, -33, -24, -17, -11, -13, -21, -6, -8, -17, -23, -27, -7, -17, -19, -12, -25, -14, -27, -23, -17, -8, -5, -23, -5, -14, -25, -8, -27, -24, -5, -20, -20, -21, -8, -27, -14, -21, -12, -19, -6, -18, -112, -105, -99, -101, -109, -94, -96, -105, -111, -83, -95, -105, -107, -100, -113, -102, -83, -111, -105, -96, -111, -93, -102, -113, -96, -83, -112, -93, -108, -108, -109, -96, -83, -102, -109, -100, -107, -94, -106};
    }

    static {
        A01();
    }

    BB(String str) {
        this.A00 = str;
    }

    public final String A02() {
        return this.A00;
    }
}
