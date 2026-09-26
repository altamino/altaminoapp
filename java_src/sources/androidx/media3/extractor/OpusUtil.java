package androidx.media3.extractor;

import androidx.media3.common.util.UnstableApi;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import okio.Utf8;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public class OpusUtil {
    private static final int DEFAULT_SEEK_PRE_ROLL_SAMPLES = 3840;
    private static final int FULL_CODEC_INITIALIZATION_DATA_BUFFER_COUNT = 3;
    public static final int MAX_BYTES_PER_SECOND = 63750;
    public static final int SAMPLE_RATE = 48000;

    private static long d(byte b7, byte b10) {
        int i10;
        int i11;
        int i12 = b7 & 255;
        int i13 = b7 & 3;
        if (i13 != 0) {
            i10 = 2;
            if (i13 != 1 && i13 != 2) {
                i10 = b10 & Utf8.REPLACEMENT_BYTE;
            }
        } else {
            i10 = 1;
        }
        int i14 = i12 >> 3;
        int i15 = i14 & 3;
        if (i14 >= 16) {
            i11 = 2500 << i15;
        } else if (i14 >= 12) {
            i11 = 10000 << (i14 & 1);
        } else {
            i11 = i15 == 3 ? 60000 : 10000 << i15;
        }
        return ((long) i10) * ((long) i11);
    }

    public static long e(byte[] bArr) {
        return d(bArr[0], bArr.length > 1 ? bArr[1] : (byte) 0);
    }

    public static int h(ByteBuffer byteBuffer) {
        if ((byteBuffer.get(5) & 2) == 0) {
            return 0;
        }
        byte b7 = byteBuffer.get(26);
        int i10 = 28;
        int i11 = 28;
        for (int i12 = 0; i12 < b7; i12++) {
            i11 += byteBuffer.get(i12 + 27);
        }
        byte b10 = byteBuffer.get(i11 + 26);
        for (int i13 = 0; i13 < b10; i13++) {
            i10 += byteBuffer.get(i11 + 27 + i13);
        }
        return i11 + i10;
    }

    public static int i(ByteBuffer byteBuffer) {
        return (int) ((d(byteBuffer.get(0), byteBuffer.limit() > 1 ? byteBuffer.get(1) : (byte) 0) * 48000) / 1000000);
    }

    private static byte[] b(long j6) {
        return ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(j6).array();
    }

    public static int c(byte[] bArr) {
        return bArr[9] & 255;
    }

    private static int f(byte[] bArr) {
        return (bArr[10] & 255) | ((bArr[11] & 255) << 8);
    }

    private OpusUtil() {
    }

    public static List<byte[]> a(byte[] bArr) {
        long j6 = j(f(bArr));
        long j10 = j(3840L);
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArr);
        arrayList.add(b(j6));
        arrayList.add(b(j10));
        return arrayList;
    }

    public static int g(ByteBuffer byteBuffer) {
        byte b7;
        int iH = h(byteBuffer);
        int i10 = byteBuffer.get(iH + 26) + com.google.common.base.c.ESC + iH;
        byte b10 = byteBuffer.get(i10);
        if (byteBuffer.limit() - i10 > 1) {
            b7 = byteBuffer.get(i10 + 1);
        } else {
            b7 = 0;
        }
        return (int) ((d(b10, b7) * 48000) / 1000000);
    }

    private static long j(long j6) {
        return (j6 * 1000000000) / 48000;
    }
}
