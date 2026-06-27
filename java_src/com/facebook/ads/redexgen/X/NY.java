package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.support.annotation.VisibleForTesting;
import java.io.IOException;
import java.util.Arrays;
import java.util.concurrent.Executors;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class NY {
    private static int A00;
    private static byte[] A01;
    public static volatile NX A02;

    private static String A06(int i, int i2, int i3) {
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

    private static void A07() {
        A01 = new byte[]{26, 53, 63, 41, 52, 50, 63, 22, 58, 53, 50, 61, 62, 40, 47, 117, 35, 54, 55, 38, 34, 37, 24, 47, 32, 29, 46, 57, 56, 34, 36, 37, 97, 103, 113, 103, 57, 103, 112, 127};
    }

    static {
        A07();
        A00 = -1;
        A02 = NX.A04;
    }

    private NY() {
    }

    public static int A01(Context context) {
        if (A02 == NX.A04) {
            A08(context);
        }
        return A00;
    }

    @SuppressLint({"CatchGeneralException"})
    public static int A02(Context context) {
        try {
            return A05(context.getAssets().openXmlResourceParser(A06(0, 19, 5)));
        } catch (Throwable unused) {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int A03(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).minSdkVersion;
        } catch (PackageManager.NameNotFoundException unused) {
            return 0;
        }
    }

    @VisibleForTesting(otherwise = 2)
    private static int A05(XmlPullParser xmlPullParser) throws XmlPullParserException, NumberFormatException, IOException {
        int i = 0;
        int i2 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    xmlPullParser = xmlPullParser;
                    if (xmlPullParser.next() == 1) {
                        c = 11;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    xmlPullParser = xmlPullParser;
                    if (xmlPullParser.getEventType() != 2) {
                        c = 2;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    xmlPullParser = xmlPullParser;
                    if (!xmlPullParser.getName().equals(A06(32, 8, 74))) {
                        c = 2;
                        break;
                    } else {
                        c = 5;
                        break;
                    }
                case 5:
                    i2 = 0;
                    c = 6;
                    break;
                case 6:
                    xmlPullParser = xmlPullParser;
                    if (i2 >= xmlPullParser.getAttributeCount()) {
                        c = 2;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    xmlPullParser = xmlPullParser;
                    if (!xmlPullParser.getAttributeName(i2).equals(A06(19, 13, 21))) {
                        c = '\n';
                        break;
                    } else {
                        c = '\b';
                        break;
                    }
                case '\b':
                    xmlPullParser = xmlPullParser;
                    i = Integer.parseInt(xmlPullParser.getAttributeValue(i2));
                    c = '\t';
                    break;
                case '\t':
                    return i;
                case '\n':
                    i2++;
                    c = 6;
                    break;
                case 11:
                    i = 0;
                    c = '\t';
                    break;
            }
        }
    }

    private static void A08(Context context) {
        if (A0A()) {
            return;
        }
        A09(context);
    }

    private static void A09(Context context) {
        if (A02 != NX.A04) {
            return;
        }
        A02 = NX.A03;
        Executors.newSingleThreadExecutor().execute(new NW(context));
    }

    private static boolean A0A() {
        boolean z = false;
        char c = A02 == NX.A02 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    z = true;
                    c = 3;
                    break;
                case 3:
                    return z;
                case 4:
                    z = false;
                    c = 3;
                    break;
            }
        }
    }
}
