package com.facebook.ads.redexgen.X;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.narvii.permisson.NVPermission;
import java.util.Arrays;
import java.util.Iterator;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Ot, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public final class C0784Ot {
    private static byte[] A00;

    static {
        A03();
    }

    private static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 42);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A00 = new byte[]{-13, -26, -30, -12, -47, -10, -19, -30, -89, -93, -94, -42, -59, -54, -58, -49, -60, -58, -81, -58, -43, -40, -48, -45, -52, -34, -46, -29, -36, -42, -27, -90, -74, -77, -69, -73, -87, -74, -103, -106, -112, -59, -47, -47, -51, -48, -52, -40, -40, -44, -98, -109, -109, -44, -48, -59, -35, -110, -53, -45, -45, -53, -48, -55, -110, -57, -45, -47, -109, -41, -40, -45, -42, -55, -109, -59, -44, -44, -41, -109, -2, -6, -17, 7, -68, -11, -3, -3, -11, -6, -13, -68, -15, -3, -5, -25, -13, -13, -17, -85, -55, -42, -113, -36, -120, -37, -36, -55, -38, -36, -120, -87, -35, -52, -47, -51, -42, -53, -51, -74, -51, -36, -33, -41, -38, -45, -87, -53, -36, -47, -34, -47, -36, -31, -106, -120, -75, -55, -45, -51, -120, -37, -35, -38, -51, -120, -36, -48, -55, -36, -120, -47, -36, -113, -37, -120, -47, -42, -120, -31, -41, -35, -38, -120, -87, -42, -52, -38, -41, -47, -52, -75, -55, -42, -47, -50, -51, -37, -36, -106, -32, -43, -44, -120, -50, -47, -44, -51, -106, -61, -46, -59, -63, -44, -59, -65, -50, -59, -41, -65, -44, -63, -62, -13, -4, -7, -11, -2, 4, -28, -1, -5, -11, -2, -2, 10, 8, -55, -4, 9, -1, 13, 10, 4, -1, -55, -3, 13, 10, 18, 14, 0, 13, -55, -4, 11, 11, 7, 4, -2, -4, 15, 4, 10, 9, -6, 4, -1, -112, -99, -109, -95, -98, -104, -109, 93, -104, -99, -93, -108, -99, -93, 93, -110, -112, -93, -108, -106, -98, -95, -88, 93, 113, -127, 126, -122, -126, 112, 113, 123, 116, -22, -29, -16, -26, -18, -25, -12, -42, -21, -17, -25, -60, -47, -62, -60, -58, -41, -52, -39, -52, -41, -36, -82, -69, -79, -65, -68, -74, -79, 123, -74, -69, -63, -78, -69, -63, 123, -82, -80, -63, -74, -68, -69, 123, -93, -106, -110, -92, -33, -21, -23, -86, -35, -22, -32, -18, -21, -27, -32, -86, -14, -31, -22, -32, -27, -22, -29};
    }

    private Intent A00(Context context, Uri uri) {
        Intent intentA01 = A01(uri);
        intentA01.addCategory(A02(248, 33, 5));
        intentA01.addFlags(C.ENCODING_PCM_MU_LAW);
        intentA01.putExtra(A02(214, 34, 113), context.getPackageName());
        intentA01.putExtra(A02(PsExtractor.PRIVATE_STREAM_1, 14, 54), false);
        return intentA01;
    }

    private Intent A01(Uri uri) {
        Intent intent = new Intent(A02(303, 26, 35), uri);
        intent.setComponent(null);
        if (Build.VERSION.SDK_INT >= 15) {
            intent.setSelector(null);
        }
        return intent;
    }

    private void A04(Context context, Uri uri) {
        context.startActivity(A00(context, uri));
    }

    private final void A05(Context context, Uri uri) throws C0779Oo {
        if (!A09(context)) {
            throw new C0779Oo();
        }
        Intent intentA00 = A00(context, uri);
        intentA00.setPackage(A02(329, 19, 82));
        context.startActivity(intentA00);
    }

    private void A06(Context context, Uri uri, String str) {
        Intent intent = new Intent(context, (Class<?>) NQ.A03());
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra(A02(0, 8, 83), M6.A02);
        intent.putExtra(A02(31, 10, 26), uri.toString());
        intent.putExtra(A02(NVPermission.REQ_SHARE_BUTTON_SAVE_STORY, 11, 102), str);
        intent.putExtra(A02(281, 11, 88), System.currentTimeMillis());
        try {
            NQ.A06(context, intent);
        } catch (ActivityNotFoundException e) {
            P7.A07(context, A02(292, 11, 57), P8.A04, new PA(e));
            Log.e(A02(8, 17, 55), A02(99, 90, 62), e);
        }
    }

    private final void A07(Context context, Uri uri, String str) {
        C0784Ot c0784Ot = this;
        char c = A0A(uri.getScheme()) ? (char) 2 : (char) 5;
        while (true) {
            switch (c) {
                case 2:
                    context = context;
                    if (!K1.A13(context)) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    c0784Ot = c0784Ot;
                    context = context;
                    uri = uri;
                    str = str;
                    c0784Ot.A06(context, uri, str);
                    c = 4;
                    break;
                case 4:
                    return;
                case 5:
                    c0784Ot = c0784Ot;
                    context = context;
                    uri = uri;
                    c0784Ot.A04(context, uri);
                    c = 4;
                    break;
            }
        }
    }

    public static void A08(C0784Ot c0784Ot, Context context, Uri uri, String str) {
        boolean z = false;
        char c = A0A(uri.getScheme()) ? (char) 2 : (char) 6;
        while (true) {
            switch (c) {
                case 2:
                    uri = uri;
                    if (!uri.getHost().equals(A02(80, 15, 100))) {
                        c = 6;
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
                    uri = uri;
                    if (!uri.getScheme().equals(A02(25, 6, 71))) {
                        c = 5;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 5:
                    if (!z) {
                        c = 7;
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case 6:
                    z = false;
                    c = 4;
                    break;
                case 7:
                    c0784Ot.A07(context, uri, str);
                    return;
                case '\b':
                    try {
                        c0784Ot = c0784Ot;
                        context = context;
                        uri = uri;
                        c0784Ot.A05(context, uri);
                        return;
                    } catch (C0779Oo unused) {
                        c0784Ot.A07(context, uri, str);
                        return;
                    }
            }
        }
    }

    private boolean A09(Context context) {
        boolean z = false;
        Iterator<ResolveInfo> it = context.getPackageManager().queryIntentActivities(new Intent(A02(303, 26, 35), Uri.parse(A02(46, 34, 58))), 0).iterator();
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    it = it;
                    if (!it.hasNext()) {
                        c = 5;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    it = it;
                    if (!it.next().activityInfo.applicationInfo.packageName.equals(A02(329, 19, 82))) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    z = true;
                    c = 5;
                    break;
                case 5:
                    return z;
            }
        }
    }

    private static boolean A0A(String str) {
        boolean z = false;
        char c = !A02(95, 4, 85).equalsIgnoreCase(str) ? (char) 2 : (char) 3;
        while (true) {
            switch (c) {
                case 2:
                    str = str;
                    if (!A02(41, 5, 51).equalsIgnoreCase(str)) {
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
}
