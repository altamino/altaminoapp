package io.agora.rtc.video;

import android.annotation.TargetApi;
import android.graphics.Matrix;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.opengl.EGLContext;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.Surface;
import com.google.android.gms.common.Scopes;
import com.narvii.scene.poll.ScenePollPlayView;
import io.agora.rtc.gl.EglBase;
import io.agora.rtc.gl.EglBase10;
import io.agora.rtc.gl.EglBase14;
import io.agora.rtc.internal.Logging;
import io.agora.rtc.utils.ThreadUtils;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.CountDownLatch;

@TargetApi(19)
/* loaded from: classes4.dex */
public class MediaCodecVideoEncoder {
    private static final int BASE_FRAME_RATE_FOR_AMLOGIC = 30;
    private static final int BASE_FRAME_RATE_FOR_EXYNOS = 30;
    private static final int BASE_FRAME_RATE_FOR_HIS_HISI = 30;
    private static final int BASE_FRAME_RATE_FOR_HIS_K3 = 30;
    private static final int BASE_FRAME_RATE_FOR_HIS_TOPAZ = 30;
    private static final int BASE_FRAME_RATE_FOR_MTK = 30;
    private static final int DEQUEUE_TIMEOUT = 0;
    private static final String H264_MIME_TYPE = "video/avc";
    private static final int KBPS_TO_BPS_FACTOR = 900;
    private static final int KBPS_TO_BPS_FACTOR_QCOM = 950;
    private static final int MEDIA_CODEC_RELEASE_TIMEOUT_MS = 3000;
    private static final String TAG = "MediaCodecVideoEncoder";
    private static final int VIDEO_ControlRateConstant = 2;
    private static final int VIDEO_ControlRateVariable = 1;
    private static final String VP8_MIME_TYPE = "video/x-vnd.on2.vp8";
    private static final String VP9_MIME_TYPE = "video/x-vnd.on2.vp9";
    private static int codecErrors;
    private static String codecOmxName;
    private static MediaCodecVideoEncoderErrorCallback errorCallback;
    private static MediaCodecVideoEncoder runningInstance;
    private int colorFormat;
    private int converted_bps;
    private io.agora.rtc.gl.GlRectDrawer drawer;
    private EglBase eglBase;
    private int height;
    private Surface inputSurface;
    private int lastSetFps;
    private MediaCodec mediaCodec;
    private Thread mediaCodecThread;
    private ByteBuffer[] outputBuffers;
    private VideoCodecType type;
    private int width;
    private static Set<String> hwEncoderDisabledTypes = new HashSet();
    private static final String[] supportedVp8HwCodecPrefixes = {"OMX.qcom.", "OMX.Intel."};
    private static final String[] supportedVp9HwCodecPrefixes = {"OMX.qcom."};
    private static final String[] supportedH264HwCodecPrefixes = {"OMX.qcom.", "OMX.Exynos.", "OMX.MTK.", "OMX.IMG.TOPAZ.", "OMX.hisi.", "OMX.k3.", "OMX.amlogic.", "OMX.rk."};
    private static final String[] H264_HW_EXCEPTION_MODELS = {"SAMSUNG-SGH-I337", "Nexus 7", "Nexus 4", "P6-C00", "HM 2A", "XT105", "XT109", "XT1060"};
    private static final String[] H264_HW_QCOM_EXCEPTION_MODELS = {"mi note lte", "redmi note 4x", "1605-a01", "aosp on hammerhead", "lm-x210", "oppo r9s"};
    private static final String[] MTK_NO_ADJUSTMENT_MODELS = {"vivo y83a", "vivo x21i", "vivo X21i A"};
    private static final int COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m = 2141391876;
    private static final int[] supportedColorList = {19, 21, 2141391872, COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m};
    private static final int[] supportedSurfaceColorList = {2130708361};
    private final Matrix rotateMatrix = new Matrix();
    private ByteBuffer configData = null;
    private long lastKeyFrameTimeMs = 0;
    private int keyFrameIntervalInMsec = 0;
    private long lastResetForQcomTimeMs = 0;
    private boolean qcomExceptionModel = false;
    private ChipProperties chipProperties = null;
    private FileOutputStream fos = null;

    public enum BitrateAdjustmentType {
        NO_ADJUSTMENT,
        FRAMERATE_ADJUSTMENT,
        ACTUAL_FRAMERATE_ADJUSTMENT,
        DYNAMIC_ADJUSTMENT
    }

    public interface MediaCodecVideoEncoderErrorCallback {
        void onMediaCodecVideoEncoderCriticalError(int i);
    }

    public enum VideoCodecType {
        VIDEO_CODEC_VP8,
        VIDEO_CODEC_VP9,
        VIDEO_CODEC_H264
    }

    private void checkOnMediaCodecThread() {
    }

    public static void setErrorCallback(MediaCodecVideoEncoderErrorCallback mediaCodecVideoEncoderErrorCallback) {
        Logging.d(TAG, "Set error callback");
        errorCallback = mediaCodecVideoEncoderErrorCallback;
    }

    public static void disableVp8HwCodec() {
        Logging.w(TAG, "VP8 encoding is disabled by application.");
        hwEncoderDisabledTypes.add("video/x-vnd.on2.vp8");
    }

    public static void disableVp9HwCodec() {
        Logging.w(TAG, "VP9 encoding is disabled by application.");
        hwEncoderDisabledTypes.add("video/x-vnd.on2.vp9");
    }

    public static void disableH264HwCodec() {
        Logging.w(TAG, "H.264 encoding is disabled by application.");
        hwEncoderDisabledTypes.add("video/avc");
    }

    public static boolean isVp8HwSupported() {
        return (hwEncoderDisabledTypes.contains("video/x-vnd.on2.vp8") || findHwEncoder("video/x-vnd.on2.vp8", supportedVp8HwCodecPrefixes, supportedColorList) == null) ? false : true;
    }

    public static boolean isVp9HwSupported() {
        return (hwEncoderDisabledTypes.contains("video/x-vnd.on2.vp9") || findHwEncoder("video/x-vnd.on2.vp9", supportedVp9HwCodecPrefixes, supportedColorList) == null) ? false : true;
    }

    public static boolean isH264HwSupported() {
        try {
            if (hwEncoderDisabledTypes.contains("video/avc")) {
                return false;
            }
            return findHwEncoder("video/avc", supportedH264HwCodecPrefixes, supportedColorList) != null;
        } catch (Exception unused) {
            Logging.e(TAG, "isH264HwSupported failed!");
            return false;
        }
    }

    public static boolean isVp8HwSupportedUsingTextures() {
        return (hwEncoderDisabledTypes.contains("video/x-vnd.on2.vp8") || findHwEncoder("video/x-vnd.on2.vp8", supportedVp8HwCodecPrefixes, supportedSurfaceColorList) == null) ? false : true;
    }

    public static boolean isVp9HwSupportedUsingTextures() {
        return (hwEncoderDisabledTypes.contains("video/x-vnd.on2.vp9") || findHwEncoder("video/x-vnd.on2.vp9", supportedVp9HwCodecPrefixes, supportedSurfaceColorList) == null) ? false : true;
    }

    public static boolean isH264HwSupportedUsingTextures() {
        try {
            if (hwEncoderDisabledTypes.contains("video/avc")) {
                return false;
            }
            return findHwEncoder("video/avc", supportedH264HwCodecPrefixes, supportedSurfaceColorList) != null;
        } catch (Exception unused) {
            Logging.e(TAG, "isH264HwSupportedUsingTextures failed!");
            return false;
        }
    }

    public static boolean isQcomHWEncoder() {
        String str = codecOmxName;
        if (str != null && !str.startsWith("OMX.qcom.")) {
            Logging.i(TAG, "Qualcomm HW encoder false");
            return false;
        }
        Logging.i(TAG, "Qualcomm HW encoder true");
        return true;
    }

    private static class EncoderProperties {
        public final String codecName;
        public final int colorFormat;
        public final boolean supportedList;

        public EncoderProperties(String str, int i, boolean z) {
            this.codecName = str;
            this.colorFormat = i;
            this.supportedList = z;
        }
    }

    private static EncoderProperties findHwEncoder(String str, String[] strArr, int[] iArr) {
        try {
            return do_findHwEncoder(str, strArr, iArr);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static EncoderProperties do_findHwEncoder(String str, String[] strArr, int[] iArr) {
        String name;
        boolean z;
        String[] strArr2 = strArr;
        int i = 19;
        EncoderProperties encoderProperties = null;
        if (Build.VERSION.SDK_INT < 19) {
            return null;
        }
        int i2 = 0;
        int i3 = 2130708361;
        boolean z2 = true;
        boolean z3 = iArr[0] == 2130708361;
        if (str.equals("video/avc") && Arrays.asList(H264_HW_EXCEPTION_MODELS).contains(Build.MODEL)) {
            Logging.w(TAG, "Model: " + Build.MODEL + " has black listed H.264 encoder.");
            return null;
        }
        Logging.i(TAG, "Model: " + Build.MODEL);
        Logging.i(TAG, "hardware: " + Build.HARDWARE);
        if (Build.HARDWARE.equalsIgnoreCase("kirin970") && !z3) {
            return null;
        }
        int i4 = 0;
        while (i4 < MediaCodecList.getCodecCount()) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i4);
            if (codecInfoAt.isEncoder()) {
                String[] supportedTypes = codecInfoAt.getSupportedTypes();
                int length = supportedTypes.length;
                int i5 = 0;
                while (true) {
                    if (i5 >= length) {
                        name = encoderProperties;
                        break;
                    }
                    if (supportedTypes[i5].equals(str)) {
                        name = codecInfoAt.getName();
                        break;
                    }
                    i5++;
                }
                if (name != 0) {
                    if (checkMinSDKVersion(name, z3)) {
                        Logging.i(TAG, "Found candidate encoder " + name);
                        int length2 = strArr2.length;
                        int i6 = 0;
                        while (true) {
                            if (i6 >= length2) {
                                z = false;
                                break;
                            }
                            if (name.startsWith(strArr2[i6])) {
                                z = true;
                                break;
                            }
                            i6++;
                        }
                        if (z || z3) {
                            codecOmxName = name;
                            if (name.startsWith("OMX.amlogic.")) {
                                if (z3) {
                                    return new EncoderProperties(name, i3, z2);
                                }
                                return new EncoderProperties(name, i, z2);
                            }
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(str);
                            int[] iArr2 = capabilitiesForType.colorFormats;
                            int length3 = iArr2.length;
                            boolean z4 = false;
                            while (i2 < length3) {
                                int i7 = iArr2[i2];
                                if (21 == i7) {
                                    z4 = true;
                                }
                                Logging.d(TAG, "   Color: 0x" + Integer.toHexString(i7));
                                i2++;
                            }
                            for (int i8 : iArr) {
                                for (int i9 : capabilitiesForType.colorFormats) {
                                    if (i9 == i8) {
                                        if (i9 == 19 && z4 && (name.startsWith("OMX.IMG.TOPAZ.") || name.startsWith("OMX.hisi.") || name.startsWith("OMX.k3."))) {
                                            Logging.i(TAG, "TOPAZ,force use COLOR_FormatYUV420SemiPlanar");
                                            Logging.i(TAG, "Found target encoder for mime " + str + " : " + name + ". Color: 0x" + Integer.toHexString(21));
                                            return new EncoderProperties(name, 21, z);
                                        }
                                        Logging.i(TAG, "Found target encoder for mime " + str + " : " + name + ". Color: 0x" + Integer.toHexString(i9));
                                        return new EncoderProperties(name, i9, z);
                                    }
                                }
                            }
                        }
                    } else {
                        Logging.e(TAG, "Check min sdk version failed, " + name);
                    }
                }
            }
            i4++;
            strArr2 = strArr;
            i2 = 0;
            i = 19;
            encoderProperties = null;
            i3 = 2130708361;
            z2 = true;
        }
        return encoderProperties;
    }

    public static void printStackTrace() {
        Thread thread;
        MediaCodecVideoEncoder mediaCodecVideoEncoder = runningInstance;
        if (mediaCodecVideoEncoder == null || (thread = mediaCodecVideoEncoder.mediaCodecThread) == null) {
            return;
        }
        StackTraceElement[] stackTrace = thread.getStackTrace();
        if (stackTrace.length > 0) {
            Logging.d(TAG, "MediaCodecVideoEncoder stacks trace:");
            for (StackTraceElement stackTraceElement : stackTrace) {
                Logging.d(TAG, stackTraceElement.toString());
            }
        }
    }

    private static class ChipProperties {
        public final int baseFrameRate;
        public final BitrateAdjustmentType bitrateAdjustmentType;
        public final String chipName;
        public final int highProfileMinSdkVersion;
        public final int initFrameRate;
        public final boolean isNeedResetWhenDownBps;

        ChipProperties(String str, BitrateAdjustmentType bitrateAdjustmentType, boolean z, int i, int i2, int i3) {
            this.chipName = str;
            this.bitrateAdjustmentType = bitrateAdjustmentType;
            this.isNeedResetWhenDownBps = z;
            this.baseFrameRate = i;
            this.initFrameRate = i2;
            this.highProfileMinSdkVersion = i3;
        }
    }

    static MediaCodec createByCodecName(String str) {
        try {
            return MediaCodec.createByCodecName(str);
        } catch (Exception unused) {
            return null;
        }
    }

    boolean initEncode(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, EGLContext eGLContext) {
        try {
            if (createEncoder(i, i2, i3, i4, i5, i6, i7, i8, eGLContext != null)) {
                if (eGLContext != null) {
                    this.eglBase = new EglBase14(new EglBase14.Context(eGLContext), EglBase.CONFIG_RECORDABLE);
                    this.inputSurface = this.mediaCodec.createInputSurface();
                    this.eglBase.createSurface(this.inputSurface);
                    this.drawer = new io.agora.rtc.gl.GlRectDrawer();
                }
                this.mediaCodec.start();
                this.outputBuffers = this.mediaCodec.getOutputBuffers();
                Logging.d(TAG, "Output buffers: " + this.outputBuffers.length);
                return true;
            }
            Logging.e(TAG, "failed to create hardware encoder!!");
            return false;
        } catch (Exception e) {
            Logging.e(TAG, "failed to create hardware encoder,", e);
            release();
            return false;
        }
    }

    boolean initEncode(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, javax.microedition.khronos.egl.EGLContext eGLContext) {
        try {
            if (createEncoder(i, i2, i3, i4, i5, i6, i7, i8, eGLContext != null)) {
                if (eGLContext != null) {
                    this.eglBase = new EglBase10(new EglBase10.Context(eGLContext), EglBase.CONFIG_RECORDABLE);
                    this.inputSurface = this.mediaCodec.createInputSurface();
                    this.eglBase.createSurface(this.inputSurface);
                    this.drawer = new io.agora.rtc.gl.GlRectDrawer();
                }
                this.mediaCodec.start();
                this.outputBuffers = this.mediaCodec.getOutputBuffers();
                Logging.d(TAG, "Output buffers: " + this.outputBuffers.length);
                return true;
            }
            Logging.e(TAG, "failed to create hardware encoder!!");
            return false;
        } catch (Exception e) {
            Logging.e(TAG, "failed to create hardware encoder,", e);
            release();
            return false;
        }
    }

    private boolean createEncoder(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) throws RuntimeException {
        EncoderProperties encoderPropertiesFindHwEncoder;
        int i9 = i5;
        int i10 = i7;
        Logging.i(TAG, "Java initEncode: " + VideoCodecType.values()[i] + " : " + i2 + " x " + i3 + ". @ " + i4 + " Kbps. Fps: " + i9 + " key interval: " + i10 + "s. Encode from texture : " + z);
        this.width = i2;
        this.height = i3;
        if (this.mediaCodecThread != null) {
            throw new RuntimeException("Forgot to release()?");
        }
        if (i9 < 1) {
            i9 = 1;
        }
        if (i10 < 1) {
            i10 = 1;
        }
        this.lastSetFps = i9;
        this.keyFrameIntervalInMsec = i10 * 1000;
        this.lastKeyFrameTimeMs = 0L;
        this.lastResetForQcomTimeMs = SystemClock.elapsedRealtime();
        VideoCodecType videoCodecType = VideoCodecType.values()[i];
        String str = "video/avc";
        if (videoCodecType == VideoCodecType.VIDEO_CODEC_VP8) {
            encoderPropertiesFindHwEncoder = findHwEncoder("video/x-vnd.on2.vp8", supportedVp8HwCodecPrefixes, z ? supportedSurfaceColorList : supportedColorList);
            str = "video/x-vnd.on2.vp8";
        } else if (videoCodecType == VideoCodecType.VIDEO_CODEC_VP9) {
            encoderPropertiesFindHwEncoder = findHwEncoder("video/x-vnd.on2.vp9", supportedH264HwCodecPrefixes, z ? supportedSurfaceColorList : supportedColorList);
            str = "video/x-vnd.on2.vp9";
        } else if (videoCodecType == VideoCodecType.VIDEO_CODEC_H264) {
            encoderPropertiesFindHwEncoder = findHwEncoder("video/avc", supportedH264HwCodecPrefixes, z ? supportedSurfaceColorList : supportedColorList);
        } else {
            encoderPropertiesFindHwEncoder = null;
            str = null;
        }
        if (encoderPropertiesFindHwEncoder == null) {
            throw new RuntimeException("Can not find HW encoder for " + videoCodecType);
        }
        runningInstance = this;
        this.colorFormat = encoderPropertiesFindHwEncoder.colorFormat;
        this.chipProperties = getChipProperties(encoderPropertiesFindHwEncoder.codecName, i9);
        Logging.i(TAG, "Color format: " + this.colorFormat);
        this.converted_bps = convertBitRate(i4, i9);
        this.mediaCodecThread = Thread.currentThread();
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat(str, i2, i3);
        if (Build.VERSION.SDK_INT >= this.chipProperties.highProfileMinSdkVersion && i8 == 100) {
            Logging.i(TAG, "Set high profile and level");
            mediaFormatCreateVideoFormat.setInteger(Scopes.PROFILE, 8);
            mediaFormatCreateVideoFormat.setInteger("level", 512);
        }
        mediaFormatCreateVideoFormat.setInteger("bitrate", this.converted_bps);
        if (encoderPropertiesFindHwEncoder.codecName.startsWith("OMX.rk.")) {
            mediaFormatCreateVideoFormat.setInteger("bitrate-mode", 2);
        } else if (!this.qcomExceptionModel) {
            mediaFormatCreateVideoFormat.setInteger("bitrate-mode", 1);
        }
        mediaFormatCreateVideoFormat.setInteger("color-format", encoderPropertiesFindHwEncoder.colorFormat);
        ChipProperties chipProperties = this.chipProperties;
        if (chipProperties.bitrateAdjustmentType == BitrateAdjustmentType.NO_ADJUSTMENT) {
            mediaFormatCreateVideoFormat.setInteger("frame-rate", i6);
        } else {
            mediaFormatCreateVideoFormat.setInteger("frame-rate", chipProperties.initFrameRate);
        }
        if (this.chipProperties.bitrateAdjustmentType == BitrateAdjustmentType.ACTUAL_FRAMERATE_ADJUSTMENT) {
            mediaFormatCreateVideoFormat.setInteger("i-frame-interval", i10);
        } else {
            mediaFormatCreateVideoFormat.setInteger("i-frame-interval", i10 + 1);
        }
        Logging.d(TAG, "  Format: " + mediaFormatCreateVideoFormat);
        this.mediaCodec = createByCodecName(encoderPropertiesFindHwEncoder.codecName);
        this.type = videoCodecType;
        MediaCodec mediaCodec = this.mediaCodec;
        if (mediaCodec == null) {
            throw new RuntimeException("Can not create media encoder");
        }
        mediaCodec.configure(mediaFormatCreateVideoFormat, (Surface) null, (MediaCrypto) null, 1);
        return true;
    }

    ByteBuffer[] getInputBuffers() {
        ByteBuffer[] inputBuffers = this.mediaCodec.getInputBuffers();
        Logging.d(TAG, "Input buffers: " + inputBuffers.length);
        return inputBuffers;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002f A[Catch: IllegalStateException -> 0x002b, TryCatch #0 {IllegalStateException -> 0x002b, blocks: (B:7:0x0017, B:9:0x001f, B:17:0x0045, B:15:0x002f, B:16:0x0034), top: B:22:0x0017 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean encodeBuffer(boolean r15, int r16, int r17, long r18) throws android.media.MediaCodec.CryptoException {
        /*
            r14 = this;
            r1 = r14
            r14.checkOnMediaCodecThread()
            long r2 = android.os.SystemClock.elapsedRealtime()
            long r4 = r1.lastKeyFrameTimeMs
            r6 = 0
            int r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r0 != 0) goto L12
            r1.lastKeyFrameTimeMs = r2
        L12:
            r4 = 0
            java.lang.String r5 = "MediaCodecVideoEncoder"
            if (r15 != 0) goto L2d
            io.agora.rtc.video.MediaCodecVideoEncoder$ChipProperties r0 = r1.chipProperties     // Catch: java.lang.IllegalStateException -> L2b
            io.agora.rtc.video.MediaCodecVideoEncoder$BitrateAdjustmentType r0 = r0.bitrateAdjustmentType     // Catch: java.lang.IllegalStateException -> L2b
            io.agora.rtc.video.MediaCodecVideoEncoder$BitrateAdjustmentType r6 = io.agora.rtc.video.MediaCodecVideoEncoder.BitrateAdjustmentType.ACTUAL_FRAMERATE_ADJUSTMENT     // Catch: java.lang.IllegalStateException -> L2b
            if (r0 == r6) goto L45
            long r6 = r1.lastKeyFrameTimeMs     // Catch: java.lang.IllegalStateException -> L2b
            long r6 = r2 - r6
            int r0 = r1.keyFrameIntervalInMsec     // Catch: java.lang.IllegalStateException -> L2b
            long r8 = (long) r0     // Catch: java.lang.IllegalStateException -> L2b
            int r0 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r0 < 0) goto L45
            goto L2d
        L2b:
            r0 = move-exception
            goto L54
        L2d:
            if (r15 == 0) goto L34
            java.lang.String r0 = "Sync frame request"
            io.agora.rtc.internal.Logging.i(r5, r0)     // Catch: java.lang.IllegalStateException -> L2b
        L34:
            android.os.Bundle r0 = new android.os.Bundle     // Catch: java.lang.IllegalStateException -> L2b
            r0.<init>()     // Catch: java.lang.IllegalStateException -> L2b
            java.lang.String r6 = "request-sync"
            r0.putInt(r6, r4)     // Catch: java.lang.IllegalStateException -> L2b
            android.media.MediaCodec r6 = r1.mediaCodec     // Catch: java.lang.IllegalStateException -> L2b
            r6.setParameters(r0)     // Catch: java.lang.IllegalStateException -> L2b
            r1.lastKeyFrameTimeMs = r2     // Catch: java.lang.IllegalStateException -> L2b
        L45:
            android.media.MediaCodec r7 = r1.mediaCodec     // Catch: java.lang.IllegalStateException -> L2b
            r9 = 0
            r13 = 0
            r8 = r16
            r10 = r17
            r11 = r18
            r7.queueInputBuffer(r8, r9, r10, r11, r13)     // Catch: java.lang.IllegalStateException -> L2b
            r0 = 1
            return r0
        L54:
            java.lang.String r2 = "encodeBuffer failed"
            io.agora.rtc.internal.Logging.e(r5, r2, r0)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.agora.rtc.video.MediaCodecVideoEncoder.encodeBuffer(boolean, int, int, long):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035 A[Catch: RuntimeException -> 0x0030, TryCatch #0 {RuntimeException -> 0x0030, blocks: (B:7:0x001c, B:9:0x0024, B:17:0x004b, B:24:0x0093, B:26:0x00bf, B:28:0x00e2, B:27:0x00d1, B:15:0x0035, B:16:0x003a), top: B:33:0x001c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean encodeTexture(boolean r19, int r20, int r21, float[] r22, int r23, int r24, int r25, int r26, int r27, long r28) {
        /*
            Method dump skipped, instructions count: 239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.agora.rtc.video.MediaCodecVideoEncoder.encodeTexture(boolean, int, int, float[], int, int, int, int, int, long):boolean");
    }

    private static int distance(float f, float f2, float f3, float f4) {
        return (int) Math.round(Math.hypot(f3 - f, f4 - f2));
    }

    void release() {
        Logging.i(TAG, "Java releaseEncoder");
        checkOnMediaCodecThread();
        final C1CaughtException c1CaughtException = new C1CaughtException();
        boolean z = false;
        if (this.mediaCodec != null) {
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            new Thread(new Runnable() { // from class: io.agora.rtc.video.MediaCodecVideoEncoder.1
                @Override // java.lang.Runnable
                public void run() {
                    Logging.i(MediaCodecVideoEncoder.TAG, "Java releaseEncoder on release thread");
                    try {
                        MediaCodecVideoEncoder.this.mediaCodec.stop();
                    } catch (Exception e) {
                        Logging.e(MediaCodecVideoEncoder.TAG, "Media encoder stop failed", e);
                    }
                    try {
                        MediaCodecVideoEncoder.this.mediaCodec.release();
                    } catch (Exception e2) {
                        Logging.e(MediaCodecVideoEncoder.TAG, "Media encoder release failed", e2);
                        c1CaughtException.e = e2;
                    }
                    Logging.i(MediaCodecVideoEncoder.TAG, "Java releaseEncoder on release thread done");
                    countDownLatch.countDown();
                }
            }).start();
            if (!ThreadUtils.awaitUninterruptibly(countDownLatch, ScenePollPlayView.POLL_RESULT_COUNT_DOWN_MS)) {
                Logging.e(TAG, "Media encoder release timeout");
                z = true;
            }
            this.mediaCodec = null;
        }
        this.mediaCodecThread = null;
        io.agora.rtc.gl.GlRectDrawer glRectDrawer = this.drawer;
        if (glRectDrawer != null) {
            glRectDrawer.release();
            this.drawer = null;
        }
        EglBase eglBase = this.eglBase;
        if (eglBase != null) {
            eglBase.release();
            this.eglBase = null;
        }
        Surface surface = this.inputSurface;
        if (surface != null) {
            surface.release();
            this.inputSurface = null;
        }
        runningInstance = null;
        if (z) {
            codecErrors++;
            if (errorCallback != null) {
                Logging.e(TAG, "Invoke codec error callback. Errors: " + codecErrors);
                errorCallback.onMediaCodecVideoEncoderCriticalError(codecErrors);
            }
            throw new RuntimeException("Media encoder release timeout.");
        }
        Exception exc = c1CaughtException.e;
        if (exc != null) {
            RuntimeException runtimeException = new RuntimeException(exc);
            runtimeException.setStackTrace(ThreadUtils.concatStackTraces(c1CaughtException.e.getStackTrace(), runtimeException.getStackTrace()));
            throw runtimeException;
        }
        Logging.i(TAG, "Java releaseEncoder done");
    }

    /* renamed from: io.agora.rtc.video.MediaCodecVideoEncoder$1CaughtException, reason: invalid class name */
    class C1CaughtException {
        Exception e;

        C1CaughtException() {
        }
    }

    private static boolean checkMinSDKVersion(String str, boolean z) {
        return z ? Build.VERSION.SDK_INT >= 19 : str.startsWith("OMX.qcom.") ? Build.VERSION.SDK_INT >= 19 : str.startsWith("OMX.MTK.") ? Build.VERSION.SDK_INT >= 21 : str.startsWith("OMX.Exynos.") ? Build.VERSION.SDK_INT >= 21 : str.startsWith("OMX.IMG.TOPAZ.") ? Build.VERSION.SDK_INT >= 21 : str.startsWith("OMX.k3.") ? Build.VERSION.SDK_INT >= 21 : Build.VERSION.SDK_INT >= 21;
    }

    private ChipProperties getChipProperties(String str, int i) {
        if (str.startsWith("OMX.qcom.")) {
            if (Arrays.asList(H264_HW_QCOM_EXCEPTION_MODELS).contains(Build.MODEL.toLowerCase())) {
                Logging.w(TAG, "Qcom Exception Model: " + Build.MODEL);
                this.qcomExceptionModel = true;
                return new ChipProperties(str, BitrateAdjustmentType.NO_ADJUSTMENT, true, i, i, 21);
            }
            this.qcomExceptionModel = false;
            return new ChipProperties(str, BitrateAdjustmentType.NO_ADJUSTMENT, false, i, i, 21);
        }
        if (str.startsWith("OMX.MTK.")) {
            String str2 = Build.HARDWARE;
            Logging.i(TAG, "MTK hardware: " + str2);
            if (str2.equalsIgnoreCase("mt6763") || str2.equalsIgnoreCase("mt6763t")) {
                return new ChipProperties(str, BitrateAdjustmentType.NO_ADJUSTMENT, false, i, i, 21);
            }
            if (Arrays.asList(MTK_NO_ADJUSTMENT_MODELS).contains(Build.MODEL)) {
                return new ChipProperties(str, BitrateAdjustmentType.NO_ADJUSTMENT, false, i, i, 21);
            }
            if (str2.equalsIgnoreCase("mt6735")) {
                return new ChipProperties(str, BitrateAdjustmentType.ACTUAL_FRAMERATE_ADJUSTMENT, false, i, i, Integer.MAX_VALUE);
            }
            return new ChipProperties(str, BitrateAdjustmentType.ACTUAL_FRAMERATE_ADJUSTMENT, false, i, i, 21);
        }
        if (str.startsWith("OMX.Exynos.")) {
            if (Build.MODEL.equalsIgnoreCase("MX4 Pro")) {
                return new ChipProperties(str, BitrateAdjustmentType.ACTUAL_FRAMERATE_ADJUSTMENT, false, i, i, Integer.MAX_VALUE);
            }
            return new ChipProperties(str, BitrateAdjustmentType.FRAMERATE_ADJUSTMENT, false, 30, 30, 21);
        }
        if (str.startsWith("OMX.IMG.TOPAZ.")) {
            if (Build.HARDWARE.equalsIgnoreCase("hi6250")) {
                return new ChipProperties(str, BitrateAdjustmentType.ACTUAL_FRAMERATE_ADJUSTMENT, false, i, i, Integer.MAX_VALUE);
            }
            return new ChipProperties(str, BitrateAdjustmentType.FRAMERATE_ADJUSTMENT, false, 30, 30, Integer.MAX_VALUE);
        }
        if (str.startsWith("OMX.hisi.")) {
            return new ChipProperties(str, BitrateAdjustmentType.ACTUAL_FRAMERATE_ADJUSTMENT, false, i, i, Integer.MAX_VALUE);
        }
        if (str.startsWith("OMX.k3.")) {
            return new ChipProperties(str, BitrateAdjustmentType.FRAMERATE_ADJUSTMENT, false, 30, 30, 21);
        }
        if (str.startsWith("OMX.amlogic.")) {
            Logging.i(TAG, "getChipProperties for amlogic");
            return new ChipProperties(str, BitrateAdjustmentType.FRAMERATE_ADJUSTMENT, false, 30, 30, Integer.MAX_VALUE);
        }
        if (str.startsWith("OMX.rk.")) {
            return new ChipProperties(str, BitrateAdjustmentType.FRAMERATE_ADJUSTMENT, false, 30, 30, Integer.MAX_VALUE);
        }
        Logging.i(TAG, "getChipProperties from unsupported chip list");
        return new ChipProperties(str, BitrateAdjustmentType.NO_ADJUSTMENT, false, i, i, 23);
    }

    private int convertBitRate(int i, int i2) {
        ChipProperties chipProperties = this.chipProperties;
        if (chipProperties.bitrateAdjustmentType != BitrateAdjustmentType.FRAMERATE_ADJUSTMENT) {
            return chipProperties.chipName.startsWith("OMX.qcom.") ? i * KBPS_TO_BPS_FACTOR_QCOM : i * 900;
        }
        if (chipProperties.chipName.startsWith("OMX.rk.")) {
            return ((i * 1000) * this.chipProperties.baseFrameRate) / i2;
        }
        return ((i * 900) * this.chipProperties.baseFrameRate) / i2;
    }

    private int setRates(int i, int i2) {
        int i3;
        checkOnMediaCodecThread();
        Logging.d(TAG, "Bwe setRates: " + i + " Kbps");
        boolean z = i2 > 0 && i2 != this.lastSetFps;
        if (i2 <= 0) {
            i2 = this.lastSetFps;
        }
        this.lastSetFps = i2;
        int iConvertBitRate = convertBitRate(i, this.lastSetFps);
        if (z) {
            try {
                if (this.chipProperties.bitrateAdjustmentType == BitrateAdjustmentType.ACTUAL_FRAMERATE_ADJUSTMENT) {
                    this.converted_bps = iConvertBitRate;
                    return 0;
                }
            } catch (IllegalStateException e) {
                Logging.e(TAG, "setRates failed", e);
                return 0;
            }
        }
        if (iConvertBitRate > this.converted_bps) {
            this.converted_bps = iConvertBitRate;
            Bundle bundle = new Bundle();
            bundle.putInt("video-bitrate", this.converted_bps);
            this.mediaCodec.setParameters(bundle);
            Logging.i(TAG, "setRates up to : " + this.converted_bps + " bps(converted) " + this.lastSetFps + " fps");
            return 1;
        }
        if (this.chipProperties.chipName.startsWith("OMX.qcom.")) {
            i3 = (!this.qcomExceptionModel && this.converted_bps <= 200000) ? 15000 : 25000;
        } else {
            i3 = 0;
        }
        if (iConvertBitRate < this.converted_bps - i3) {
            this.converted_bps = iConvertBitRate;
            if (this.chipProperties.isNeedResetWhenDownBps) {
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                if (jElapsedRealtime - this.lastResetForQcomTimeMs < 2000) {
                    return 2;
                }
                this.lastResetForQcomTimeMs = jElapsedRealtime;
                return 0;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putInt("video-bitrate", this.converted_bps);
            this.mediaCodec.setParameters(bundle2);
            Logging.i(TAG, "setRates down to : " + this.converted_bps + " bps(converted) " + this.lastSetFps + " fps");
        }
        return 1;
    }

    int dequeueInputBuffer() {
        checkOnMediaCodecThread();
        try {
            return this.mediaCodec.dequeueInputBuffer(0L);
        } catch (IllegalStateException e) {
            Logging.e(TAG, "dequeueIntputBuffer failed", e);
            return -2;
        }
    }

    static class OutputBufferInfo {
        public final ByteBuffer buffer;
        public final int index;
        public final boolean isKeyFrame;
        public final long presentationTimestampUs;
        public final int size;

        public OutputBufferInfo(int i, ByteBuffer byteBuffer, boolean z, long j, int i2) {
            this.index = i;
            this.buffer = byteBuffer;
            this.isKeyFrame = z;
            this.presentationTimestampUs = j;
            this.size = i2;
        }
    }

    OutputBufferInfo dequeueOutputBuffer() {
        checkOnMediaCodecThread();
        try {
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int iDequeueOutputBuffer = this.mediaCodec.dequeueOutputBuffer(bufferInfo, 0L);
            boolean z = true;
            if (iDequeueOutputBuffer >= 0) {
                if ((bufferInfo.flags & 2) != 0) {
                    Logging.d(TAG, "Config frame generated. Offset: " + bufferInfo.offset + ". Size: " + bufferInfo.size);
                    this.configData = ByteBuffer.allocateDirect(bufferInfo.size);
                    this.outputBuffers[iDequeueOutputBuffer].position(bufferInfo.offset);
                    this.outputBuffers[iDequeueOutputBuffer].limit(bufferInfo.offset + bufferInfo.size);
                    this.configData.put(this.outputBuffers[iDequeueOutputBuffer]);
                    this.mediaCodec.releaseOutputBuffer(iDequeueOutputBuffer, false);
                    iDequeueOutputBuffer = this.mediaCodec.dequeueOutputBuffer(bufferInfo, 0L);
                }
            }
            int i = iDequeueOutputBuffer;
            if (i < 0) {
                if (i == -3) {
                    this.outputBuffers = this.mediaCodec.getOutputBuffers();
                    return dequeueOutputBuffer();
                }
                if (i == -2) {
                    return dequeueOutputBuffer();
                }
                if (i == -1) {
                    return null;
                }
                throw new RuntimeException("dequeueOutputBuffer: " + i);
            }
            ByteBuffer byteBufferDuplicate = this.outputBuffers[i].duplicate();
            byteBufferDuplicate.position(bufferInfo.offset);
            byteBufferDuplicate.limit(bufferInfo.offset + bufferInfo.size);
            if ((bufferInfo.flags & 1) == 0) {
                z = false;
            }
            if (z) {
                Logging.d(TAG, "Sync frame generated");
            }
            if (z && this.type == VideoCodecType.VIDEO_CODEC_H264) {
                Logging.d(TAG, "Appending config frame of size " + this.configData.capacity() + " to output buffer with offset " + bufferInfo.offset + ", size " + bufferInfo.size);
                ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(this.configData.capacity() + bufferInfo.size);
                this.configData.rewind();
                byteBufferAllocateDirect.put(this.configData);
                byteBufferAllocateDirect.put(byteBufferDuplicate);
                byteBufferAllocateDirect.position(0);
                return new OutputBufferInfo(i, byteBufferAllocateDirect, z, bufferInfo.presentationTimeUs, bufferInfo.size + this.configData.capacity());
            }
            return new OutputBufferInfo(i, byteBufferDuplicate.slice(), z, bufferInfo.presentationTimeUs, bufferInfo.size);
        } catch (IllegalStateException e) {
            Logging.e(TAG, "dequeueOutputBuffer failed", e);
            return new OutputBufferInfo(-1, null, false, -1L, 0);
        }
    }

    boolean releaseOutputBuffer(int i) {
        checkOnMediaCodecThread();
        try {
            this.mediaCodec.releaseOutputBuffer(i, false);
            return true;
        } catch (IllegalStateException e) {
            Logging.e(TAG, "releaseOutputBuffer failed", e);
            return false;
        }
    }

    void dumpIntoFile(OutputBufferInfo outputBufferInfo) throws IOException {
        if (this.fos == null) {
            try {
                this.fos = new FileOutputStream(String.format("/sdcard/java_dump_video_%d_%d.h264", Integer.valueOf(this.width), Integer.valueOf(this.height)), true);
            } catch (Exception unused) {
                Logging.i(TAG, "dumpIntoFile: failed to open java_dump_video.h264");
                return;
            }
        }
        if (outputBufferInfo == null || outputBufferInfo.index < 0) {
            return;
        }
        Logging.i(TAG, "Dump nal: " + outputBufferInfo.buffer);
        try {
            byte[] bArr = new byte[outputBufferInfo.buffer.remaining()];
            outputBufferInfo.buffer.get(bArr);
            this.fos.write(bArr, 0, outputBufferInfo.size);
        } catch (Exception e) {
            Logging.e(TAG, "Run: 4.1 Exception ", e);
        }
    }
}
