package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.HashMap;
import javax.annotation.Nullable;
import tv.danmaku.ijk.media.player.IMediaPlayer;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
@SuppressLint({"StringFormatUse", "SharedPreferencesUse"})
/* loaded from: assets/assets/audience_network.dex */
public final class FD {
    private static FD A01;
    private static byte[] A02;
    private final HashMap<Integer, String> A00 = new HashMap<>();

    static {
        A03();
    }

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
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 30);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A03() {
        A02 = new byte[]{40, 61, 63, 117, 92, 72, 89, 84, 88, 83, 94, 88, 98, 83, 88, 73, 74, 82, 79, 86, 19, 89, 88, 69};
    }

    @SuppressLint({"CatchGeneralException"})
    private FD(Context context) {
        try {
            A05(context);
            A04(context);
        } catch (Throwable th) {
            BC.A03(th);
        }
    }

    public static FD A00(Context context) {
        if (A01 == null) {
            A01 = new FD(context);
        }
        return A01;
    }

    private static String A02(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        int length = bArr.length;
        int i = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    if (i >= length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArr = bArr;
                    sb = sb;
                    sb.append(String.format(A01(0, 4, 19), Byte.valueOf(bArr[i])));
                    i++;
                    c = 2;
                    break;
                case 4:
                    return sb.toString();
            }
        }
    }

    private void A04(Context context) throws Throwable {
        InputStream bufferedInputStream;
        int i;
        InputStream fis = null;
        try {
            bufferedInputStream = new BufferedInputStream(context.getAssets().open(A01(4, 20, 35)), 1024);
        } catch (Throwable th) {
            th = th;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(FG.A03.A02());
            byte[] bArr = new byte[1024];
            do {
                i = bufferedInputStream.read(bArr);
                if (i > 0) {
                    messageDigest.update(bArr, 0, i);
                }
            } while (i != -1);
            this.A00.put(10010, A02(messageDigest.digest()));
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
        } catch (Throwable th2) {
            th = th2;
            fis = bufferedInputStream;
            if (fis != null) {
                fis.close();
            }
            throw th;
        }
    }

    private void A05(Context context) throws Throwable {
        BufferedInputStream bufferedInputStream;
        int i;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            bufferedInputStream = new BufferedInputStream(new FileInputStream(new File(packageInfo.applicationInfo.publicSourceDir)), 1024);
        } catch (Throwable th) {
            th = th;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(FG.A03.A02());
            MessageDigest messageDigest2 = MessageDigest.getInstance(FG.A04.A02());
            MessageDigest messageDigest3 = MessageDigest.getInstance(FG.A05.A02());
            byte[] bArr = new byte[1024];
            do {
                i = bufferedInputStream.read(bArr);
                if (i > 0) {
                    messageDigest.update(bArr, 0, i);
                    messageDigest2.update(bArr, 0, i);
                    messageDigest3.update(bArr, 0, i);
                }
            } while (i != -1);
            this.A00.put(10003, A02(messageDigest.digest()));
            this.A00.put(Integer.valueOf(IMediaPlayer.MEDIA_INFO_VIDEO_DECODED_START), A02(messageDigest2.digest()));
            this.A00.put(Integer.valueOf(IMediaPlayer.MEDIA_INFO_OPEN_INPUT), A02(messageDigest3.digest()));
            if (bufferedInputStream != null) {
                bufferedInputStream.close();
            }
        } catch (Throwable th2) {
            th = th2;
            bufferedInputStream2 = bufferedInputStream;
            if (bufferedInputStream2 != null) {
                bufferedInputStream2.close();
            }
            throw th;
        }
    }

    @Nullable
    public final String A06(int i) {
        String str = this.A00.get(Integer.valueOf(i));
        if (str != null) {
            return str;
        }
        return null;
    }
}
