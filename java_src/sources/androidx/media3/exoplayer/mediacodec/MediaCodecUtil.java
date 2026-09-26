package androidx.media3.exoplayer.mediacodec;

import android.annotation.SuppressLint;
import android.media.MediaCodecList;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.CheckResult;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.google.common.collect.a0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
@SuppressLint({"InlinedApi"})
@UnstableApi
public final class MediaCodecUtil {
    private static final String CODEC_ID_AV01 = "av01";
    private static final String CODEC_ID_AVC1 = "avc1";
    private static final String CODEC_ID_AVC2 = "avc2";
    private static final String CODEC_ID_HEV1 = "hev1";
    private static final String CODEC_ID_HVC1 = "hvc1";
    private static final String CODEC_ID_MP4A = "mp4a";
    private static final String CODEC_ID_VP09 = "vp09";
    private static final String TAG = "MediaCodecUtil";
    private static final Pattern PROFILE_PATTERN = Pattern.compile("^\\D?(\\d+)$");

    @GuardedBy
    private static final HashMap<CodecKey, List<MediaCodecInfo>> decoderInfosCache = new HashMap<>();
    private static int maxH264DecodableFrameSize = -1;

    private static final class CodecKey {
        public final String mimeType;
        public final boolean secure;
        public final boolean tunneling;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != CodecKey.class) {
                return false;
            }
            CodecKey codecKey = (CodecKey) obj;
            return TextUtils.equals(this.mimeType, codecKey.mimeType) && this.secure == codecKey.secure && this.tunneling == codecKey.tunneling;
        }

        public int hashCode() {
            return ((((this.mimeType.hashCode() + 31) * 31) + (this.secure ? 1231 : 1237)) * 31) + (this.tunneling ? 1231 : 1237);
        }

        public CodecKey(String str, boolean z6, boolean z10) {
            this.mimeType = str;
            this.secure = z6;
            this.tunneling = z10;
        }
    }

    public static class DecoderQueryException extends Exception {
        private DecoderQueryException(Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    private interface MediaCodecListCompat {
        boolean a(String str, String str2, android.media.MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean b(String str, String str2, android.media.MediaCodecInfo.CodecCapabilities codecCapabilities);

        int getCodecCount();

        android.media.MediaCodecInfo getCodecInfoAt(int i10);

        boolean secureDecodersExplicit();
    }

    @RequiresApi
    private static final class MediaCodecListCompatV21 implements MediaCodecListCompat {
        private final int codecKind;

        @Nullable
        private android.media.MediaCodecInfo[] mediaCodecInfos;

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean secureDecodersExplicit() {
            return true;
        }

        private void c() {
            if (this.mediaCodecInfos == null) {
                this.mediaCodecInfos = new MediaCodecList(this.codecKind).getCodecInfos();
            }
        }

        public MediaCodecListCompatV21(boolean z6, boolean z10) {
            int i10;
            if (!z6 && !z10) {
                i10 = 0;
            } else {
                i10 = 1;
            }
            this.codecKind = i10;
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean a(String str, String str2, android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean b(String str, String str2, android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public int getCodecCount() {
            c();
            return this.mediaCodecInfos.length;
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public android.media.MediaCodecInfo getCodecInfoAt(int i10) {
            c();
            return this.mediaCodecInfos[i10];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface ScoreProvider<T> {
        int a(T t5);
    }

    @Nullable
    private static Pair<Integer, Integer> A(String str, String[] strArr) {
        if (strArr.length < 3) {
            Log.i(TAG, "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
        try {
            int i10 = Integer.parseInt(strArr[1]);
            int i11 = Integer.parseInt(strArr[2]);
            int iT = T(i10);
            if (iT == -1) {
                Log.i(TAG, "Unknown VP9 profile: " + i10);
                return null;
            }
            int iS = S(i11);
            if (iS != -1) {
                return new Pair<>(Integer.valueOf(iT), Integer.valueOf(iS));
            }
            Log.i(TAG, "Unknown VP9 level: " + i11);
            return null;
        } catch (NumberFormatException unused) {
            Log.i(TAG, "Ignoring malformed VP9 codec string: " + str);
            return null;
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Nullable
    private static Integer B(@Nullable String str) {
        if (str == null) {
            return null;
        }
        byte b7 = -1;
        switch (str.hashCode()) {
            case 70821:
                if (str.equals("H30")) {
                    b7 = 0;
                }
                break;
            case 70914:
                if (str.equals("H60")) {
                    b7 = 1;
                }
                break;
            case 70917:
                if (str.equals("H63")) {
                    b7 = 2;
                }
                break;
            case 71007:
                if (str.equals("H90")) {
                    b7 = 3;
                }
                break;
            case 71010:
                if (str.equals("H93")) {
                    b7 = 4;
                }
                break;
            case 74665:
                if (str.equals("L30")) {
                    b7 = 5;
                }
                break;
            case 74758:
                if (str.equals("L60")) {
                    b7 = 6;
                }
                break;
            case 74761:
                if (str.equals("L63")) {
                    b7 = 7;
                }
                break;
            case 74851:
                if (str.equals("L90")) {
                    b7 = 8;
                }
                break;
            case 74854:
                if (str.equals("L93")) {
                    b7 = 9;
                }
                break;
            case 2193639:
                if (str.equals("H120")) {
                    b7 = 10;
                }
                break;
            case 2193642:
                if (str.equals("H123")) {
                    b7 = com.google.common.base.c.VT;
                }
                break;
            case 2193732:
                if (str.equals("H150")) {
                    b7 = com.google.common.base.c.FF;
                }
                break;
            case 2193735:
                if (str.equals("H153")) {
                    b7 = com.google.common.base.c.CR;
                }
                break;
            case 2193738:
                if (str.equals("H156")) {
                    b7 = com.google.common.base.c.SO;
                }
                break;
            case 2193825:
                if (str.equals("H180")) {
                    b7 = com.google.common.base.c.SI;
                }
                break;
            case 2193828:
                if (str.equals("H183")) {
                    b7 = 16;
                }
                break;
            case 2193831:
                if (str.equals("H186")) {
                    b7 = 17;
                }
                break;
            case 2312803:
                if (str.equals("L120")) {
                    b7 = com.google.common.base.c.DC2;
                }
                break;
            case 2312806:
                if (str.equals("L123")) {
                    b7 = 19;
                }
                break;
            case 2312896:
                if (str.equals("L150")) {
                    b7 = com.google.common.base.c.DC4;
                }
                break;
            case 2312899:
                if (str.equals("L153")) {
                    b7 = com.google.common.base.c.NAK;
                }
                break;
            case 2312902:
                if (str.equals("L156")) {
                    b7 = com.google.common.base.c.SYN;
                }
                break;
            case 2312989:
                if (str.equals("L180")) {
                    b7 = com.google.common.base.c.ETB;
                }
                break;
            case 2312992:
                if (str.equals("L183")) {
                    b7 = com.google.common.base.c.CAN;
                }
                break;
            case 2312995:
                if (str.equals("L186")) {
                    b7 = com.google.common.base.c.EM;
                }
                break;
        }
        switch (b7) {
            case 0:
                return 2;
            case 1:
                return 8;
            case 2:
                return 32;
            case 3:
                return 128;
            case 4:
                return 512;
            case 5:
                return 1;
            case 6:
                return 4;
            case 7:
                return 16;
            case 8:
                return 64;
            case 9:
                return 256;
            case 10:
                return 2048;
            case 11:
                return 8192;
            case 12:
                return 32768;
            case 13:
                return 131072;
            case 14:
                return 524288;
            case 15:
                return 2097152;
            case 16:
                return 8388608;
            case 17:
                return 33554432;
            case 18:
                return 1024;
            case 19:
                return 4096;
            case 20:
                return 16384;
            case 21:
                return 65536;
            case 22:
                return 262144;
            case 23:
                return 1048576;
            case 24:
                return 4194304;
            case 25:
                return 16777216;
            default:
                return null;
        }
    }

    private static int Q(int i10) {
        int i11 = 17;
        if (i10 != 17) {
            i11 = 20;
            if (i10 != 20) {
                i11 = 23;
                if (i10 != 23) {
                    i11 = 29;
                    if (i10 != 29) {
                        i11 = 39;
                        if (i10 != 39) {
                            i11 = 42;
                            if (i10 != 42) {
                                switch (i10) {
                                    case 1:
                                        return 1;
                                    case 2:
                                        return 2;
                                    case 3:
                                        return 3;
                                    case 4:
                                        return 4;
                                    case 5:
                                        return 5;
                                    case 6:
                                        return 6;
                                    default:
                                        return -1;
                                }
                            }
                        }
                    }
                }
            }
        }
        return i11;
    }

    private static int S(int i10) {
        if (i10 == 10) {
            return 1;
        }
        if (i10 == 11) {
            return 2;
        }
        if (i10 == 20) {
            return 4;
        }
        if (i10 == 21) {
            return 8;
        }
        if (i10 == 30) {
            return 16;
        }
        if (i10 == 31) {
            return 32;
        }
        if (i10 == 40) {
            return 64;
        }
        if (i10 == 41) {
            return 128;
        }
        if (i10 == 50) {
            return 256;
        }
        if (i10 == 51) {
            return 512;
        }
        switch (i10) {
            case 60:
                return 2048;
            case 61:
                return 4096;
            case 62:
                return 8192;
            default:
                return -1;
        }
    }

    private static int T(int i10) {
        if (i10 == 0) {
            return 1;
        }
        if (i10 == 1) {
            return 2;
        }
        if (i10 != 2) {
            return i10 != 3 ? -1 : 8;
        }
        return 4;
    }

    private static int f(int i10) {
        switch (i10) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return 4096;
            case 13:
                return 8192;
            case 14:
                return 16384;
            case 15:
                return 32768;
            case 16:
                return 65536;
            case 17:
                return 131072;
            case 18:
                return 262144;
            case 19:
                return 524288;
            case 20:
                return 1048576;
            case 21:
                return 2097152;
            case 22:
                return 4194304;
            case 23:
                return 8388608;
            default:
                return -1;
        }
    }

    private static int g(int i10) {
        switch (i10) {
            case 10:
                return 1;
            case 11:
                return 4;
            case 12:
                return 8;
            case 13:
                return 16;
            default:
                switch (i10) {
                    case 20:
                        return 32;
                    case 21:
                        return 64;
                    case 22:
                        return 128;
                    default:
                        switch (i10) {
                            case 30:
                                return 256;
                            case 31:
                                return 512;
                            case 32:
                                return 1024;
                            default:
                                switch (i10) {
                                    case 40:
                                        return 2048;
                                    case 41:
                                        return 4096;
                                    case 42:
                                        return 8192;
                                    default:
                                        switch (i10) {
                                            case 50:
                                                return 16384;
                                            case 51:
                                                return 32768;
                                            case 52:
                                                return 65536;
                                            default:
                                                return -1;
                                        }
                                }
                        }
                }
        }
    }

    private static int h(int i10) {
        if (i10 == 1 || i10 == 2) {
            return 25344;
        }
        switch (i10) {
            case 8:
            case 16:
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
            case 4096:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
            case 65536:
                return 9437184;
            case 131072:
            case 262144:
            case 524288:
                return 35651584;
            default:
                return -1;
        }
    }

    private static int i(int i10) {
        if (i10 == 66) {
            return 1;
        }
        if (i10 == 77) {
            return 2;
        }
        if (i10 == 88) {
            return 4;
        }
        if (i10 == 100) {
            return 8;
        }
        if (i10 == 110) {
            return 16;
        }
        if (i10 != 122) {
            return i10 != 244 ? -1 : 64;
        }
        return 32;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Nullable
    private static Integer j(@Nullable String str) {
        if (str == null) {
            return null;
        }
        byte b7 = -1;
        switch (str.hashCode()) {
            case 1537:
                if (str.equals("01")) {
                    b7 = 0;
                }
                break;
            case 1538:
                if (str.equals("02")) {
                    b7 = 1;
                }
                break;
            case 1539:
                if (str.equals("03")) {
                    b7 = 2;
                }
                break;
            case 1540:
                if (str.equals("04")) {
                    b7 = 3;
                }
                break;
            case 1541:
                if (str.equals("05")) {
                    b7 = 4;
                }
                break;
            case 1542:
                if (str.equals("06")) {
                    b7 = 5;
                }
                break;
            case 1543:
                if (str.equals("07")) {
                    b7 = 6;
                }
                break;
            case 1544:
                if (str.equals("08")) {
                    b7 = 7;
                }
                break;
            case 1545:
                if (str.equals("09")) {
                    b7 = 8;
                }
                break;
            case 1567:
                if (str.equals("10")) {
                    b7 = 9;
                }
                break;
            case 1568:
                if (str.equals("11")) {
                    b7 = 10;
                }
                break;
            case 1569:
                if (str.equals("12")) {
                    b7 = com.google.common.base.c.VT;
                }
                break;
            case 1570:
                if (str.equals("13")) {
                    b7 = com.google.common.base.c.FF;
                }
                break;
        }
        switch (b7) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return 4096;
            default:
                return null;
        }
    }

    @Nullable
    private static Integer k(@Nullable String str) {
        if (str == null) {
            return null;
        }
        switch (str) {
            case "00":
                return 1;
            case "01":
                return 2;
            case "02":
                return 4;
            case "03":
                return 8;
            case "04":
                return 16;
            case "05":
                return 32;
            case "06":
                return 64;
            case "07":
                return 128;
            case "08":
                return 256;
            case "09":
                return 512;
            default:
                return null;
        }
    }

    @Nullable
    private static Pair<Integer, Integer> l(String str, String[] strArr) {
        int iQ;
        if (strArr.length != 3) {
            Log.i(TAG, "Ignoring malformed MP4A codec string: " + str);
            return null;
        }
        try {
            if ("audio/mp4a-latm".equals(MimeTypes.h(Integer.parseInt(strArr[1], 16))) && (iQ = Q(Integer.parseInt(strArr[2]))) != -1) {
                return new Pair<>(Integer.valueOf(iQ), 0);
            }
        } catch (NumberFormatException unused) {
            Log.i(TAG, "Ignoring malformed MP4A codec string: " + str);
        }
        return null;
    }

    @Nullable
    private static Pair<Integer, Integer> o(String str, String[] strArr, @Nullable ColorInfo colorInfo) {
        int i10;
        if (strArr.length < 4) {
            Log.i(TAG, "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
        int i11 = 1;
        try {
            int i12 = Integer.parseInt(strArr[1]);
            int i13 = Integer.parseInt(strArr[2].substring(0, 2));
            int i14 = Integer.parseInt(strArr[3]);
            if (i12 != 0) {
                Log.i(TAG, "Unknown AV1 profile: " + i12);
                return null;
            }
            if (i14 != 8 && i14 != 10) {
                Log.i(TAG, "Unknown AV1 bit depth: " + i14);
                return null;
            }
            if (i14 != 8) {
                i11 = (colorInfo == null || !(colorInfo.hdrStaticInfo != null || (i10 = colorInfo.colorTransfer) == 7 || i10 == 6)) ? 2 : 4096;
            }
            int iF = f(i13);
            if (iF != -1) {
                return new Pair<>(Integer.valueOf(i11), Integer.valueOf(iF));
            }
            Log.i(TAG, "Unknown AV1 level: " + i13);
            return null;
        } catch (NumberFormatException unused) {
            Log.i(TAG, "Ignoring malformed AV1 codec string: " + str);
            return null;
        }
    }

    @Nullable
    private static Pair<Integer, Integer> p(String str, String[] strArr) {
        int i10;
        int i11;
        if (strArr.length < 2) {
            Log.i(TAG, "Ignoring malformed AVC codec string: " + str);
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i11 = Integer.parseInt(strArr[1].substring(0, 2), 16);
                i10 = Integer.parseInt(strArr[1].substring(4), 16);
            } else {
                if (strArr.length < 3) {
                    Log.i(TAG, "Ignoring malformed AVC codec string: " + str);
                    return null;
                }
                int i12 = Integer.parseInt(strArr[1]);
                i10 = Integer.parseInt(strArr[2]);
                i11 = i12;
            }
            int i13 = i(i11);
            if (i13 == -1) {
                Log.i(TAG, "Unknown AVC profile: " + i11);
                return null;
            }
            int iG = g(i10);
            if (iG != -1) {
                return new Pair<>(Integer.valueOf(i13), Integer.valueOf(iG));
            }
            Log.i(TAG, "Unknown AVC level: " + i10);
            return null;
        } catch (NumberFormatException unused) {
            Log.i(TAG, "Ignoring malformed AVC codec string: " + str);
            return null;
        }
    }

    @Nullable
    private static Pair<Integer, Integer> y(String str, String[] strArr) {
        if (strArr.length < 3) {
            Log.i(TAG, "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        Matcher matcher = PROFILE_PATTERN.matcher(strArr[1]);
        if (!matcher.matches()) {
            Log.i(TAG, "Ignoring malformed Dolby Vision codec string: " + str);
            return null;
        }
        String strGroup = matcher.group(1);
        Integer numK = k(strGroup);
        if (numK == null) {
            Log.i(TAG, "Unknown Dolby Vision profile string: " + strGroup);
            return null;
        }
        String str2 = strArr[2];
        Integer numJ = j(str2);
        if (numJ != null) {
            return new Pair<>(numK, numJ);
        }
        Log.i(TAG, "Unknown Dolby Vision level string: " + str2);
        return null;
    }

    @Nullable
    private static Pair<Integer, Integer> z(String str, String[] strArr, @Nullable ColorInfo colorInfo) {
        if (strArr.length < 4) {
            Log.i(TAG, "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        int i10 = 1;
        Matcher matcher = PROFILE_PATTERN.matcher(strArr[1]);
        if (!matcher.matches()) {
            Log.i(TAG, "Ignoring malformed HEVC codec string: " + str);
            return null;
        }
        String strGroup = matcher.group(1);
        if (!"1".equals(strGroup)) {
            if (!ExifInterface.GPS_MEASUREMENT_2D.equals(strGroup)) {
                Log.i(TAG, "Unknown HEVC profile string: " + strGroup);
                return null;
            }
            i10 = (colorInfo == null || colorInfo.colorTransfer != 6) ? 2 : 4096;
        }
        String str2 = strArr[3];
        Integer numB = B(str2);
        if (numB != null) {
            return new Pair<>(Integer.valueOf(i10), numB);
        }
        Log.i(TAG, "Unknown HEVC level string: " + str2);
        return null;
    }

    private static final class MediaCodecListCompatV16 implements MediaCodecListCompat {
        private MediaCodecListCompatV16() {
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean a(String str, String str2, android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean secureDecodersExplicit() {
            return false;
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean b(String str, String str2, android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
            if ("secure-playback".equals(str) && "video/avc".equals(str2)) {
                return true;
            }
            return false;
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public int getCodecCount() {
            return MediaCodecList.getCodecCount();
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public android.media.MediaCodecInfo getCodecInfoAt(int i10) {
            return MediaCodecList.getCodecInfoAt(i10);
        }
    }

    private static boolean C(android.media.MediaCodecInfo mediaCodecInfo) {
        return Util.SDK_INT >= 29 && D(mediaCodecInfo);
    }

    private static boolean F(android.media.MediaCodecInfo mediaCodecInfo, String str) {
        return Util.SDK_INT >= 29 ? G(mediaCodecInfo) : !H(mediaCodecInfo, str);
    }

    private static boolean H(android.media.MediaCodecInfo mediaCodecInfo, String str) {
        if (Util.SDK_INT >= 29) {
            return I(mediaCodecInfo);
        }
        if (MimeTypes.o(str)) {
            return true;
        }
        String strE = com.google.common.base.c.e(mediaCodecInfo.getName());
        if (strE.startsWith("arc.")) {
            return false;
        }
        if (strE.startsWith("omx.google.") || strE.startsWith("omx.ffmpeg.")) {
            return true;
        }
        if ((strE.startsWith("omx.sec.") && strE.contains(".sw.")) || strE.equals("omx.qcom.video.decoder.hevcswvdec") || strE.startsWith("c2.android.") || strE.startsWith("c2.google.")) {
            return true;
        }
        return (strE.startsWith("omx.") || strE.startsWith("c2.")) ? false : true;
    }

    private static boolean J(android.media.MediaCodecInfo mediaCodecInfo) {
        if (Util.SDK_INT >= 29) {
            return K(mediaCodecInfo);
        }
        String strE = com.google.common.base.c.e(mediaCodecInfo.getName());
        return (strE.startsWith("omx.google.") || strE.startsWith("c2.android.") || strE.startsWith("c2.google.")) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int L(MediaCodecInfo mediaCodecInfo) {
        String str = mediaCodecInfo.name;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (Util.SDK_INT >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int M(MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.name.startsWith("OMX.google") ? 1 : 0;
    }

    public static int P() throws DecoderQueryException {
        if (maxH264DecodableFrameSize == -1) {
            int iMax = 0;
            MediaCodecInfo mediaCodecInfoS = s("video/avc", false, false);
            if (mediaCodecInfoS != null) {
                android.media.MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrH = mediaCodecInfoS.h();
                int length = codecProfileLevelArrH.length;
                int iMax2 = 0;
                while (iMax < length) {
                    iMax2 = Math.max(h(codecProfileLevelArrH[iMax].level), iMax2);
                    iMax++;
                }
                iMax = Math.max(iMax2, Util.SDK_INT >= 21 ? 345600 : 172800);
            }
            maxH264DecodableFrameSize = iMax;
        }
        return maxH264DecodableFrameSize;
    }

    private static <T> void R(List<T> list, final ScoreProvider<T> scoreProvider) {
        Collections.sort(list, new Comparator() { // from class: androidx.media3.exoplayer.mediacodec.t
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return MediaCodecUtil.O(scoreProvider, obj, obj2);
            }
        });
    }

    private static void e(String str, List<MediaCodecInfo> list) {
        if ("audio/raw".equals(str)) {
            if (Util.SDK_INT < 26 && Util.DEVICE.equals("R9") && list.size() == 1 && list.get(0).name.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(MediaCodecInfo.F("OMX.google.raw.decoder", "audio/raw", "audio/raw", null, false, true, false, false, false));
            }
            R(list, new ScoreProvider() { // from class: androidx.media3.exoplayer.mediacodec.r
                @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.ScoreProvider
                public final int a(Object obj) {
                    return MediaCodecUtil.L((MediaCodecInfo) obj);
                }
            });
        }
        int i10 = Util.SDK_INT;
        if (i10 < 21 && list.size() > 1) {
            String str2 = list.get(0).name;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                R(list, new ScoreProvider() { // from class: androidx.media3.exoplayer.mediacodec.s
                    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.ScoreProvider
                    public final int a(Object obj) {
                        return MediaCodecUtil.M((MediaCodecInfo) obj);
                    }
                });
            }
        }
        if (i10 >= 32 || list.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(list.get(0).name)) {
            return;
        }
        list.add(list.remove(0));
    }

    @Nullable
    public static String m(Format format) {
        Pair<Integer, Integer> pairR;
        if ("audio/eac3-joc".equals(format.sampleMimeType)) {
            return "audio/eac3";
        }
        if (!"video/dolby-vision".equals(format.sampleMimeType) || (pairR = r(format)) == null) {
            return null;
        }
        int iIntValue = ((Integer) pairR.first).intValue();
        if (iIntValue == 16 || iIntValue == 256) {
            return "video/hevc";
        }
        if (iIntValue == 512) {
            return "video/avc";
        }
        return null;
    }

    @Nullable
    public static Pair<Integer, Integer> r(Format format) {
        String str = format.codecs;
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split("\\.");
        if ("video/dolby-vision".equals(format.sampleMimeType)) {
            return y(format.codecs, strArrSplit);
        }
        byte b7 = 0;
        String str2 = strArrSplit[0];
        str2.hashCode();
        switch (str2.hashCode()) {
            case 3004662:
                if (!str2.equals(CODEC_ID_AV01)) {
                    b7 = -1;
                }
                break;
            case 3006243:
                b7 = !str2.equals(CODEC_ID_AVC1) ? (byte) -1 : (byte) 1;
                break;
            case 3006244:
                b7 = !str2.equals(CODEC_ID_AVC2) ? (byte) -1 : (byte) 2;
                break;
            case 3199032:
                b7 = !str2.equals(CODEC_ID_HEV1) ? (byte) -1 : (byte) 3;
                break;
            case 3214780:
                b7 = !str2.equals(CODEC_ID_HVC1) ? (byte) -1 : (byte) 4;
                break;
            case 3356560:
                b7 = !str2.equals(CODEC_ID_MP4A) ? (byte) -1 : (byte) 5;
                break;
            case 3624515:
                b7 = !str2.equals(CODEC_ID_VP09) ? (byte) -1 : (byte) 6;
                break;
            default:
                b7 = -1;
                break;
        }
        switch (b7) {
            case 0:
                return o(format.codecs, strArrSplit, format.colorInfo);
            case 1:
            case 2:
                return p(format.codecs, strArrSplit);
            case 3:
            case 4:
                return z(format.codecs, strArrSplit, format.colorInfo);
            case 5:
                return l(format.codecs, strArrSplit);
            case 6:
                return A(format.codecs, strArrSplit);
            default:
                return null;
        }
    }

    public static synchronized List<MediaCodecInfo> t(String str, boolean z6, boolean z10) throws DecoderQueryException {
        try {
            CodecKey codecKey = new CodecKey(str, z6, z10);
            HashMap<CodecKey, List<MediaCodecInfo>> map = decoderInfosCache;
            List<MediaCodecInfo> list = map.get(codecKey);
            if (list != null) {
                return list;
            }
            int i10 = Util.SDK_INT;
            ArrayList<MediaCodecInfo> arrayListU = u(codecKey, i10 >= 21 ? new MediaCodecListCompatV21(z6, z10) : new MediaCodecListCompatV16());
            if (z6 && arrayListU.isEmpty() && 21 <= i10 && i10 <= 23) {
                arrayListU = u(codecKey, new MediaCodecListCompatV16());
                if (!arrayListU.isEmpty()) {
                    Log.i(TAG, "MediaCodecList API didn't list secure decoder for: " + str + ". Assuming: " + arrayListU.get(0).name);
                }
            }
            e(str, arrayListU);
            a0 a0VarT = a0.t(arrayListU);
            map.put(codecKey, a0VarT);
            return a0VarT;
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x0090  */
    /* JADX WARN: Code duplicated, block: B:58:0x0107 A[Catch: Exception -> 0x0130, TRY_ENTER, TryCatch #0 {Exception -> 0x0130, blocks: (B:3:0x000a, B:5:0x001d, B:61:0x0126, B:8:0x002f, B:11:0x003a, B:55:0x00ff, B:58:0x0107, B:60:0x010d, B:64:0x0132, B:65:0x0155), top: B:69:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0027  */
    /* JADX WARN: Code duplicated, block: B:83:0x0132 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    private static ArrayList<MediaCodecInfo> u(CodecKey codecKey, MediaCodecListCompat mediaCodecListCompat) throws DecoderQueryException {
        String strQ;
        String str;
        int i10;
        boolean z6;
        int i11;
        CodecKey codecKey2 = codecKey;
        try {
            ArrayList<MediaCodecInfo> arrayList = new ArrayList<>();
            String str2 = codecKey2.mimeType;
            int codecCount = mediaCodecListCompat.getCodecCount();
            boolean zSecureDecodersExplicit = mediaCodecListCompat.secureDecodersExplicit();
            int i12 = 0;
            while (i12 < codecCount) {
                android.media.MediaCodecInfo codecInfoAt = mediaCodecListCompat.getCodecInfoAt(i12);
                if (C(codecInfoAt)) {
                    i10 = i12;
                    z6 = zSecureDecodersExplicit;
                    i11 = codecCount;
                } else {
                    String name = codecInfoAt.getName();
                    if (E(codecInfoAt, name, zSecureDecodersExplicit, str2) && (strQ = q(codecInfoAt, name, str2)) != null) {
                        try {
                            android.media.MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(strQ);
                            boolean zB = mediaCodecListCompat.b("tunneled-playback", strQ, capabilitiesForType);
                            boolean zA = mediaCodecListCompat.a("tunneled-playback", strQ, capabilitiesForType);
                            boolean z10 = codecKey2.tunneling;
                            if ((z10 || !zA) && (!z10 || zB)) {
                                boolean zB2 = mediaCodecListCompat.b("secure-playback", strQ, capabilitiesForType);
                                boolean zA2 = mediaCodecListCompat.a("secure-playback", strQ, capabilitiesForType);
                                boolean z11 = codecKey2.secure;
                                if ((z11 || !zA2) && (!z11 || zB2)) {
                                    boolean zF = F(codecInfoAt, str2);
                                    boolean zH = H(codecInfoAt, str2);
                                    boolean zJ = J(codecInfoAt);
                                    if (zSecureDecodersExplicit && codecKey2.secure == zB2) {
                                        i10 = i12;
                                        z6 = zSecureDecodersExplicit;
                                        i11 = codecCount;
                                        arrayList.add(MediaCodecInfo.F(name, str2, strQ, capabilitiesForType, zF, zH, zJ, false, false));
                                    } else {
                                        if (!zSecureDecodersExplicit) {
                                            try {
                                                if (!codecKey2.secure) {
                                                    i10 = i12;
                                                    z6 = zSecureDecodersExplicit;
                                                    i11 = codecCount;
                                                    try {
                                                        arrayList.add(MediaCodecInfo.F(name, str2, strQ, capabilitiesForType, zF, zH, zJ, false, false));
                                                    } catch (Exception e) {
                                                        e = e;
                                                        str = name;
                                                        if (Util.SDK_INT <= 23) {
                                                        }
                                                        Log.c(TAG, "Failed to query codec " + str + " (" + strQ + ")");
                                                        throw e;
                                                    }
                                                }
                                            } catch (Exception e2) {
                                                e = e2;
                                                i10 = i12;
                                                z6 = zSecureDecodersExplicit;
                                                i11 = codecCount;
                                                str = name;
                                                if (Util.SDK_INT <= 23) {
                                                }
                                                Log.c(TAG, "Failed to query codec " + str + " (" + strQ + ")");
                                                throw e;
                                            }
                                        }
                                        strQ = strQ;
                                        i10 = i12;
                                        z6 = zSecureDecodersExplicit;
                                        i11 = codecCount;
                                        if (!z6 && zB2) {
                                            StringBuilder sb = new StringBuilder();
                                            try {
                                                sb.append(name);
                                                sb.append(".secure");
                                                str = name;
                                                try {
                                                    arrayList.add(MediaCodecInfo.F(sb.toString(), str2, strQ, capabilitiesForType, zF, zH, zJ, false, true));
                                                    return arrayList;
                                                } catch (Exception e6) {
                                                    e = e6;
                                                    if (Util.SDK_INT <= 23 || arrayList.isEmpty()) {
                                                        Log.c(TAG, "Failed to query codec " + str + " (" + strQ + ")");
                                                        throw e;
                                                    }
                                                    Log.c(TAG, "Skipping codec " + str + " (failed to query capabilities)");
                                                    i12 = i10 + 1;
                                                    codecKey2 = codecKey;
                                                    codecCount = i11;
                                                    zSecureDecodersExplicit = z6;
                                                }
                                            } catch (Exception e7) {
                                                e = e7;
                                                str = name;
                                            }
                                        }
                                    }
                                } else {
                                    i10 = i12;
                                    z6 = zSecureDecodersExplicit;
                                    i11 = codecCount;
                                }
                            } else {
                                i10 = i12;
                                z6 = zSecureDecodersExplicit;
                                i11 = codecCount;
                            }
                        } catch (Exception e10) {
                            e = e10;
                            strQ = strQ;
                            str = name;
                            i10 = i12;
                            z6 = zSecureDecodersExplicit;
                            i11 = codecCount;
                        }
                    } else {
                        i10 = i12;
                        z6 = zSecureDecodersExplicit;
                        i11 = codecCount;
                    }
                }
                i12 = i10 + 1;
                codecKey2 = codecKey;
                codecCount = i11;
                zSecureDecodersExplicit = z6;
            }
            return arrayList;
        } catch (Exception e11) {
            throw new DecoderQueryException(e11);
        }
    }

    public static List<MediaCodecInfo> v(MediaCodecSelector mediaCodecSelector, Format format, boolean z6, boolean z10) throws DecoderQueryException {
        List<MediaCodecInfo> listA = mediaCodecSelector.a(format.sampleMimeType, z6, z10);
        return a0.r().j(listA).j(n(mediaCodecSelector, format, z6, z10)).k();
    }

    @CheckResult
    public static List<MediaCodecInfo> w(List<MediaCodecInfo> list, final Format format) {
        ArrayList arrayList = new ArrayList(list);
        R(arrayList, new ScoreProvider() { // from class: androidx.media3.exoplayer.mediacodec.q
            @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.ScoreProvider
            public final int a(Object obj) {
                return MediaCodecUtil.N(format, (MediaCodecInfo) obj);
            }
        });
        return arrayList;
    }

    @Nullable
    public static MediaCodecInfo x() throws DecoderQueryException {
        return s("audio/raw", false, false);
    }

    private MediaCodecUtil() {
    }

    @RequiresApi
    private static boolean D(android.media.MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isAlias();
    }

    private static boolean E(android.media.MediaCodecInfo mediaCodecInfo, String str, boolean z6, String str2) {
        if (mediaCodecInfo.isEncoder() || (!z6 && str.endsWith(".secure"))) {
            return false;
        }
        int i10 = Util.SDK_INT;
        if (i10 < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (i10 < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str)) {
            String str3 = Util.DEVICE;
            if ("a70".equals(str3) || ("Xiaomi".equals(Util.MANUFACTURER) && str3.startsWith("HM"))) {
                return false;
            }
        }
        if (i10 == 16 && "OMX.qcom.audio.decoder.mp3".equals(str)) {
            String str4 = Util.DEVICE;
            if ("dlxu".equals(str4) || "protou".equals(str4) || "ville".equals(str4) || "villeplus".equals(str4) || "villec2".equals(str4) || str4.startsWith("gee") || "C6602".equals(str4) || "C6603".equals(str4) || "C6606".equals(str4) || "C6616".equals(str4) || "L36h".equals(str4) || "SO-02E".equals(str4)) {
                return false;
            }
        }
        if (i10 == 16 && "OMX.qcom.audio.decoder.aac".equals(str)) {
            String str5 = Util.DEVICE;
            if ("C1504".equals(str5) || "C1505".equals(str5) || "C1604".equals(str5) || "C1605".equals(str5)) {
                return false;
            }
        }
        if (i10 < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(Util.MANUFACTURER))) {
            String str6 = Util.DEVICE;
            if (str6.startsWith("zeroflte") || str6.startsWith("zerolte") || str6.startsWith("zenlte") || "SC-05G".equals(str6) || "marinelteatt".equals(str6) || "404SC".equals(str6) || "SC-04G".equals(str6) || "SCV31".equals(str6)) {
                return false;
            }
        }
        if (i10 <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(Util.MANUFACTURER)) {
            String str7 = Util.DEVICE;
            if (str7.startsWith("d2") || str7.startsWith("serrano") || str7.startsWith("jflte") || str7.startsWith("santos") || str7.startsWith("t0")) {
                return false;
            }
        }
        if (i10 <= 19 && Util.DEVICE.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
            return false;
        }
        if (i10 <= 23 && "audio/eac3-joc".equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) {
            return false;
        }
        return true;
    }

    @RequiresApi
    private static boolean G(android.media.MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isHardwareAccelerated();
    }

    @RequiresApi
    private static boolean I(android.media.MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isSoftwareOnly();
    }

    @RequiresApi
    private static boolean K(android.media.MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isVendor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int N(Format format, MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.n(format) ? 1 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int O(ScoreProvider scoreProvider, Object obj, Object obj2) {
        return scoreProvider.a(obj2) - scoreProvider.a(obj);
    }

    public static List<MediaCodecInfo> n(MediaCodecSelector mediaCodecSelector, Format format, boolean z6, boolean z10) throws DecoderQueryException {
        String strM = m(format);
        if (strM == null) {
            return a0.x();
        }
        return mediaCodecSelector.a(strM, z6, z10);
    }

    @Nullable
    private static String q(android.media.MediaCodecInfo mediaCodecInfo, String str, String str2) {
        for (String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals("video/dolby-vision")) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        }
        if (str2.equals("audio/alac") && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        }
        if (str2.equals("audio/flac") && "OMX.lge.flac.decoder".equals(str)) {
            return "audio/x-lg-flac";
        }
        if (str2.equals("audio/ac3") && "OMX.lge.ac3.decoder".equals(str)) {
            return "audio/lg-ac3";
        }
        return null;
    }

    @Nullable
    public static MediaCodecInfo s(String str, boolean z6, boolean z10) throws DecoderQueryException {
        List<MediaCodecInfo> listT = t(str, z6, z10);
        if (listT.isEmpty()) {
            return null;
        }
        return listT.get(0);
    }
}
