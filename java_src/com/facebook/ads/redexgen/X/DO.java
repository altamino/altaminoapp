package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Environment;
import android.os.SystemClock;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class DO extends C0454Bw {
    private static byte[] A00;
    private static final String A01;

    private static String A04(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 39);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A08() {
        A00 = new byte[]{104, 90, 86, 107, -120, 106, -31, -14, 3, 4, -10, -79, -42, -1, 7, -79, -25, -14, 3, -6, -14, -13, -3, -10, 113, -98, -98, -101, -98, 76, -114, -95, -107, -104, -112, -107, -102, -109, 76, -110, -107, -104, -111, 76, 123, -114, -106, -111, -113, -96, -108, -99, -80, -84, -73, -85, -100, -106};
    }

    static {
        A08();
        A01 = DO.class.getSimpleName();
    }

    public DO(Context context, C0430Ay c0430Ay) {
        super(context, c0430Ay);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"Nullable Dereference"})
    public AbstractC0528Es A01(HashMap<String, DN> map) {
        return new F3(SystemClock.elapsedRealtime(), A02(), map, F9.A0C);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    @SuppressLint({"CatchGeneralException", "BadMethodUse-android.util.Log.e"})
    public static File A02(String str) {
        File file = null;
        try {
            String strSubstring = str.substring(0, str.lastIndexOf(File.separator));
            String filePath = File.separator;
            file = new File(strSubstring, str.substring(str.lastIndexOf(filePath) + 1));
            return file;
        } catch (Exception e) {
            String str2 = A01;
            String fileName = A04(24, 26, 5);
            Log.e(str2, fileName, e);
            return file;
        }
    }

    private static String A05(String str) {
        char c;
        String string = null;
        char c2 = 65535;
        switch (str.hashCode()) {
            case 902502675:
                c = 6;
                break;
            default:
                c = 2;
                break;
        }
        while (true) {
            switch (c) {
                case 2:
                    switch (c2) {
                        case 0:
                            c = 5;
                            break;
                        default:
                            c = 3;
                            break;
                    }
                case 3:
                    string = A04(24, 0, 104);
                    c = 4;
                    break;
                case 4:
                    return string;
                case 5:
                    string = Environment.getExternalStorageDirectory().toString();
                    c = 4;
                    break;
                case 6:
                    str = str;
                    if (!str.equals(A04(50, 8, 49))) {
                        c = 2;
                        break;
                    } else {
                        c = 7;
                        break;
                    }
                case 7:
                    c2 = 0;
                    c = 2;
                    break;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"BadMethodUse-android.util.Log.e"})
    public static String A06(String str) throws IOException {
        String regex = A04(0, 6, 5);
        StringBuffer stringBuffer = new StringBuffer();
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(str);
        while (matcher.find()) {
            matcher.appendReplacement(stringBuffer, A05(matcher.group()));
        }
        matcher.appendTail(stringBuffer);
        String string = stringBuffer.toString();
        try {
            string = new File(string).getCanonicalPath();
            return string;
        } catch (IOException e) {
            Log.e(A01, A04(6, 18, 106), e);
            return string;
        }
    }

    public final InterfaceC0442Bk A0G(List<C0521El> list) {
        return new DM(this, list);
    }
}
