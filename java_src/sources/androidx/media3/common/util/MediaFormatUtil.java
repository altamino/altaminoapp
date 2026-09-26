package androidx.media3.common.util;

import android.media.MediaFormat;
import androidx.annotation.Nullable;
import androidx.media3.common.ColorInfo;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class MediaFormatUtil {
    public static final String KEY_MAX_BIT_RATE = "max-bitrate";
    public static final String KEY_PCM_ENCODING_EXTENDED = "exo-pcm-encoding-int";
    public static final String KEY_PIXEL_WIDTH_HEIGHT_RATIO_FLOAT = "exo-pixel-width-height-ratio-float";
    private static final int MAX_POWER_OF_TWO_INT = 1073741824;

    @Nullable
    public static ColorInfo b(MediaFormat mediaFormat) {
        return c(mediaFormat, false);
    }

    private static boolean e(int i10) {
        return i10 == 2 || i10 == 1 || i10 == -1;
    }

    private static boolean f(int i10) {
        return i10 == 2 || i10 == 1 || i10 == 6 || i10 == -1;
    }

    private static boolean g(int i10) {
        return i10 == 1 || i10 == 3 || i10 == 6 || i10 == 7 || i10 == -1;
    }

    public static void k(MediaFormat mediaFormat, String str, int i10) {
        if (i10 != -1) {
            mediaFormat.setInteger(str, i10);
        }
    }

    public static void l(MediaFormat mediaFormat, List<byte[]> list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            mediaFormat.setByteBuffer("csd-" + i10, ByteBuffer.wrap(list.get(i10)));
        }
    }

    @Nullable
    private static ColorInfo c(MediaFormat mediaFormat, boolean z6) {
        if (Util.SDK_INT < 24) {
            return null;
        }
        int iD = d(mediaFormat, "color-standard", -1);
        int iD2 = d(mediaFormat, "color-range", -1);
        int iD3 = d(mediaFormat, "color-transfer", -1);
        ByteBuffer byteBuffer = mediaFormat.getByteBuffer("hdr-static-info");
        byte[] bArrA = byteBuffer != null ? a(byteBuffer) : null;
        if (!z6) {
            if (!f(iD)) {
                iD = -1;
            }
            if (!e(iD2)) {
                iD2 = -1;
            }
            if (!g(iD3)) {
                iD3 = -1;
            }
        }
        if (iD == -1 && iD2 == -1 && iD3 == -1 && bArrA == null) {
            return null;
        }
        return new ColorInfo.Builder().c(iD).b(iD2).d(iD3).e(bArrA).a();
    }

    public static void h(MediaFormat mediaFormat, String str, @Nullable byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, ByteBuffer.wrap(bArr));
        }
    }

    public static void i(MediaFormat mediaFormat, @Nullable ColorInfo colorInfo) {
        if (colorInfo != null) {
            k(mediaFormat, "color-transfer", colorInfo.colorTransfer);
            k(mediaFormat, "color-standard", colorInfo.colorSpace);
            k(mediaFormat, "color-range", colorInfo.colorRange);
            h(mediaFormat, "hdr-static-info", colorInfo.hdrStaticInfo);
        }
    }

    public static void j(MediaFormat mediaFormat, String str, float f) {
        if (f != -1.0f) {
            mediaFormat.setFloat(str, f);
        }
    }

    private MediaFormatUtil() {
    }

    public static byte[] a(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[byteBuffer.remaining()];
        byteBuffer.get(bArr);
        return bArr;
    }

    public static int d(MediaFormat mediaFormat, String str, int i10) {
        if (mediaFormat.containsKey(str)) {
            return mediaFormat.getInteger(str);
        }
        return i10;
    }
}
