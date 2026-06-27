package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.media.AudioManager;
import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* loaded from: assets/assets/audience_network.dex */
public final class OS {
    private static byte[] A00;

    static {
        A02();
    }

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 60);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A00 = new byte[]{20, 117, 111, 104, 106, 111, 104, 99, 7, 19, 2, 15, 9, 89, 77, 76, 87, 72, 84, 89, 65};
    }

    private OS() {
    }

    public static float A00(Context context) {
        int streamVolume = 0;
        int streamMaxVolume = 0;
        float f = 0.0f;
        AudioManager audioManager = (AudioManager) context.getSystemService(A01(8, 5, 90));
        int maxVolume = audioManager != null ? 2 : 5;
        while (true) {
            switch (maxVolume) {
                case 2:
                    audioManager = audioManager;
                    streamVolume = audioManager.getStreamVolume(3);
                    streamMaxVolume = audioManager.getStreamMaxVolume(3);
                    if (streamMaxVolume <= 0) {
                        maxVolume = 5;
                        break;
                    } else {
                        maxVolume = 3;
                        break;
                    }
                case 3:
                    f = (streamVolume * 1.0f) / streamMaxVolume;
                    maxVolume = 4;
                    break;
                case 4:
                    return f;
                case 5:
                    f = 0.0f;
                    maxVolume = 4;
                    break;
            }
        }
    }

    public static void A03(Map<String, String> map, boolean z, boolean z2) {
        String strA01 = null;
        String strA012 = null;
        String strA013 = null;
        String strA014 = A01(13, 8, 4);
        char c = z ? (char) 2 : (char) 7;
        while (true) {
            switch (c) {
                case 2:
                    strA01 = A01(1, 1, 120);
                    c = 3;
                    break;
                case 3:
                    map = map;
                    strA014 = strA014;
                    strA01 = strA01;
                    map.put(strA014, strA01);
                    strA012 = A01(2, 6, 58);
                    if (!z2) {
                        c = 6;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    strA013 = A01(1, 1, 120);
                    c = 5;
                    break;
                case 5:
                    map.put(strA012, strA013);
                    return;
                case 6:
                    strA013 = A01(0, 1, 24);
                    c = 5;
                    break;
                case 7:
                    strA01 = A01(0, 1, 24);
                    c = 3;
                    break;
            }
        }
    }
}
