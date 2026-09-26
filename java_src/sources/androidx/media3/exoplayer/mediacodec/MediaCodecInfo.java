package androidx.media3.exoplayer.mediacodec;

import android.graphics.Point;
import android.util.Pair;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import com.narvii.chat.input.MentionedEditText;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class MediaCodecInfo {
    private static final int COVERAGE_RESULT_NO = 1;
    private static final int COVERAGE_RESULT_NO_EMPTY_LIST = 0;
    private static final int COVERAGE_RESULT_YES = 2;
    public static final int MAX_SUPPORTED_INSTANCES_UNKNOWN = -1;
    public static final String TAG = "MediaCodecInfo";
    public final boolean adaptive;

    @Nullable
    public final android.media.MediaCodecInfo.CodecCapabilities capabilities;
    public final String codecMimeType;
    public final boolean hardwareAccelerated;
    private final boolean isVideo;
    public final String mimeType;
    public final String name;
    public final boolean secure;
    public final boolean softwareOnly;
    public final boolean tunneling;
    public final boolean vendor;

    private static int b(String str, String str2, int i10) {
        int i11;
        if (i10 > 1 || ((Util.SDK_INT >= 26 && i10 > 0) || "audio/mpeg".equals(str2) || "audio/3gpp".equals(str2) || "audio/amr-wb".equals(str2) || "audio/mp4a-latm".equals(str2) || "audio/vorbis".equals(str2) || "audio/opus".equals(str2) || "audio/raw".equals(str2) || "audio/flac".equals(str2) || "audio/g711-alaw".equals(str2) || "audio/g711-mlaw".equals(str2) || "audio/gsm".equals(str2))) {
            return i10;
        }
        if ("audio/ac3".equals(str2)) {
            i11 = 6;
        } else {
            i11 = "audio/eac3".equals(str2) ? 16 : 30;
        }
        Log.i("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + str + ", [" + i10 + " to " + i11 + "]");
        return i11;
    }

    private static android.media.MediaCodecInfo.CodecProfileLevel[] g(@Nullable android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
        int i10;
        android.media.MediaCodecInfo.VideoCapabilities videoCapabilities;
        int iIntValue = (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) ? 0 : ((Integer) videoCapabilities.getBitrateRange().getUpper()).intValue();
        if (iIntValue >= 180000000) {
            i10 = 1024;
        } else if (iIntValue >= 120000000) {
            i10 = 512;
        } else if (iIntValue >= 60000000) {
            i10 = 256;
        } else if (iIntValue >= 30000000) {
            i10 = 128;
        } else if (iIntValue >= 18000000) {
            i10 = 64;
        } else if (iIntValue >= 12000000) {
            i10 = 32;
        } else if (iIntValue >= 7200000) {
            i10 = 16;
        } else if (iIntValue >= 3600000) {
            i10 = 8;
        } else if (iIntValue >= 1800000) {
            i10 = 4;
        } else {
            i10 = iIntValue >= 800000 ? 2 : 1;
        }
        android.media.MediaCodecInfo.CodecProfileLevel codecProfileLevel = new android.media.MediaCodecInfo.CodecProfileLevel();
        codecProfileLevel.profile = 1;
        codecProfileLevel.level = i10;
        return new android.media.MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
    }

    public String toString() {
        return this.name;
    }

    @RequiresApi
    private static final class Api29 {
        private Api29() {
        }

        @DoNotInline
        public static int a(android.media.MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d) {
            List supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints();
            if (supportedPerformancePoints == null || supportedPerformancePoints.isEmpty() || MediaCodecInfo.C()) {
                return 0;
            }
            j.a();
            android.media.MediaCodecInfo.VideoCapabilities.PerformancePoint performancePointA = i.a(i10, i11, (int) d);
            for (int i12 = 0; i12 < supportedPerformancePoints.size(); i12++) {
                if (g.a(supportedPerformancePoints.get(i12)).covers(performancePointA)) {
                    return 2;
                }
            }
            return 1;
        }
    }

    private static boolean A(String str) {
        return Util.MODEL.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
    }

    private static boolean B(String str) {
        if (Util.SDK_INT <= 22) {
            String str2 = Util.MODEL;
            if (("ODROID-XU3".equals(str2) || "Nexus 10".equals(str2)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean C() {
        String str = Util.DEVICE;
        if (!str.equals("sabrina") && !str.equals("boreal")) {
            String str2 = Util.MODEL;
            if (!str2.startsWith("Lenovo TB-X605") && !str2.startsWith("Lenovo TB-X606") && !str2.startsWith("Lenovo TB-X616")) {
                return false;
            }
        }
        return true;
    }

    private static boolean E(String str) {
        return ("OMX.MTK.VIDEO.DECODER.HEVC".equals(str) && "mcv5a".equals(Util.DEVICE)) ? false : true;
    }

    public static MediaCodecInfo F(String str, String str2, String str3, @Nullable android.media.MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z6, boolean z10, boolean z11, boolean z12, boolean z13) {
        return new MediaCodecInfo(str, str2, str3, codecCapabilities, z6, z10, z11, (z12 || codecCapabilities == null || !i(codecCapabilities) || B(str)) ? false : true, codecCapabilities != null && u(codecCapabilities), z13 || (codecCapabilities != null && s(codecCapabilities)));
    }

    private static boolean i(android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return Util.SDK_INT >= 19 && j(codecCapabilities);
    }

    @RequiresApi
    private static boolean j(android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    private boolean q(Format format) {
        return this.mimeType.equals(format.sampleMimeType) || this.mimeType.equals(MediaCodecUtil.m(format));
    }

    private static boolean s(android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return Util.SDK_INT >= 21 && t(codecCapabilities);
    }

    private static boolean u(android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return Util.SDK_INT >= 21 && v(codecCapabilities);
    }

    private void x(String str) {
        Log.b("MediaCodecInfo", "AssumedSupport [" + str + "] [" + this.name + ", " + this.mimeType + "] [" + Util.DEVICE_DEBUG_INFO + "]");
    }

    private void y(String str) {
        Log.b("MediaCodecInfo", "NoSupport [" + str + "] [" + this.name + ", " + this.mimeType + "] [" + Util.DEVICE_DEBUG_INFO + "]");
    }

    private static boolean z(String str) {
        return "audio/opus".equals(str);
    }

    @Nullable
    @RequiresApi
    public Point c(int i10, int i11) {
        android.media.MediaCodecInfo.VideoCapabilities videoCapabilities;
        android.media.MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return d(videoCapabilities, i10, i11);
    }

    public DecoderReuseEvaluation f(Format format, Format format2) {
        int i10 = !Util.c(format.sampleMimeType, format2.sampleMimeType) ? 8 : 0;
        if (this.isVideo) {
            if (format.rotationDegrees != format2.rotationDegrees) {
                i10 |= 1024;
            }
            if (!this.adaptive && (format.width != format2.width || format.height != format2.height)) {
                i10 |= 512;
            }
            if (!Util.c(format.colorInfo, format2.colorInfo)) {
                i10 |= 2048;
            }
            if (A(this.name) && !format.g(format2)) {
                i10 |= 2;
            }
            if (i10 == 0) {
                return new DecoderReuseEvaluation(this.name, format, format2, format.g(format2) ? 3 : 2, 0);
            }
        } else {
            if (format.channelCount != format2.channelCount) {
                i10 |= 4096;
            }
            if (format.sampleRate != format2.sampleRate) {
                i10 |= 8192;
            }
            if (format.pcmEncoding != format2.pcmEncoding) {
                i10 |= 16384;
            }
            if (i10 == 0 && "audio/mp4a-latm".equals(this.mimeType)) {
                Pair<Integer, Integer> pairR = MediaCodecUtil.r(format);
                Pair<Integer, Integer> pairR2 = MediaCodecUtil.r(format2);
                if (pairR != null && pairR2 != null) {
                    int iIntValue = ((Integer) pairR.first).intValue();
                    int iIntValue2 = ((Integer) pairR2.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new DecoderReuseEvaluation(this.name, format, format2, 3, 0);
                    }
                }
            }
            if (!format.g(format2)) {
                i10 |= 32;
            }
            if (z(this.mimeType)) {
                i10 |= 2;
            }
            if (i10 == 0) {
                return new DecoderReuseEvaluation(this.name, format, format2, 1, 0);
            }
        }
        return new DecoderReuseEvaluation(this.name, format, format2, 0, i10);
    }

    public android.media.MediaCodecInfo.CodecProfileLevel[] h() {
        android.media.MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        android.media.MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new android.media.MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    @RequiresApi
    public boolean k(int i10) {
        android.media.MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            y("channelCount.caps");
            return false;
        }
        android.media.MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            y("channelCount.aCaps");
            return false;
        }
        if (b(this.name, this.mimeType, audioCapabilities.getMaxInputChannelCount()) >= i10) {
            return true;
        }
        y("channelCount.support, " + i10);
        return false;
    }

    @RequiresApi
    public boolean l(int i10) {
        android.media.MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            y("sampleRate.caps");
            return false;
        }
        android.media.MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            y("sampleRate.aCaps");
            return false;
        }
        if (audioCapabilities.isSampleRateSupported(i10)) {
            return true;
        }
        y("sampleRate.support, " + i10);
        return false;
    }

    public boolean p() {
        if (Util.SDK_INT >= 29 && "video/x-vnd.on2.vp9".equals(this.mimeType)) {
            for (android.media.MediaCodecInfo.CodecProfileLevel codecProfileLevel : h()) {
                if (codecProfileLevel.profile == 16384) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean r(Format format) {
        if (this.isVideo) {
            return this.adaptive;
        }
        Pair<Integer, Integer> pairR = MediaCodecUtil.r(format);
        return pairR != null && ((Integer) pairR.first).intValue() == 42;
    }

    @RequiresApi
    public boolean w(int i10, int i11, double d) {
        android.media.MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            y("sizeAndRate.caps");
            return false;
        }
        android.media.MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            y("sizeAndRate.vCaps");
            return false;
        }
        if (Util.SDK_INT >= 29) {
            int iA = Api29.a(videoCapabilities, i10, i11, d);
            if (iA == 2) {
                return true;
            }
            if (iA == 1) {
                y("sizeAndRate.cover, " + i10 + "x" + i11 + MentionedEditText.DEFAULT_METION_TAG + d);
                return false;
            }
        }
        if (!e(videoCapabilities, i10, i11, d)) {
            if (i10 >= i11 || !E(this.name) || !e(videoCapabilities, i11, i10, d)) {
                y("sizeAndRate.support, " + i10 + "x" + i11 + MentionedEditText.DEFAULT_METION_TAG + d);
                return false;
            }
            x("sizeAndRate.rotated, " + i10 + "x" + i11 + MentionedEditText.DEFAULT_METION_TAG + d);
        }
        return true;
    }

    @VisibleForTesting
    MediaCodecInfo(String str, String str2, String str3, @Nullable android.media.MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z6, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        this.name = (String) Assertions.e(str);
        this.mimeType = str2;
        this.codecMimeType = str3;
        this.capabilities = codecCapabilities;
        this.hardwareAccelerated = z6;
        this.softwareOnly = z10;
        this.vendor = z11;
        this.adaptive = z12;
        this.tunneling = z13;
        this.secure = z14;
        this.isVideo = MimeTypes.s(str2);
    }

    private static boolean D(String str, int i10) {
        if ("video/hevc".equals(str) && 2 == i10) {
            String str2 = Util.DEVICE;
            if ("sailfish".equals(str2) || "marlin".equals(str2)) {
                return true;
            }
        }
        return false;
    }

    @RequiresApi
    private static Point d(android.media.MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(Util.l(i10, widthAlignment) * widthAlignment, Util.l(i11, heightAlignment) * heightAlignment);
    }

    @RequiresApi
    private static boolean e(android.media.MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d) {
        Point pointD = d(videoCapabilities, i10, i11);
        int i12 = pointD.x;
        int i13 = pointD.y;
        if (d != -1.0d && d >= 1.0d) {
            return videoCapabilities.areSizeAndRateSupported(i12, i13, Math.floor(d));
        }
        return videoCapabilities.isSizeSupported(i12, i13);
    }

    private boolean m(Format format, boolean z6) {
        Pair<Integer, Integer> pairR = MediaCodecUtil.r(format);
        if (pairR == null) {
            return true;
        }
        int iIntValue = ((Integer) pairR.first).intValue();
        int iIntValue2 = ((Integer) pairR.second).intValue();
        if ("video/dolby-vision".equals(format.sampleMimeType)) {
            if ("video/avc".equals(this.mimeType)) {
                iIntValue = 8;
            } else if ("video/hevc".equals(this.mimeType)) {
                iIntValue = 2;
            }
            iIntValue2 = 0;
        }
        if (!this.isVideo && iIntValue != 42) {
            return true;
        }
        android.media.MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrH = h();
        if (Util.SDK_INT <= 23 && "video/x-vnd.on2.vp9".equals(this.mimeType) && codecProfileLevelArrH.length == 0) {
            codecProfileLevelArrH = g(this.capabilities);
        }
        for (android.media.MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArrH) {
            if (codecProfileLevel.profile == iIntValue && ((codecProfileLevel.level >= iIntValue2 || !z6) && !D(this.mimeType, iIntValue))) {
                return true;
            }
        }
        y("codec.profileLevel, " + format.codecs + ", " + this.codecMimeType);
        return false;
    }

    @RequiresApi
    private static boolean t(android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    @RequiresApi
    private static boolean v(android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    public boolean n(Format format) {
        if (!q(format) || !m(format, false)) {
            return false;
        }
        return true;
    }

    public boolean o(Format format) throws MediaCodecUtil.DecoderQueryException {
        int i10;
        boolean z6 = false;
        if (!q(format) || !m(format, true)) {
            return false;
        }
        if (this.isVideo) {
            int i11 = format.width;
            if (i11 <= 0 || (i10 = format.height) <= 0) {
                return true;
            }
            if (Util.SDK_INT >= 21) {
                return w(i11, i10, format.frameRate);
            }
            if (i11 * i10 <= MediaCodecUtil.P()) {
                z6 = true;
            }
            if (!z6) {
                y("legacyFrameSize, " + format.width + "x" + format.height);
            }
            return z6;
        }
        if (Util.SDK_INT >= 21) {
            int i12 = format.sampleRate;
            if (i12 != -1 && !l(i12)) {
                return false;
            }
            int i13 = format.channelCount;
            if (i13 != -1 && !k(i13)) {
                return false;
            }
        }
        return true;
    }
}
