package androidx.media3.extractor.avi;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.google.common.collect.a0;

/* JADX INFO: loaded from: classes10.dex */
final class StreamFormatChunk implements AviChunk {
    private static final String TAG = "StreamFormatChunk";
    public final Format format;

    @Nullable
    private static String a(int i10) {
        switch (i10) {
            case 808802372:
            case 877677894:
            case 1145656883:
            case 1145656920:
            case 1482049860:
            case 1684633208:
            case 2021026148:
                return "video/mp4v-es";
            case 826496577:
            case 828601953:
            case 875967048:
                return "video/avc";
            case 842289229:
                return "video/mp42";
            case 859066445:
                return "video/mp43";
            case 1196444237:
            case 1735420525:
                return "video/mjpeg";
            default:
                return null;
        }
    }

    @Nullable
    private static String b(int i10) {
        if (i10 == 1) {
            return "audio/raw";
        }
        if (i10 == 85) {
            return "audio/mpeg";
        }
        if (i10 == 255) {
            return "audio/mp4a-latm";
        }
        if (i10 == 8192) {
            return "audio/ac3";
        }
        if (i10 != 8193) {
            return null;
        }
        return "audio/vnd.dts";
    }

    @Nullable
    private static AviChunk c(ParsableByteArray parsableByteArray) {
        parsableByteArray.V(4);
        int iU = parsableByteArray.u();
        int iU2 = parsableByteArray.u();
        parsableByteArray.V(4);
        int iU3 = parsableByteArray.u();
        String strA = a(iU3);
        if (strA != null) {
            Format.Builder builder = new Format.Builder();
            builder.n0(iU).S(iU2).g0(strA);
            return new StreamFormatChunk(builder.G());
        }
        Log.i(TAG, "Ignoring track with unsupported compression " + iU3);
        return null;
    }

    @Nullable
    public static AviChunk d(int i10, ParsableByteArray parsableByteArray) {
        if (i10 == 2) {
            return c(parsableByteArray);
        }
        if (i10 == 1) {
            return e(parsableByteArray);
        }
        Log.i(TAG, "Ignoring strf box for unsupported track type: " + Util.p0(i10));
        return null;
    }

    @Override // androidx.media3.extractor.avi.AviChunk
    public int getType() {
        return 1718776947;
    }

    public StreamFormatChunk(Format format) {
        this.format = format;
    }

    @Nullable
    private static AviChunk e(ParsableByteArray parsableByteArray) {
        int iZ = parsableByteArray.z();
        String strB = b(iZ);
        if (strB == null) {
            Log.i(TAG, "Ignoring track with unsupported format tag " + iZ);
            return null;
        }
        int iZ2 = parsableByteArray.z();
        int iU = parsableByteArray.u();
        parsableByteArray.V(6);
        int iF0 = Util.f0(parsableByteArray.N());
        int iZ3 = parsableByteArray.z();
        byte[] bArr = new byte[iZ3];
        parsableByteArray.l(bArr, 0, iZ3);
        Format.Builder builder = new Format.Builder();
        builder.g0(strB).J(iZ2).h0(iU);
        if ("audio/raw".equals(strB) && iF0 != 0) {
            builder.a0(iF0);
        }
        if ("audio/mp4a-latm".equals(strB) && iZ3 > 0) {
            builder.V(a0.y(bArr));
        }
        return new StreamFormatChunk(builder.G());
    }
}
