package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.narvii.poweruser.history.ModerationHistory;
import com.tonyodev.fetch.FetchService;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class HK extends AbstractC0556Fu {
    private static byte[] A02;
    private final Context A00;
    private final Runtime A01 = Runtime.getRuntime();

    static {
        A04();
    }

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 31);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A04() {
        A02 = new byte[]{-85, -17, -11, -17, -16, -31, -23, -85, -35, -20, -20, -85, -49, -15, -20, -31, -18, -15, -17, -31, -18, -86, -35, -20, -25, -125, -57, -51, -57, -56, -71, -63, -125, -75, -60, -60, -125, -57, -55, -60, -71, -58, -57, -55, -126, -75, -60, -65, -120, 105, -98, -101, -82, -101, 105, -90, -87, -99, -101, -90, 105, -100, -93, -88, 105, -83, -81, -88, -20, -14, -20, -19, -34, -26, -88, -15, -37, -30, -25, -88, -20, -18, -122, -69, -72, -53, -72, -122, -61, -58, -70, -72, -61, -122, -54, -52, 114, -74, -68, -74, -73, -88, -80, 114, -74, -72, -104, -119, -105, -104, 81, -113, -119, -99, -105, -91, -78, -78, -81, -78, -121, -53, -47, -53, -52, -67, -59, -121, -70, -63, -58, -121, -66, -71, -63, -60, -53, -71, -66, -67, -121, -53, -51, -106, -38, -32, -38, -37, -52, -44, -106, -38, -53, -106, -33, -55, -48, -43, -106, -38, -36, -10, -2, -17, -23, -7, -8, -23, -19, -18, -9, -21, 101, -87, -81, -87, -86, -101, -93, 101, -82, -104, -97, -92, 101, -83, -98, -97, -103, -98, -36, -48, -40, -32, -54, -37, -35, -38, -37, -48, -35, -33, -44, -48, -34, 107, -81, -75, -81, -80, -95, -87, 107, -98, -91, -86, 107, 106, -95, -76, -80, 107, 106, -81, -79, -54, -52, -84, -16, -10, -16, -15, -30, -22, -84, -33, -26, -21, -84, -16, -14, -47, -34, -44, -30, -33, -39, -44, -98, -33, -29, -98, -61, -23, -29, -28, -43, -35, -64, -30, -33, -32, -43, -30, -28, -39, -43, -29, -93, -40, -43, -24, -43, -93, -32, -29, -41, -43, -32, -93, -20, -42, -35, -30, -93, -25, -23, -54, 14, -3, 4, 9, -54, 14, 16, -121, -53, -47, -53, -52, -67, -59, -121, -71, -56, -56, -121, -53, -51, -122, -71, -56, -61, -20, -22, -7, 83, -119, -104, -121, 83, -105, -119, -121, -103, -106, -115, -104, -99, 83, -109, -104, -123, -121, -119, -106, -104, -105, 82, -98, -115, -108};
    }

    public HK(Context context) {
        this.A00 = context;
    }

    @SuppressLint({"CatchGeneralException"})
    private static String A03(String str) throws Exception {
        Method method = null;
        Object objInvoke = null;
        String strA02 = A02(ModerationHistory.OP_ADMIN_SEND_STRIKE_TO_USER, 0, 117);
        String response = A02(241, 27, 81);
        Class<?> cls = Class.forName(response);
        char c = cls != null ? (char) 2 : (char) 16;
        while (true) {
            switch (c) {
                case 2:
                    method = cls.getMethod(A02(FetchService.ACTION_REMOVE, 3, 102), String.class);
                    if (method == null) {
                        c = '\f';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    objInvoke = method.invoke(cls, str);
                    c = '\f';
                    break;
                case '\f':
                    if (objInvoke == null) {
                        c = 16;
                        break;
                    } else {
                        c = '\r';
                        break;
                    }
                case '\r':
                    try {
                        strA02 = (String) objInvoke;
                        c = 16;
                        break;
                    } catch (Throwable t) {
                        C0593Hf.A02(t);
                        c = 16;
                        break;
                    }
                case 16:
                    return strA02;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"CatchGeneralException", "BadMethodUse-java.lang.String.length"})
    public void A06(String res, String str) {
        String strA03 = null;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (!res.equals(A02(161, 11, 107))) {
                        c = '\r';
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    try {
                        str = str;
                        strA03 = A03(str);
                        if (strA03.length() != 0) {
                            c = '\t';
                            break;
                        } else {
                            c = '\b';
                            break;
                        }
                    } catch (Throwable unused) {
                        A02(res, A02(115, 5, 33));
                        return;
                    }
                case '\b':
                    i = -1;
                    c = 11;
                    break;
                case '\t':
                    strA03 = strA03;
                    i = Integer.parseInt(strA03);
                    c = 11;
                    break;
                case 11:
                    A03(res, Integer.valueOf(i));
                    return;
                case '\r':
                    if (!res.equals(A02(190, 15, 76))) {
                        c = 21;
                        break;
                    } else {
                        c = 16;
                        break;
                    }
                case 16:
                    A03(res, Boolean.valueOf(A03(str).equals(A02(48, 1, 56))));
                    return;
                case 21:
                    A03(res, A03(str));
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean A07() {
        boolean z = false;
        Process processExec = null;
        try {
            processExec = Runtime.getRuntime().exec(new String[]{A02(TsExtractor.TS_STREAM_TYPE_AC4, 18, 23), A02(225, 2, 56)});
            if (new BufferedReader(new InputStreamReader(processExec.getInputStream())).readLine() != null) {
                z = true;
            }
            if (processExec != null) {
                processExec.destroy();
            }
            if (processExec != null) {
                processExec.destroy();
            }
        } catch (Exception unused) {
            if (processExec != null) {
                processExec.destroy();
            }
        } catch (Throwable th) {
            if (processExec != null) {
                processExec.destroy();
            }
            throw th;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean A08() {
        boolean z = false;
        char c = !new File(A02(0, 25, 93)).exists() ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    if (!new File(A02(25, 23, 53)).exists()) {
                        c = 3;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 3:
                    if (!new File(A02(295, 18, 57)).exists()) {
                        c = 4;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 4:
                    if (!new File(A02(FetchService.ACTION_QUERY, 26, 5)).exists()) {
                        c = 5;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 5:
                    z = true;
                    c = 6;
                    break;
                case 6:
                    return z;
                case 7:
                    z = false;
                    c = 6;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean A09() {
        boolean z = true;
        String[] strArr = {A02(227, 14, 94), A02(67, 15, 90), A02(287, 8, 124), A02(96, 10, 36), A02(ModerationHistory.OP_ADMIN_SEND_STRIKE_TO_USER, 20, 29), A02(143, 18, 72), A02(120, 23, 57), A02(82, 14, 56), A02(268, 19, 85), A02(49, 18, 27)};
        int length = strArr.length;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i >= length) {
                        c = 6;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    strArr = strArr;
                    if (!new File(strArr[i]).exists()) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return z;
                case 5:
                    i++;
                    c = 2;
                    break;
                case 6:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean A0A() {
        boolean z = false;
        String str = Build.TAGS;
        char c = str != null ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    String str2 = A02(106, 9, 5);
                    if (!str.contains(str2)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    z = true;
                    c = 4;
                    break;
                case 4:
                    return z;
                case 5:
                    z = false;
                    c = 4;
                    break;
            }
        }
    }

    public final InterfaceC0552Fq A0F() {
        return new HD(this);
    }

    @SuppressLint({"CatchGeneralException"})
    public final InterfaceC0552Fq A0G() {
        return new H8(this);
    }

    public final InterfaceC0552Fq A0H() {
        return new HA(this);
    }

    @SuppressLint({"CatchGeneralException"})
    public final InterfaceC0552Fq A0I() {
        return new H9(this);
    }

    public final InterfaceC0552Fq A0J() {
        return new HB(this);
    }

    @SuppressLint({"DisplayMetric"})
    public final InterfaceC0552Fq A0K() {
        return new HF(this);
    }

    public final InterfaceC0552Fq A0L() {
        return new H5(this);
    }

    @SuppressLint({"BadMethodUse-java.util.Locale.getDefault"})
    public final InterfaceC0552Fq A0M() {
        return new HG(this);
    }

    public final InterfaceC0552Fq A0N() {
        return new HI(this);
    }

    public final InterfaceC0552Fq A0O() {
        return new H6(this);
    }

    @SuppressLint({"CatchGeneralException"})
    public final InterfaceC0552Fq A0P() {
        return new HC(this);
    }

    public final InterfaceC0552Fq A0Q() {
        return new HJ(this);
    }

    public final InterfaceC0552Fq A0R() {
        return new HH(this);
    }

    public final InterfaceC0552Fq A0S() {
        return new HE(this);
    }

    public final InterfaceC0552Fq A0T() {
        return new H7(this);
    }
}
