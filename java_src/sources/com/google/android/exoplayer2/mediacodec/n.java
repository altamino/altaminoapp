package com.google.android.exoplayer2.mediacodec;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.util.Pair;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.util.o0;
import com.narvii.chat.input.MentionedEditText;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public final class n {
    private static final int COVERAGE_RESULT_NO = 1;
    private static final int COVERAGE_RESULT_NO_EMPTY_LIST = 0;
    private static final int COVERAGE_RESULT_YES = 2;
    public static final int MAX_SUPPORTED_INSTANCES_UNKNOWN = -1;
    public static final String TAG = "MediaCodecInfo";
    public final boolean adaptive;

    @Nullable
    public final MediaCodecInfo.CodecCapabilities capabilities;
    public final String codecMimeType;
    public final boolean hardwareAccelerated;
    private final boolean isVideo;
    public final String mimeType;
    public final String name;
    public final boolean secure;
    public final boolean softwareOnly;
    public final boolean tunneling;
    public final boolean vendor;

    private static int a(String str, String str2, int i10) {
        int i11;
        if (i10 > 1 || ((o0.SDK_INT >= 26 && i10 > 0) || "audio/mpeg".equals(str2) || "audio/3gpp".equals(str2) || "audio/amr-wb".equals(str2) || "audio/mp4a-latm".equals(str2) || "audio/vorbis".equals(str2) || "audio/opus".equals(str2) || "audio/raw".equals(str2) || "audio/flac".equals(str2) || "audio/g711-alaw".equals(str2) || "audio/g711-mlaw".equals(str2) || "audio/gsm".equals(str2))) {
            return i10;
        }
        if ("audio/ac3".equals(str2)) {
            i11 = 6;
        } else {
            i11 = "audio/eac3".equals(str2) ? 16 : 30;
        }
        com.google.android.exoplayer2.util.t.i("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + str + ", [" + i10 + " to " + i11 + "]");
        return i11;
    }

    private static MediaCodecInfo.CodecProfileLevel[] f(@Nullable MediaCodecInfo.CodecCapabilities codecCapabilities) {
        int i10;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
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
        MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
        codecProfileLevel.profile = 1;
        codecProfileLevel.level = i10;
        return new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
    }

    public String toString() {
        return this.name;
    }

    @RequiresApi
    private static final class a {
        @DoNotInline
        public static int a(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d) {
            List supportedPerformancePoints = videoCapabilities.getSupportedPerformancePoints();
            if (supportedPerformancePoints == null || supportedPerformancePoints.isEmpty()) {
                return 0;
            }
            androidx.media3.exoplayer.mediacodec.j.a();
            MediaCodecInfo.VideoCapabilities.PerformancePoint performancePointA = androidx.media3.exoplayer.mediacodec.i.a(i10, i11, (int) d);
            for (int i12 = 0; i12 < supportedPerformancePoints.size(); i12++) {
                if (androidx.media3.exoplayer.mediacodec.g.a(supportedPerformancePoints.get(i12)).covers(performancePointA)) {
                    return 2;
                }
            }
            return 1;
        }
    }

    private static boolean A(String str, int i10) {
        if ("video/hevc".equals(str) && 2 == i10) {
            String str2 = o0.DEVICE;
            if ("sailfish".equals(str2) || "marlin".equals(str2)) {
                return true;
            }
        }
        return false;
    }

    private static final boolean B(String str) {
        return ("OMX.MTK.VIDEO.DECODER.HEVC".equals(str) && "mcv5a".equals(o0.DEVICE)) ? false : true;
    }

    public static n C(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z6, boolean z10, boolean z11, boolean z12, boolean z13) {
        return new n(str, str2, str3, codecCapabilities, z6, z10, z11, (z12 || codecCapabilities == null || !h(codecCapabilities) || z(str)) ? false : true, codecCapabilities != null && s(codecCapabilities), z13 || (codecCapabilities != null && q(codecCapabilities)));
    }

    private static boolean h(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return o0.SDK_INT >= 19 && i(codecCapabilities);
    }

    @RequiresApi
    private static boolean i(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    private boolean l(a2 a2Var) {
        Pair<Integer, Integer> pairQ;
        if (a2Var.codecs == null || (pairQ = v.q(a2Var)) == null) {
            return true;
        }
        int iIntValue = ((Integer) pairQ.first).intValue();
        int iIntValue2 = ((Integer) pairQ.second).intValue();
        if ("video/dolby-vision".equals(a2Var.sampleMimeType)) {
            if (!"video/avc".equals(this.mimeType)) {
                iIntValue = "video/hevc".equals(this.mimeType) ? 2 : 8;
            }
            iIntValue2 = 0;
        }
        if (!this.isVideo && iIntValue != 42) {
            return true;
        }
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArrG = g();
        if (o0.SDK_INT <= 23 && "video/x-vnd.on2.vp9".equals(this.mimeType) && codecProfileLevelArrG.length == 0) {
            codecProfileLevelArrG = f(this.capabilities);
        }
        for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : codecProfileLevelArrG) {
            if (codecProfileLevel.profile == iIntValue && codecProfileLevel.level >= iIntValue2 && !A(this.mimeType, iIntValue)) {
                return true;
            }
        }
        w("codec.profileLevel, " + a2Var.codecs + ", " + this.codecMimeType);
        return false;
    }

    private boolean o(a2 a2Var) {
        return this.mimeType.equals(a2Var.sampleMimeType) || this.mimeType.equals(v.m(a2Var));
    }

    private static boolean q(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return o0.SDK_INT >= 21 && r(codecCapabilities);
    }

    @RequiresApi
    private static boolean r(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    private static boolean s(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return o0.SDK_INT >= 21 && t(codecCapabilities);
    }

    @RequiresApi
    private static boolean t(MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    private void v(String str) {
        com.google.android.exoplayer2.util.t.b("MediaCodecInfo", "AssumedSupport [" + str + "] [" + this.name + ", " + this.mimeType + "] [" + o0.DEVICE_DEBUG_INFO + "]");
    }

    private void w(String str) {
        com.google.android.exoplayer2.util.t.b("MediaCodecInfo", "NoSupport [" + str + "] [" + this.name + ", " + this.mimeType + "] [" + o0.DEVICE_DEBUG_INFO + "]");
    }

    private static boolean x(String str) {
        return "audio/opus".equals(str);
    }

    private static boolean y(String str) {
        return o0.MODEL.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
    }

    private static boolean z(String str) {
        if (o0.SDK_INT <= 22) {
            String str2 = o0.MODEL;
            if (("ODROID-XU3".equals(str2) || "Nexus 10".equals(str2)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str))) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    @RequiresApi
    public Point b(int i10, int i11) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return c(videoCapabilities, i10, i11);
    }

    public com.google.android.exoplayer2.decoder.i e(a2 a2Var, a2 a2Var2) {
        int i10 = !o0.c(a2Var.sampleMimeType, a2Var2.sampleMimeType) ? 8 : 0;
        if (this.isVideo) {
            if (a2Var.rotationDegrees != a2Var2.rotationDegrees) {
                i10 |= 1024;
            }
            if (!this.adaptive && (a2Var.width != a2Var2.width || a2Var.height != a2Var2.height)) {
                i10 |= 512;
            }
            if (!o0.c(a2Var.colorInfo, a2Var2.colorInfo)) {
                i10 |= 2048;
            }
            if (y(this.name) && !a2Var.g(a2Var2)) {
                i10 |= 2;
            }
            if (i10 == 0) {
                return new com.google.android.exoplayer2.decoder.i(this.name, a2Var, a2Var2, a2Var.g(a2Var2) ? 3 : 2, 0);
            }
        } else {
            if (a2Var.channelCount != a2Var2.channelCount) {
                i10 |= 4096;
            }
            if (a2Var.sampleRate != a2Var2.sampleRate) {
                i10 |= 8192;
            }
            if (a2Var.pcmEncoding != a2Var2.pcmEncoding) {
                i10 |= 16384;
            }
            if (i10 == 0 && "audio/mp4a-latm".equals(this.mimeType)) {
                Pair<Integer, Integer> pairQ = v.q(a2Var);
                Pair<Integer, Integer> pairQ2 = v.q(a2Var2);
                if (pairQ != null && pairQ2 != null) {
                    int iIntValue = ((Integer) pairQ.first).intValue();
                    int iIntValue2 = ((Integer) pairQ2.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new com.google.android.exoplayer2.decoder.i(this.name, a2Var, a2Var2, 3, 0);
                    }
                }
            }
            if (!a2Var.g(a2Var2)) {
                i10 |= 32;
            }
            if (x(this.mimeType)) {
                i10 |= 2;
            }
            if (i10 == 0) {
                return new com.google.android.exoplayer2.decoder.i(this.name, a2Var, a2Var2, 1, 0);
            }
        }
        return new com.google.android.exoplayer2.decoder.i(this.name, a2Var, a2Var2, 0, i10);
    }

    public MediaCodecInfo.CodecProfileLevel[] g() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    @RequiresApi
    public boolean j(int i10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            w("channelCount.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            w("channelCount.aCaps");
            return false;
        }
        if (a(this.name, this.mimeType, audioCapabilities.getMaxInputChannelCount()) >= i10) {
            return true;
        }
        w("channelCount.support, " + i10);
        return false;
    }

    @RequiresApi
    public boolean k(int i10) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            w("sampleRate.caps");
            return false;
        }
        MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
        if (audioCapabilities == null) {
            w("sampleRate.aCaps");
            return false;
        }
        if (audioCapabilities.isSampleRateSupported(i10)) {
            return true;
        }
        w("sampleRate.support, " + i10);
        return false;
    }

    public boolean n() {
        if (o0.SDK_INT >= 29 && "video/x-vnd.on2.vp9".equals(this.mimeType)) {
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : g()) {
                if (codecProfileLevel.profile == 16384) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean p(a2 a2Var) {
        if (this.isVideo) {
            return this.adaptive;
        }
        Pair<Integer, Integer> pairQ = v.q(a2Var);
        return pairQ != null && ((Integer) pairQ.first).intValue() == 42;
    }

    @RequiresApi
    public boolean u(int i10, int i11, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            w("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            w("sizeAndRate.vCaps");
            return false;
        }
        if (o0.SDK_INT >= 29) {
            int iA = a.a(videoCapabilities, i10, i11, d);
            if (iA == 2) {
                return true;
            }
            if (iA == 1) {
                w("sizeAndRate.cover, " + i10 + "x" + i11 + MentionedEditText.DEFAULT_METION_TAG + d);
                return false;
            }
        }
        if (!d(videoCapabilities, i10, i11, d)) {
            if (i10 >= i11 || !B(this.name) || !d(videoCapabilities, i11, i10, d)) {
                w("sizeAndRate.support, " + i10 + "x" + i11 + MentionedEditText.DEFAULT_METION_TAG + d);
                return false;
            }
            v("sizeAndRate.rotated, " + i10 + "x" + i11 + MentionedEditText.DEFAULT_METION_TAG + d);
        }
        return true;
    }

    @VisibleForTesting
    n(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z6, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        this.name = (String) com.google.android.exoplayer2.util.a.e(str);
        this.mimeType = str2;
        this.codecMimeType = str3;
        this.capabilities = codecCapabilities;
        this.hardwareAccelerated = z6;
        this.softwareOnly = z10;
        this.vendor = z11;
        this.adaptive = z12;
        this.tunneling = z13;
        this.secure = z14;
        this.isVideo = com.google.android.exoplayer2.util.x.o(str2);
    }

    @RequiresApi
    private static Point c(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new Point(o0.l(i10, widthAlignment) * widthAlignment, o0.l(i11, heightAlignment) * heightAlignment);
    }

    @RequiresApi
    private static boolean d(MediaCodecInfo.VideoCapabilities videoCapabilities, int i10, int i11, double d) {
        Point pointC = c(videoCapabilities, i10, i11);
        int i12 = pointC.x;
        int i13 = pointC.y;
        if (d != -1.0d && d >= 1.0d) {
            return videoCapabilities.areSizeAndRateSupported(i12, i13, Math.floor(d));
        }
        return videoCapabilities.isSizeSupported(i12, i13);
    }

    public boolean m(a2 a2Var) throws v.c {
        int i10;
        boolean z6 = false;
        if (!o(a2Var) || !l(a2Var)) {
            return false;
        }
        if (this.isVideo) {
            int i11 = a2Var.width;
            if (i11 <= 0 || (i10 = a2Var.height) <= 0) {
                return true;
            }
            if (o0.SDK_INT >= 21) {
                return u(i11, i10, a2Var.frameRate);
            }
            if (i11 * i10 <= v.N()) {
                z6 = true;
            }
            if (!z6) {
                w("legacyFrameSize, " + a2Var.width + "x" + a2Var.height);
            }
            return z6;
        }
        if (o0.SDK_INT >= 21) {
            int i12 = a2Var.sampleRate;
            if (i12 != -1 && !k(i12)) {
                return false;
            }
            int i13 = a2Var.channelCount;
            if (i13 != -1 && !j(i13)) {
                return false;
            }
        }
        return true;
    }
}
