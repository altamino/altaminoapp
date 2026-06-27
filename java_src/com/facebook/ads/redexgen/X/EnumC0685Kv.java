package com.facebook.ads.redexgen.X;

import com.facebook.ads.NativeAdBase;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.Kv, reason: case insensitive filesystem */
/* loaded from: assets/assets/audience_network.dex */
public enum EnumC0685Kv {
    A05(0, NativeAdBase.MediaCacheFlag.NONE),
    A04(1, NativeAdBase.MediaCacheFlag.ALL);

    private static byte[] A02;
    private final long A00;
    private final NativeAdBase.MediaCacheFlag A01;

    private static String A01(int i, int i2, int i3) {
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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 22);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A02() {
        A02 = new byte[]{66, 67, 66, 73, 81, 92, 92};
    }

    static {
        A02();
    }

    EnumC0685Kv(long j, NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        this.A00 = j;
        this.A01 = mediaCacheFlag;
    }

    public static EnumC0685Kv A00(NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        EnumC0685Kv enumC0685Kv = null;
        EnumC0685Kv[] enumC0685KvArrValues = values();
        int length = enumC0685KvArrValues.length;
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
                    mediaCacheFlag = mediaCacheFlag;
                    enumC0685KvArrValues = enumC0685KvArrValues;
                    enumC0685Kv = enumC0685KvArrValues[i];
                    if (enumC0685Kv.A01 != mediaCacheFlag) {
                        c = 5;
                        break;
                    } else {
                        c = 4;
                        break;
                    }
                case 4:
                    return enumC0685Kv;
                case 5:
                    i++;
                    c = 2;
                    break;
                case 6:
                    enumC0685Kv = null;
                    c = 4;
                    break;
            }
        }
    }
}
