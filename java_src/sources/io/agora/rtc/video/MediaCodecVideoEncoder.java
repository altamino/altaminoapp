package io.agora.rtc.video;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Matrix;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;
import android.util.Range;
import android.view.Surface;
import com.google.android.gms.common.Scopes;
import io.agora.rtc.gl.EglBase;
import io.agora.rtc.gl.EglBase10;
import io.agora.rtc.gl.EglBase14;
import io.agora.rtc.gl.GlRectDrawer;
import io.agora.rtc.internal.Logging;
import io.agora.rtc.utils.ThreadUtils;
import java.io.FileOutputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import javax.microedition.khronos.egl.EGLContext;

/* JADX INFO: loaded from: classes5.dex */
@TargetApi(19)
public class MediaCodecVideoEncoder {
    private static final int BASE_FRAME_RATE_FOR_AMLOGIC = 30;
    private static final int BASE_FRAME_RATE_FOR_EXYNOS = 30;
    private static final int BASE_FRAME_RATE_FOR_HIS_HISI = 30;
    private static final int BASE_FRAME_RATE_FOR_HIS_K3 = 30;
    private static final int BASE_FRAME_RATE_FOR_HIS_TOPAZ = 30;
    private static final int BASE_FRAME_RATE_FOR_MTK = 30;
    private static final int DEQUEUE_TIMEOUT = 0;
    private static final boolean ENABLE_VERBOSE_LOG = false;
    private static final String H264_MIME_TYPE = "video/avc";
    private static final String H265_MIME_TYPE = "video/hevc";
    private static final int INT_INTERVAL_UPPER_LIMIT = 100;
    private static final int INT_SETTING_INTERVAL_VALUE = 10;
    private static final int KBPS_TO_BPS_FACTOR = 900;
    private static final int KBPS_TO_BPS_FACTOR_QCOM = 950;
    private static final int MEDIA_CODEC_RELEASE_TIMEOUT_MS = 3000;
    private static final String TAG = "MediaCodecVideoEncoder";
    private static final int VIDEO_ControlRateConstant = 2;
    private static final int VIDEO_ControlRateVariable = 1;
    private static final String VP8_MIME_TYPE = "video/x-vnd.on2.vp8";
    private static final String VP9_MIME_TYPE = "video/x-vnd.on2.vp9";
    private static int codecErrors;
    private static MediaCodecVideoEncoderErrorCallback errorCallback;
    private static MediaCodecVideoEncoder runningInstance;
    private int SDKVer;
    private MediaCodecEncoderCallback asyncEncoderCallback;
    private Handler asyncEncoderHandler;
    private HandlerThread asyncHandlerThread;
    private int bitrateAdjustmentType;
    private String codecName;
    private int colorFormat;
    private int converted_bps;
    private String cpuModel;
    private String deviceModel;
    private GlRectDrawer drawer;
    private EglBase eglBase;
    private int height;
    private Surface inputSurface;
    private int lastSetFps;
    private MediaCodec mediaCodec;
    private Thread mediaCodecThread;
    private long nativeHandle;

    @Deprecated
    private ByteBuffer[] outputBuffers;
    private int outputFrameRotation;
    private VideoCodecType type;
    private int width;
    private static Set<String> hwEncoderDisabledTypes = new HashSet();
    private static String codecOmxName = null;
    private static final String[] supportedVp8HwCodecPrefixes = {"OMX.qcom.", "OMX.Intel."};
    private static final String[] supportedVp9HwCodecPrefixes = {"OMX.qcom."};
    private static final String[] supportedH264HwCodecPrefixes = {"OMX.qcom.", "OMX.Exynos.", "OMX.MTK.", "OMX.IMG.TOPAZ.", "OMX.hisi.", "OMX.k3.", "OMX.amlogic.", "OMX.rk.", "OMX.MS."};
    private static final String[] supportedH265HwCodecPrefixes = {"OMX.qcom.", "OMX.Exynos.", "OMX.MTK.", "OMX.IMG.TOPAZ.", "OMX.hisi.", "OMX.k3.", "OMX.amlogic.", "OMX.rk."};
    private static final String[] H264_HW_EXCEPTION_MODELS = {"SAMSUNG-SGH-I337", "Nexus 7", "Nexus 4", "P6-C00", "HM 2A", "XT105", "XT109", "XT1060"};
    private static final String[] H264_HW_QCOM_EXCEPTION_MODELS = {"mi note lte", "redmi note 4x", "1605-a01", "aosp on hammerhead", "lm-x210", "oppo r9s"};
    private static final String[] MTK_NO_ADJUSTMENT_MODELS = {"vivo y83a", "vivo x21i", "vivo X21i A"};
    private static final String[] INTERVAL_HW_EXCEPTION_MODELS = {"vivo X21A", "MI 8", "MI 6"};
    private static final String[] H265_HW_EXCEPTION_MODELS = new String[0];
    private static final String[] H265_HW_EXCEPTION_HARDWARES = {"mt6771", "mt6762"};
    private static final int COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m = 2141391876;
    private static final int[] supportedColorList = {19, 21, 2141391872, COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m};
    private static final int[] supportedSurfaceColorList = {2130708361};
    private static int mH264SupportProfileHigh = 0;
    private final Matrix rotateMatrix = new Matrix();
    private boolean useAsyncMode = false;
    private boolean isInitialized = false;
    private final Object inputBufferLock = new Object();
    private final LinkedHashSet<Integer> availableInputIndexes = new LinkedHashSet<>();
    private ByteBuffer configData = null;
    private long lastKeyFrameTimeMs = 0;
    private int keyFrameIntervalInMsec = 0;
    private long lastResetForQcomTimeMs = 0;
    private boolean qcomExceptionModel = false;
    private int profile = 66;
    private int supportCodecs = 0;
    private int maxSupportedWidth = 32768;
    private int maxSupportedHeight = 32768;
    private int minSupportedWidth = 2;
    private int minSupportedHeight = 2;
    private int maxSupportedBitrate = 0;
    private int minSupportedBitrate = 0;
    private int widthAlignment = 16;
    private int heightAlignment = 4;
    private int memoryType = 0;
    private int bitrateMode = 2;
    private int settingMaxWidth = -1;
    private int settingMaxHeight = -1;
    private int settingMaxFPS = -1;
    private int settingHighProfile = -1;
    private int settingBitrateMode = -1;
    private int settingBitrateAdjustmentType = -1;
    private int settingBitrateBaseFPS = -1;
    private int settingBitrateFactor = -1;
    private int settingAdjustmentReset = -1;
    private String settingInitConfs = null;
    private String settingAdjustmentConfs = null;
    private int settingCodecParameterForExynos = -1;
    private ChipProperties chipProperties = null;
    private FileOutputStream fos = null;

    /* JADX INFO: renamed from: io.agora.rtc.video.MediaCodecVideoEncoder$1CaughtException, reason: invalid class name */
    class C1CaughtException {
        Exception e;

        C1CaughtException() {
        }
    }

    public enum BitrateAdjustmentType {
        NO_ADJUSTMENT,
        FRAMERATE_ADJUSTMENT,
        ACTUAL_FRAMERATE_ADJUSTMENT,
        DYNAMIC_ADJUSTMENT
    }

    public static class InitParameters {
        int bitrateKbps;
        int codec;
        boolean fallbackToBaselineProfile;
        int fps;
        int height;
        int init_fps;
        int keyInterval;
        int profile;
        EGLContext sharedEgl10Context;
        android.opengl.EGLContext sharedEgl14Context;
        boolean useAsyncMode;
        int width;

        public InitParameters(int codec, int width, int height, int bitrateKbps, int fps, int init_fps, int keyInterval, int profile, boolean fallbackToBaselineProfile, boolean useAsyncMode, android.opengl.EGLContext sharedEgl14Context, EGLContext sharedEgl10Context) {
            this.codec = codec;
            this.width = width;
            this.height = height;
            this.bitrateKbps = bitrateKbps;
            this.fps = fps;
            this.init_fps = init_fps;
            this.keyInterval = keyInterval;
            this.fallbackToBaselineProfile = fallbackToBaselineProfile;
            this.profile = profile;
            this.useAsyncMode = useAsyncMode;
            this.sharedEgl14Context = sharedEgl14Context;
            this.sharedEgl10Context = sharedEgl10Context;
        }

        final boolean useSurface() {
            return (this.sharedEgl14Context == null && this.sharedEgl10Context == null) ? false : true;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(VideoCodecType.values()[this.codec]);
            sb.append(" : " + this.width + " x " + this.height);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(" @ ");
            sb2.append(this.bitrateKbps);
            sb2.append(" Kbps,");
            sb.append(sb2.toString());
            sb.append(" Fps: ");
            sb.append(this.fps + ",");
            sb.append(" Key interval: " + this.keyInterval + "s,");
            sb.append(" Encode from texture : " + useSurface() + ",");
            sb.append(" Async mode: " + this.useAsyncMode + ".");
            return sb.toString();
        }
    }

    @TargetApi(21)
    private class MediaCodecEncoderCallback extends MediaCodec.Callback {
        boolean stale;

        private MediaCodecEncoderCallback() {
            this.stale = false;
        }

        @Override // android.media.MediaCodec.Callback
        public void onError(MediaCodec codec, MediaCodec.CodecException e) {
            Logging.e(MediaCodecVideoEncoder.TAG, "onError " + e);
        }

        @Override // android.media.MediaCodec.Callback
        public void onInputBufferAvailable(MediaCodec codec, int index) {
            if (MediaCodecVideoEncoder.this.isInitialized) {
                synchronized (MediaCodecVideoEncoder.this.inputBufferLock) {
                    try {
                        if (!this.stale) {
                            MediaCodecVideoEncoder.this.availableInputIndexes.add(Integer.valueOf(index));
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        @Override // android.media.MediaCodec.Callback
        public void onOutputBufferAvailable(MediaCodec codec, int index, MediaCodec.BufferInfo info) {
            if (!MediaCodecVideoEncoder.this.isInitialized) {
                Logging.w(MediaCodecVideoEncoder.TAG, "discarding output since encoder is released!");
                return;
            }
            try {
                ByteBuffer outputBuffer = MediaCodecVideoEncoder.this.mediaCodec.getOutputBuffer(index);
                if (outputBuffer == null) {
                    Logging.e(MediaCodecVideoEncoder.TAG, "failed to get output buffer, index: " + index);
                    return;
                }
                try {
                    if ((info.flags & 2) != 0) {
                        Logging.d(MediaCodecVideoEncoder.TAG, "[async] Config frame generated. Offset: " + info.offset + ". Size: " + info.size);
                        MediaCodecVideoEncoder.this.configData = ByteBuffer.allocateDirect(info.size);
                        MediaCodecVideoEncoder.this.configData.put(outputBuffer);
                    } else {
                        OutputBufferInfo outputBufferInfoCreateOutputBufferInfo = MediaCodecVideoEncoder.this.createOutputBufferInfo(info, index, outputBuffer);
                        MediaCodecVideoEncoder mediaCodecVideoEncoder = MediaCodecVideoEncoder.this;
                        mediaCodecVideoEncoder.onAsyncEncodeFrameResult(mediaCodecVideoEncoder.nativeHandle, true, outputBufferInfoCreateOutputBufferInfo);
                    }
                } catch (Exception e) {
                    Logging.e(MediaCodecVideoEncoder.TAG, "handle output buffer error", e);
                }
                MediaCodecVideoEncoder.this.mediaCodec.releaseOutputBuffer(index, false);
            } catch (IllegalStateException e2) {
                Logging.e(MediaCodecVideoEncoder.TAG, "getOutputBuffer exception, index: " + index, e2);
            }
        }

        @Override // android.media.MediaCodec.Callback
        public void onOutputFormatChanged(MediaCodec codec, MediaFormat format) {
            Logging.w(MediaCodecVideoEncoder.TAG, "onOutputFormatChanged " + format);
        }
    }

    public interface MediaCodecVideoEncoderErrorCallback {
        void onMediaCodecVideoEncoderCriticalError(int codecErrors);
    }

    public enum VideoCodecType {
        VIDEO_CODEC_VP8,
        VIDEO_CODEC_VP9,
        VIDEO_CODEC_H264,
        VIDEO_CODEC_H265
    }

    private static boolean checkMinSDKVersion(String chipName, boolean isTexture) {
        if (isTexture || chipName.startsWith("OMX.qcom.") || chipName.startsWith("OMX.MTK.") || chipName.startsWith("OMX.Exynos.") || chipName.startsWith("OMX.IMG.TOPAZ.")) {
            return true;
        }
        chipName.startsWith("OMX.k3.");
        return true;
    }

    private void checkOnMediaCodecThread() {
    }

    private static boolean isA50OrHigher() {
        return true;
    }

    public static boolean isAsyncModeSupported() {
        return false;
    }

    public static int isH264HwHighProfileSupported() {
        return mH264SupportProfileHigh;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public native void onAsyncEncodeFrameResult(long nativeHandle, boolean success, OutputBufferInfo outputBufferInfo);

    /* JADX INFO: Access modifiers changed from: private */
    public native void onAsyncInitEncoderResult(long nativeHandle, boolean success);

    /* JADX INFO: Access modifiers changed from: private */
    public native void onAsyncSetRatesResult(long nativeHandle, int ret);

    private int supportedEncoderConfig(int width, int height, int fps, int bitrate) {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0073 A[Catch: RuntimeException -> 0x006e, TryCatch #0 {RuntimeException -> 0x006e, blocks: (B:20:0x005a, B:22:0x0062, B:30:0x0089, B:37:0x00d5, B:39:0x0101, B:41:0x013a, B:40:0x011d, B:28:0x0073, B:29:0x0078), top: B:46:0x005a }] */
    boolean encodeTexture(final boolean isKeyframe, final int oesTextureId, final int textureType, final float[] transformationMatrix, final int textureWidth, final int textureHeight, final int actual_width, final int actual_height, final int rotation, final long presentationTimestampUs) {
        int i10;
        int i11;
        if (this.useAsyncMode && !isOnAsyncHandlerThread()) {
            Handler handler = this.asyncEncoderHandler;
            if (handler == null) {
                Logging.e(TAG, "encodeTexture: null async handler, not initialized?");
                return false;
            }
            handler.post(new Runnable() { // from class: io.agora.rtc.video.MediaCodecVideoEncoder.3
                @Override // java.lang.Runnable
                public void run() {
                    if (MediaCodecVideoEncoder.this.encodeTexture(isKeyframe, oesTextureId, textureType, transformationMatrix, textureWidth, textureHeight, actual_width, actual_height, rotation, presentationTimestampUs)) {
                        return;
                    }
                    MediaCodecVideoEncoder mediaCodecVideoEncoder = MediaCodecVideoEncoder.this;
                    mediaCodecVideoEncoder.onAsyncEncodeFrameResult(mediaCodecVideoEncoder.nativeHandle, false, null);
                }
            });
            return true;
        }
        if (!this.isInitialized) {
            Logging.e(TAG, "encodeTexture: encoder is not initialized!");
            return false;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.lastKeyFrameTimeMs == 0) {
            this.lastKeyFrameTimeMs = jElapsedRealtime;
        }
        if (isKeyframe) {
            if (isKeyframe) {
                Logging.i(TAG, "Sync frame request");
            }
            Bundle bundle = new Bundle();
            bundle.putInt("request-sync", 0);
            this.mediaCodec.setParameters(bundle);
            this.lastKeyFrameTimeMs = jElapsedRealtime;
        } else {
            try {
                if (this.chipProperties.bitrateAdjustmentType != BitrateAdjustmentType.ACTUAL_FRAMERATE_ADJUSTMENT && jElapsedRealtime - this.lastKeyFrameTimeMs >= this.keyFrameIntervalInMsec) {
                    if (isKeyframe) {
                        Logging.i(TAG, "Sync frame request");
                    }
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("request-sync", 0);
                    this.mediaCodec.setParameters(bundle2);
                    this.lastKeyFrameTimeMs = jElapsedRealtime;
                }
            } catch (RuntimeException e) {
                Logging.e(TAG, "encodeTexture failed", e);
                return false;
            }
        }
        Logging.d(TAG, "enter encodeTexture:" + textureWidth + "x" + textureHeight + "->" + this.width + "x" + this.height);
        this.eglBase.makeCurrent();
        GLES20.glClear(16384);
        if (rotation == 90 || rotation == 270) {
            i10 = textureWidth;
            i11 = textureHeight;
        } else {
            i11 = textureWidth;
            i10 = textureHeight;
        }
        this.rotateMatrix.reset();
        this.rotateMatrix.preTranslate(0.5f, 0.5f);
        this.rotateMatrix.preRotate(rotation);
        this.rotateMatrix.preTranslate(-0.5f, -0.5f);
        Matrix matrixConvertMatrixToAndroidGraphicsMatrix = io.agora.rtc.gl.RendererCommon.convertMatrixToAndroidGraphicsMatrix(transformationMatrix);
        matrixConvertMatrixToAndroidGraphicsMatrix.preConcat(this.rotateMatrix);
        float[] fArrConvertMatrixFromAndroidGraphicsMatrix = io.agora.rtc.gl.RendererCommon.convertMatrixFromAndroidGraphicsMatrix(matrixConvertMatrixToAndroidGraphicsMatrix);
        if (textureType == 10) {
            this.memoryType = 10;
            this.drawer.drawRgb(oesTextureId, fArrConvertMatrixFromAndroidGraphicsMatrix, i11, i10, 0, 0, this.width, this.height, actual_width, actual_height);
        } else {
            this.memoryType = 11;
            this.drawer.drawOes(oesTextureId, fArrConvertMatrixFromAndroidGraphicsMatrix, i11, i10, 0, 0, this.width, this.height, actual_width, actual_height);
        }
        this.outputFrameRotation = 0;
        this.eglBase.swapBuffers();
        this.eglBase.detachCurrent();
        return true;
    }

    int getOutputFrameRotation() {
        return this.outputFrameRotation;
    }

    @Deprecated
    boolean releaseOutputBuffer(int index) {
        try {
            this.mediaCodec.releaseOutputBuffer(index, false);
            return true;
        } catch (IllegalStateException e) {
            Logging.e(TAG, "releaseOutputBuffer failed", e);
            return false;
        }
    }

    private static class ChipProperties {
        public int baseFrameRate;
        public BitrateAdjustmentType bitrateAdjustmentType;
        public String chipName;
        public int highProfileMinSdkVersion;
        public int initFrameRate;
        public boolean isNeedResetWhenDownBps;

        ChipProperties(String chipName, BitrateAdjustmentType bitrateAdjustmentType, boolean isNeedResetWhenDownBps, int baseFrameRate, int initFrameRate, int highProfileMinSdkVersion) {
            this.chipName = chipName;
            this.bitrateAdjustmentType = bitrateAdjustmentType;
            this.isNeedResetWhenDownBps = isNeedResetWhenDownBps;
            this.baseFrameRate = baseFrameRate;
            this.initFrameRate = initFrameRate;
            this.highProfileMinSdkVersion = highProfileMinSdkVersion;
        }
    }

    private static class EncoderProperties {
        public final String codecName;
        public final int colorFormat;
        public final boolean supportedList;

        public EncoderProperties(String codecName, int colorFormat, boolean supportedList) {
            this.codecName = codecName;
            this.colorFormat = colorFormat;
            this.supportedList = supportedList;
        }
    }

    static class InputBufferInfo {
        public final ByteBuffer buffer;
        public final int index;

        public InputBufferInfo(int index, ByteBuffer buffer) {
            this.index = index;
            this.buffer = buffer;
        }
    }

    static class OutputBufferInfo {
        public final ByteBuffer buffer;
        public final int index;
        public final boolean isKeyFrame;
        public final long presentationTimestampUs;
        public final int size;

        public OutputBufferInfo(int index, ByteBuffer buffer, boolean isKeyFrame, long presentationTimestampUs, int size) {
            this.index = index;
            this.buffer = buffer;
            this.isKeyFrame = isKeyFrame;
            this.presentationTimestampUs = presentationTimestampUs;
            this.size = size;
        }
    }

    private int convertBitRate(int Kbps, int fps) {
        ChipProperties chipProperties = this.chipProperties;
        if (chipProperties.bitrateAdjustmentType == BitrateAdjustmentType.FRAMERATE_ADJUSTMENT) {
            Kbps = (Kbps * chipProperties.baseFrameRate) / fps;
        }
        int i10 = this.settingBitrateFactor;
        if (i10 <= 0) {
            if (chipProperties.chipName.startsWith("OMX.rk.") || this.type == VideoCodecType.VIDEO_CODEC_H265) {
                i10 = 1000;
            } else {
                i10 = this.chipProperties.chipName.startsWith("OMX.qcom.") ? KBPS_TO_BPS_FACTOR_QCOM : 900;
            }
        }
        return i10 * Kbps;
    }

    @SuppressLint({"NewApi"})
    private boolean createEncoder(InitParameters initParams) throws RuntimeException {
        EncoderProperties encoderPropertiesFindHwEncoder;
        String str;
        Logging.i(TAG, "Java initEncode: " + initParams.toString());
        int i10 = initParams.width;
        this.width = i10;
        int i11 = initParams.height;
        this.height = i11;
        if (i10 < this.minSupportedWidth || i11 < this.minSupportedHeight) {
            Logging.w(TAG, "Not supported size:" + this.width + "x" + this.height);
            return false;
        }
        if (this.mediaCodecThread != null) {
            throw new RuntimeException("Forgot to release()?");
        }
        if (initParams.fps < 1) {
            initParams.fps = 1;
        }
        if (initParams.keyInterval < 1) {
            initParams.keyInterval = 1;
        }
        this.lastSetFps = initParams.fps;
        this.keyFrameIntervalInMsec = initParams.keyInterval * 1000;
        this.lastKeyFrameTimeMs = 0L;
        this.lastResetForQcomTimeMs = SystemClock.elapsedRealtime();
        VideoCodecType videoCodecType = VideoCodecType.values()[initParams.codec];
        this.type = videoCodecType;
        if (videoCodecType == VideoCodecType.VIDEO_CODEC_VP8) {
            str = "video/x-vnd.on2.vp8";
            encoderPropertiesFindHwEncoder = findHwEncoder("video/x-vnd.on2.vp8", supportedVp8HwCodecPrefixes, initParams.useSurface() ? supportedSurfaceColorList : supportedColorList);
        } else if (videoCodecType == VideoCodecType.VIDEO_CODEC_VP9) {
            str = "video/x-vnd.on2.vp9";
            encoderPropertiesFindHwEncoder = findHwEncoder("video/x-vnd.on2.vp9", supportedH264HwCodecPrefixes, initParams.useSurface() ? supportedSurfaceColorList : supportedColorList);
        } else if (videoCodecType == VideoCodecType.VIDEO_CODEC_H264) {
            str = "video/avc";
            encoderPropertiesFindHwEncoder = findHwEncoder("video/avc", supportedH264HwCodecPrefixes, initParams.useSurface() ? supportedSurfaceColorList : supportedColorList);
        } else if (videoCodecType == VideoCodecType.VIDEO_CODEC_H265) {
            str = "video/hevc";
            encoderPropertiesFindHwEncoder = findHwEncoder("video/hevc", supportedH265HwCodecPrefixes, initParams.useSurface() ? supportedSurfaceColorList : supportedColorList);
        } else {
            encoderPropertiesFindHwEncoder = null;
            str = null;
        }
        if (encoderPropertiesFindHwEncoder == null) {
            throw new RuntimeException("Can not find HW encoder for " + this.type);
        }
        runningInstance = this;
        ChipProperties chipProperties = getChipProperties(encoderPropertiesFindHwEncoder.codecName, initParams.fps);
        this.chipProperties = chipProperties;
        if (this.settingBitrateAdjustmentType > 0) {
            chipProperties.bitrateAdjustmentType = BitrateAdjustmentType.values()[this.settingBitrateAdjustmentType];
        }
        int i12 = this.settingBitrateBaseFPS;
        if (i12 > 0) {
            ChipProperties chipProperties2 = this.chipProperties;
            chipProperties2.baseFrameRate = i12;
            chipProperties2.initFrameRate = i12;
        }
        this.converted_bps = convertBitRate(initParams.bitrateKbps, initParams.fps);
        this.mediaCodecThread = Thread.currentThread();
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat(str, this.width, this.height);
        if ((this.settingHighProfile > 0 || Build.VERSION.SDK_INT >= this.chipProperties.highProfileMinSdkVersion) && initParams.profile == 100) {
            Logging.i(TAG, "Set high profile and level");
            VideoCodecType videoCodecType2 = this.type;
            if (videoCodecType2 == VideoCodecType.VIDEO_CODEC_H264) {
                mediaFormatCreateVideoFormat.setInteger(Scopes.PROFILE, 8);
                mediaFormatCreateVideoFormat.setInteger("level", 512);
            } else if (videoCodecType2 == VideoCodecType.VIDEO_CODEC_H265) {
                mediaFormatCreateVideoFormat.setInteger(Scopes.PROFILE, 1);
                mediaFormatCreateVideoFormat.setInteger("level", 256);
            }
            this.profile = 100;
        } else {
            this.profile = 66;
        }
        mediaFormatCreateVideoFormat.setInteger("bitrate", this.converted_bps);
        int i13 = this.settingBitrateMode;
        if (i13 > 0) {
            this.bitrateMode = i13;
        } else if (encoderPropertiesFindHwEncoder.codecName.startsWith("OMX.rk.") || this.type == VideoCodecType.VIDEO_CODEC_H265) {
            this.bitrateMode = 2;
        } else if (!this.qcomExceptionModel) {
            this.bitrateMode = 1;
        }
        mediaFormatCreateVideoFormat.setInteger("bitrate-mode", this.bitrateMode);
        mediaFormatCreateVideoFormat.setInteger("color-format", encoderPropertiesFindHwEncoder.colorFormat);
        ChipProperties chipProperties3 = this.chipProperties;
        if (chipProperties3.bitrateAdjustmentType == BitrateAdjustmentType.NO_ADJUSTMENT) {
            mediaFormatCreateVideoFormat.setInteger("frame-rate", initParams.init_fps);
        } else {
            mediaFormatCreateVideoFormat.setInteger("frame-rate", chipProperties3.initFrameRate);
        }
        List listAsList = Arrays.asList(INTERVAL_HW_EXCEPTION_MODELS);
        String str2 = Build.MODEL;
        if (listAsList.contains(str2) && initParams.keyInterval >= 100) {
            Logging.i(TAG, "keyInterval: " + initParams.keyInterval);
            Logging.i(TAG, "Model: " + str2 + " ,need to modify interval.");
            initParams.keyInterval = 10;
        }
        if (this.chipProperties.bitrateAdjustmentType == BitrateAdjustmentType.ACTUAL_FRAMERATE_ADJUSTMENT) {
            mediaFormatCreateVideoFormat.setInteger("i-frame-interval", initParams.keyInterval);
        } else {
            mediaFormatCreateVideoFormat.setInteger("i-frame-interval", initParams.keyInterval + 1);
        }
        Logging.d(TAG, "  Format: " + mediaFormatCreateVideoFormat);
        MediaCodec mediaCodecCreateByCodecName = createByCodecName(encoderPropertiesFindHwEncoder.codecName);
        this.mediaCodec = mediaCodecCreateByCodecName;
        if (mediaCodecCreateByCodecName == null) {
            throw new RuntimeException("Can not create media encoder");
        }
        if (this.useAsyncMode) {
            MediaCodecEncoderCallback mediaCodecEncoderCallback = new MediaCodecEncoderCallback();
            this.asyncEncoderCallback = mediaCodecEncoderCallback;
            this.mediaCodec.setCallback(mediaCodecEncoderCallback, new Handler(this.asyncHandlerThread.getLooper()));
        }
        this.mediaCodec.configure(mediaFormatCreateVideoFormat, (Surface) null, (MediaCrypto) null, 1);
        this.codecName = encoderPropertiesFindHwEncoder.codecName;
        Logging.i(TAG, "codecName: " + this.codecName);
        this.colorFormat = encoderPropertiesFindHwEncoder.colorFormat;
        if (initParams.useSurface()) {
            this.memoryType = 11;
        } else {
            this.memoryType = 0;
        }
        this.bitrateAdjustmentType = this.chipProperties.bitrateAdjustmentType.ordinal();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public OutputBufferInfo createOutputBufferInfo(MediaCodec.BufferInfo info, int index, ByteBuffer outputBuffer) {
        VideoCodecType videoCodecType;
        outputBuffer.position(info.offset);
        outputBuffer.limit(info.offset + info.size);
        boolean z6 = (info.flags & 1) != 0;
        if (z6) {
            Logging.d(TAG, "Sync frame generated");
        }
        if (!z6 || ((videoCodecType = this.type) != VideoCodecType.VIDEO_CODEC_H264 && videoCodecType != VideoCodecType.VIDEO_CODEC_H265)) {
            return new OutputBufferInfo(index, outputBuffer.slice(), z6, info.presentationTimeUs, info.size);
        }
        Logging.d(TAG, "Appending config frame of size " + this.configData.capacity() + " to output buffer with offset " + info.offset + ", size " + info.size);
        ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(this.configData.capacity() + info.size);
        this.configData.rewind();
        byteBufferAllocateDirect.put(this.configData);
        byteBufferAllocateDirect.put(outputBuffer);
        byteBufferAllocateDirect.position(0);
        return new OutputBufferInfo(index, byteBufferAllocateDirect, z6, info.presentationTimeUs, info.size + this.configData.capacity());
    }

    public static void disableH264HwCodec() {
        Logging.w(TAG, "H.264 encoding is disabled by application.");
        hwEncoderDisabledTypes.add("video/avc");
    }

    public static void disableH265HwCodec() {
        Logging.w(TAG, "H.265 encoding is disabled by application.");
        hwEncoderDisabledTypes.add("video/hevc");
    }

    public static void disableVp8HwCodec() {
        Logging.w(TAG, "VP8 encoding is disabled by application.");
        hwEncoderDisabledTypes.add("video/x-vnd.on2.vp8");
    }

    public static void disableVp9HwCodec() {
        Logging.w(TAG, "VP9 encoding is disabled by application.");
        hwEncoderDisabledTypes.add("video/x-vnd.on2.vp9");
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00b5  */
    /* JADX WARN: Multi-variable type inference failed */
    private static EncoderProperties do_findHwEncoder(String str, String[] strArr, int[] iArr) {
        String name;
        boolean z6;
        int i10 = 0;
        int i11 = 2130708361;
        boolean z10 = true;
        boolean z11 = iArr[0] == 2130708361;
        StringBuilder sb = new StringBuilder();
        sb.append("Model: ");
        String str2 = Build.MODEL;
        sb.append(str2);
        Logging.i(TAG, sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("hardware: ");
        String str3 = Build.HARDWARE;
        sb2.append(str3);
        Logging.i(TAG, sb2.toString());
        EncoderProperties encoderProperties = null;
        if (str.equals("video/avc")) {
            if (Arrays.asList(H264_HW_EXCEPTION_MODELS).contains(str2)) {
                Logging.w(TAG, "Model: " + str2 + " has black listed H.264 encoder.");
                return null;
            }
            if (str3.equalsIgnoreCase("kirin970") && !z11) {
                return null;
            }
        } else if (str.equals("video/hevc") && Arrays.asList(H265_HW_EXCEPTION_HARDWARES).contains(str3)) {
            Logging.w(TAG, "Hardware: " + str3 + " has black listed H.265 encoder.");
            return null;
        }
        int i12 = 0;
        while (i12 < MediaCodecList.getCodecCount()) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i12);
            if (codecInfoAt.isEncoder()) {
                String[] supportedTypes = codecInfoAt.getSupportedTypes();
                int length = supportedTypes.length;
                int i13 = i10;
                while (true) {
                    if (i13 >= length) {
                        name = encoderProperties;
                        break;
                    }
                    if (supportedTypes[i13].equals(str)) {
                        name = codecInfoAt.getName();
                        break;
                    }
                    i13++;
                }
                if (name != 0) {
                    if (checkMinSDKVersion(name, z11)) {
                        Logging.i(TAG, "Found candidate encoder " + name);
                        if (name.startsWith("OMX.") || z11) {
                            codecOmxName = name;
                            MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(str);
                            if (str.equals("video/avc")) {
                                MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr = capabilitiesForType.profileLevels;
                                int length2 = codecProfileLevelArr.length;
                                for (int i14 = i10; i14 < length2; i14++) {
                                    if (codecProfileLevelArr[i14].profile == 8) {
                                        mH264SupportProfileHigh = z10 ? 1 : 0;
                                    }
                                }
                            }
                            char c7 = 19;
                            if (name.startsWith("OMX.amlogic.")) {
                                return z11 ? new EncoderProperties(name, i11, z10) : new EncoderProperties(name, 19, z10);
                            }
                            int[] iArr2 = capabilitiesForType.colorFormats;
                            int length3 = iArr2.length;
                            int i15 = 0;
                            boolean z12 = false;
                            while (i15 < length3) {
                                int i16 = iArr2[i15];
                                if (21 == i16) {
                                    z12 = z10;
                                }
                                Logging.d(TAG, "   Color: 0x" + Integer.toHexString(i16));
                                i15++;
                                z10 = true;
                            }
                            int length4 = iArr.length;
                            int i17 = 0;
                            while (i17 < length4) {
                                int i18 = iArr[i17];
                                int[] iArr3 = capabilitiesForType.colorFormats;
                                int length5 = iArr3.length;
                                int i19 = 0;
                                while (i19 < length5) {
                                    int i20 = iArr3[i19];
                                    if (i20 == i18) {
                                        if (i20 != 19 || !z12 || (!name.startsWith("OMX.IMG.TOPAZ.") && !name.startsWith("OMX.hisi.") && !name.startsWith("OMX.k3."))) {
                                            Logging.i(TAG, "Found target encoder for mime " + str + " : " + name + ". Color: 0x" + Integer.toHexString(i20));
                                            return new EncoderProperties(name, i20, true);
                                        }
                                        Logging.i(TAG, "TOPAZ,force use COLOR_FormatYUV420SemiPlanar");
                                        Logging.i(TAG, "Found target encoder for mime " + str + " : " + name + ". Color: 0x" + Integer.toHexString(21));
                                        return new EncoderProperties(name, 21, true);
                                    }
                                    i19++;
                                    c7 = 19;
                                }
                                i17++;
                                c7 = c7;
                            }
                            z6 = true;
                        }
                    } else {
                        Logging.e(TAG, "Check min sdk version failed, " + name);
                    }
                    z6 = z10 ? 1 : 0;
                } else {
                    z6 = z10 ? 1 : 0;
                }
            } else {
                z6 = z10 ? 1 : 0;
            }
            i12++;
            z10 = z6;
            i10 = 0;
            i11 = 2130708361;
            encoderProperties = null;
        }
        return encoderProperties;
    }

    private ChipProperties getChipProperties(String chipName, int fps) {
        if (chipName.startsWith("OMX.qcom.")) {
            List listAsList = Arrays.asList(H264_HW_QCOM_EXCEPTION_MODELS);
            String str = Build.MODEL;
            if (!listAsList.contains(str.toLowerCase())) {
                this.qcomExceptionModel = false;
                return new ChipProperties(chipName, BitrateAdjustmentType.NO_ADJUSTMENT, false, fps, fps, 21);
            }
            Logging.w(TAG, "Qcom Exception Model: " + str);
            this.qcomExceptionModel = true;
            return new ChipProperties(chipName, BitrateAdjustmentType.NO_ADJUSTMENT, true, fps, fps, 21);
        }
        if (chipName.startsWith("OMX.MTK.")) {
            String str2 = Build.HARDWARE;
            Logging.i(TAG, "MTK hardware: " + str2);
            if (str2.equalsIgnoreCase("mt6763") || str2.equalsIgnoreCase("mt6763t")) {
                return new ChipProperties(chipName, BitrateAdjustmentType.NO_ADJUSTMENT, false, fps, fps, 21);
            }
            if (Arrays.asList(MTK_NO_ADJUSTMENT_MODELS).contains(Build.MODEL)) {
                return new ChipProperties(chipName, BitrateAdjustmentType.NO_ADJUSTMENT, false, fps, fps, 21);
            }
            return str2.equalsIgnoreCase("mt6735") ? new ChipProperties(chipName, BitrateAdjustmentType.ACTUAL_FRAMERATE_ADJUSTMENT, false, fps, fps, Integer.MAX_VALUE) : new ChipProperties(chipName, BitrateAdjustmentType.ACTUAL_FRAMERATE_ADJUSTMENT, false, fps, fps, 21);
        }
        if (chipName.startsWith("OMX.Exynos.")) {
            String str3 = Build.MODEL;
            if (str3.equalsIgnoreCase("MX4 Pro")) {
                return new ChipProperties(chipName, BitrateAdjustmentType.ACTUAL_FRAMERATE_ADJUSTMENT, false, fps, fps, Integer.MAX_VALUE);
            }
            if (Build.MANUFACTURER.equalsIgnoreCase("vivo") && str3.equalsIgnoreCase("V1938CT")) {
                return new ChipProperties(chipName, BitrateAdjustmentType.ACTUAL_FRAMERATE_ADJUSTMENT, false, fps, fps, 21);
            }
            return (this.settingCodecParameterForExynos <= 0 || Build.VERSION.SDK_INT <= 28) ? new ChipProperties(chipName, BitrateAdjustmentType.FRAMERATE_ADJUSTMENT, false, 30, 30, 21) : new ChipProperties(chipName, BitrateAdjustmentType.ACTUAL_FRAMERATE_ADJUSTMENT, false, fps, fps, 21);
        }
        if (chipName.startsWith("OMX.IMG.TOPAZ.")) {
            return Build.HARDWARE.equalsIgnoreCase("hi6250") ? new ChipProperties(chipName, BitrateAdjustmentType.ACTUAL_FRAMERATE_ADJUSTMENT, false, fps, fps, Integer.MAX_VALUE) : new ChipProperties(chipName, BitrateAdjustmentType.FRAMERATE_ADJUSTMENT, false, 30, 30, Integer.MAX_VALUE);
        }
        if (chipName.startsWith("OMX.hisi.")) {
            return new ChipProperties(chipName, BitrateAdjustmentType.ACTUAL_FRAMERATE_ADJUSTMENT, false, fps, fps, Integer.MAX_VALUE);
        }
        if (chipName.startsWith("OMX.k3.")) {
            return new ChipProperties(chipName, BitrateAdjustmentType.FRAMERATE_ADJUSTMENT, false, 30, 30, 21);
        }
        if (chipName.startsWith("OMX.amlogic.")) {
            Logging.i(TAG, "getChipProperties for amlogic");
            return new ChipProperties(chipName, BitrateAdjustmentType.FRAMERATE_ADJUSTMENT, false, 30, 30, Integer.MAX_VALUE);
        }
        if (chipName.startsWith("OMX.rk.")) {
            return new ChipProperties(chipName, BitrateAdjustmentType.FRAMERATE_ADJUSTMENT, false, 30, 30, Integer.MAX_VALUE);
        }
        Logging.i(TAG, "getChipProperties from unsupported chip list");
        return new ChipProperties(chipName, BitrateAdjustmentType.NO_ADJUSTMENT, false, fps, fps, 23);
    }

    private void getEncoderProperties(int codec) {
        String[] strArr = {"video/x-vnd.on2.vp8", "video/x-vnd.on2.vp9", "video/avc", "video/hevc"};
        this.supportCodecs = 0;
        String name = null;
        for (int i10 = 0; i10 < MediaCodecList.getCodecCount(); i10++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i10);
            if (codecInfoAt.isEncoder()) {
                for (String str : codecInfoAt.getSupportedTypes()) {
                    if (str.equals("video/x-vnd.on2.vp8")) {
                        this.supportCodecs |= 1;
                    } else if (str.equals("video/avc")) {
                        this.supportCodecs |= 2;
                    } else if (str.equals("video/hevc")) {
                        this.supportCodecs |= 4;
                    }
                    if (name == null && str.equals(strArr[codec])) {
                        name = codecInfoAt.getName();
                        MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(strArr[codec]);
                        if (isA50OrHigher()) {
                            MediaCodecInfo.VideoCapabilities videoCapabilities = capabilitiesForType.getVideoCapabilities();
                            Range<Integer> supportedWidths = videoCapabilities.getSupportedWidths();
                            Range<Integer> supportedHeights = videoCapabilities.getSupportedHeights();
                            this.maxSupportedWidth = ((Integer) supportedWidths.getUpper()).intValue();
                            this.maxSupportedHeight = ((Integer) supportedHeights.getUpper()).intValue();
                            this.minSupportedWidth = ((Integer) supportedWidths.getLower()).intValue();
                            this.minSupportedHeight = ((Integer) supportedHeights.getLower()).intValue();
                            this.widthAlignment = videoCapabilities.getWidthAlignment();
                            this.heightAlignment = videoCapabilities.getHeightAlignment();
                            Range<Integer> bitrateRange = videoCapabilities.getBitrateRange();
                            this.maxSupportedBitrate = ((Integer) bitrateRange.getUpper()).intValue();
                            this.minSupportedBitrate = ((Integer) bitrateRange.getLower()).intValue();
                            Logging.i(TAG, "max supported size:" + this.maxSupportedWidth + "x" + this.maxSupportedHeight + " min supported size:" + this.minSupportedWidth + "x" + this.minSupportedHeight + " align size: " + this.widthAlignment + "x" + this.heightAlignment + " bitrate range: " + this.maxSupportedBitrate + " -> " + this.minSupportedBitrate);
                        }
                    }
                }
            }
        }
        this.SDKVer = Build.VERSION.SDK_INT;
        this.deviceModel = Build.MODEL;
        this.cpuModel = Build.HARDWARE;
    }

    public static int getHWEncoderManufactor() {
        if (codecOmxName.startsWith("OMX.qcom.")) {
            return 0;
        }
        if (codecOmxName.startsWith("OMX.MTK.")) {
            return 1;
        }
        if (codecOmxName.startsWith("OMX.Exynos.")) {
            return 2;
        }
        if (codecOmxName.startsWith("OMX.IMG.TOPAZ.")) {
            return 3;
        }
        if (codecOmxName.startsWith("OMX.k3.")) {
            return 4;
        }
        if (codecOmxName.startsWith("OMX.hisi.")) {
            return 5;
        }
        if (codecOmxName.startsWith("OMX.amlogic.")) {
            return 6;
        }
        return codecOmxName.startsWith("OMX.rk.") ? 7 : -1;
    }

    private boolean initEncoderTask(InitParameters initParams) {
        if (this.isInitialized) {
            Logging.w(TAG, "already initialized!");
            return true;
        }
        try {
            if (!createEncoder(initParams)) {
                Logging.e(TAG, "failed to create hardware encoder!!");
                return false;
            }
            initEglForEncoderIfNeeded(initParams);
            this.mediaCodec.start();
            if (!this.useAsyncMode) {
                this.outputBuffers = this.mediaCodec.getOutputBuffers();
                Logging.d(TAG, "Output buffers: " + this.outputBuffers.length);
            }
            this.isInitialized = true;
            return true;
        } catch (Exception e) {
            Logging.e(TAG, "failed to create hardware encoder,", e);
            try {
                release();
            } catch (Exception e2) {
                Logging.e(TAG, "failed to release hardware encoder,", e2);
            }
            return false;
        }
    }

    public static boolean isH264HwSupported() {
        try {
            return (hwEncoderDisabledTypes.contains("video/avc") || findHwEncoder("video/avc", supportedH264HwCodecPrefixes, supportedColorList) == null) ? false : true;
        } catch (Exception unused) {
            Logging.e(TAG, "isH264HwSupported failed!");
            return false;
        }
    }

    public static boolean isH264HwSupportedUsingTextures() {
        try {
            return (hwEncoderDisabledTypes.contains("video/avc") || findHwEncoder("video/avc", supportedH264HwCodecPrefixes, supportedSurfaceColorList) == null) ? false : true;
        } catch (Exception unused) {
            Logging.e(TAG, "isH264HwSupportedUsingTextures failed!");
            return false;
        }
    }

    public static boolean isH265HwSupported() {
        try {
            return (hwEncoderDisabledTypes.contains("video/hevc") || findHwEncoder("video/hevc", supportedH265HwCodecPrefixes, supportedColorList) == null) ? false : true;
        } catch (Exception unused) {
            Logging.e(TAG, "isH265HwSupported failed!");
            return false;
        }
    }

    public static boolean isH265HwSupportedUsingTextures() {
        try {
            return (hwEncoderDisabledTypes.contains("video/hevc") || findHwEncoder("video/hevc", supportedH265HwCodecPrefixes, supportedSurfaceColorList) == null) ? false : true;
        } catch (Exception unused) {
            Logging.e(TAG, "isH265HwSupportedUsingTextures failed!");
            return false;
        }
    }

    private boolean isOnAsyncHandlerThread() {
        HandlerThread handlerThread = this.asyncHandlerThread;
        return handlerThread != null && handlerThread.getId() == Thread.currentThread().getId();
    }

    public static boolean isQcomHWEncoder() {
        String str = codecOmxName;
        if (str == null || str.startsWith("OMX.qcom.")) {
            Logging.i(TAG, "Qualcomm HW encoder true");
            return true;
        }
        Logging.i(TAG, "Qualcomm HW encoder false");
        return false;
    }

    public static boolean isVp8HwSupported() {
        return (hwEncoderDisabledTypes.contains("video/x-vnd.on2.vp8") || findHwEncoder("video/x-vnd.on2.vp8", supportedVp8HwCodecPrefixes, supportedColorList) == null) ? false : true;
    }

    public static boolean isVp8HwSupportedUsingTextures() {
        return (hwEncoderDisabledTypes.contains("video/x-vnd.on2.vp8") || findHwEncoder("video/x-vnd.on2.vp8", supportedVp8HwCodecPrefixes, supportedSurfaceColorList) == null) ? false : true;
    }

    public static boolean isVp9HwSupported() {
        return (hwEncoderDisabledTypes.contains("video/x-vnd.on2.vp9") || findHwEncoder("video/x-vnd.on2.vp9", supportedVp9HwCodecPrefixes, supportedColorList) == null) ? false : true;
    }

    public static boolean isVp9HwSupportedUsingTextures() {
        return (hwEncoderDisabledTypes.contains("video/x-vnd.on2.vp9") || findHwEncoder("video/x-vnd.on2.vp9", supportedVp9HwCodecPrefixes, supportedSurfaceColorList) == null) ? false : true;
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

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseEncoderTask() {
        boolean z6;
        if (!this.isInitialized) {
            Logging.e(TAG, "releaseEncoderTask: encoder is not initialized!");
            return;
        }
        final C1CaughtException c1CaughtException = new C1CaughtException();
        if (this.mediaCodec != null) {
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            new Thread(new Runnable() { // from class: io.agora.rtc.video.MediaCodecVideoEncoder.5
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
            if (ThreadUtils.awaitUninterruptibly(countDownLatch, 3000L)) {
                z6 = false;
            } else {
                Logging.e(TAG, "Media encoder release timeout");
                z6 = true;
            }
            this.mediaCodec = null;
        } else {
            z6 = false;
        }
        this.mediaCodecThread = null;
        this.isInitialized = false;
        GlRectDrawer glRectDrawer = this.drawer;
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
        if (!z6) {
            if (c1CaughtException.e == null) {
                Logging.i(TAG, "Java releaseEncoder done");
                return;
            } else {
                RuntimeException runtimeException = new RuntimeException(c1CaughtException.e);
                runtimeException.setStackTrace(ThreadUtils.concatStackTraces(c1CaughtException.e.getStackTrace(), runtimeException.getStackTrace()));
                throw runtimeException;
            }
        }
        codecErrors++;
        if (errorCallback != null) {
            Logging.e(TAG, "Invoke codec error callback. Errors: " + codecErrors);
            errorCallback.onMediaCodecVideoEncoderCriticalError(codecErrors);
        }
        throw new RuntimeException("Media encoder release timeout.");
    }

    public static void setErrorCallback(MediaCodecVideoEncoderErrorCallback errorCallback2) {
        Logging.d(TAG, "Set error callback");
        errorCallback = errorCallback2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int setRates(final int Kbps, final int fps) {
        int i10;
        Logging.d(TAG, "Bwe setRates: " + Kbps + " Kbps");
        if (this.useAsyncMode && !isOnAsyncHandlerThread()) {
            Handler handler = this.asyncEncoderHandler;
            if (handler == null) {
                Logging.e(TAG, "setRates: null async handler, not initialized?");
                return 0;
            }
            handler.post(new Runnable() { // from class: io.agora.rtc.video.MediaCodecVideoEncoder.6
                @Override // java.lang.Runnable
                public void run() {
                    int rates = MediaCodecVideoEncoder.this.setRates(Kbps, fps);
                    Logging.i(MediaCodecVideoEncoder.TAG, "setRates async, ret: " + rates);
                    MediaCodecVideoEncoder mediaCodecVideoEncoder = MediaCodecVideoEncoder.this;
                    mediaCodecVideoEncoder.onAsyncSetRatesResult(mediaCodecVideoEncoder.nativeHandle, rates);
                }
            });
            return 1;
        }
        if (!this.isInitialized) {
            Logging.e(TAG, "setRates: encoder is not initialized!");
            return 0;
        }
        boolean z6 = fps > 0 && fps != this.lastSetFps;
        if (fps <= 0) {
            fps = this.lastSetFps;
        }
        this.lastSetFps = fps;
        int iConvertBitRate = convertBitRate(Kbps, fps);
        if (z6) {
            try {
                if (this.settingAdjustmentReset <= 0) {
                    if (this.chipProperties.bitrateAdjustmentType == BitrateAdjustmentType.ACTUAL_FRAMERATE_ADJUSTMENT) {
                    }
                }
                this.converted_bps = iConvertBitRate;
                return 0;
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
            i10 = 25000;
            if (!this.qcomExceptionModel && this.converted_bps <= 200000) {
                i10 = 15000;
            }
        } else {
            i10 = 0;
        }
        if (iConvertBitRate < this.converted_bps - i10) {
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

    @Deprecated
    int dequeueInputBuffer() {
        try {
            return this.mediaCodec.dequeueInputBuffer(0L);
        } catch (IllegalStateException e) {
            Logging.e(TAG, "dequeueIntputBuffer failed", e);
            return -2;
        }
    }

    @TargetApi(21)
    InputBufferInfo dequeueInputBufferAvailable() {
        InputBufferInfo inputBufferInfo;
        synchronized (this.inputBufferLock) {
            Iterator<Integer> it = this.availableInputIndexes.iterator();
            if (it.hasNext()) {
                try {
                    int iIntValue = it.next().intValue();
                    it.remove();
                    inputBufferInfo = new InputBufferInfo(iIntValue, this.mediaCodec.getInputBuffer(iIntValue));
                } catch (IllegalStateException e) {
                    Logging.e(TAG, "codec exception: " + e.getMessage());
                    inputBufferInfo = new InputBufferInfo(-2, null);
                }
            } else {
                Logging.e(TAG, "no input buffer available");
                inputBufferInfo = new InputBufferInfo(-1, null);
            }
        }
        return inputBufferInfo;
    }

    @Deprecated
    OutputBufferInfo dequeueOutputBuffer() {
        try {
            MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
            int iDequeueOutputBuffer = this.mediaCodec.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer >= 0 && (bufferInfo.flags & 2) != 0) {
                Logging.d(TAG, "Config frame generated. Offset: " + bufferInfo.offset + ". Size: " + bufferInfo.size);
                this.configData = ByteBuffer.allocateDirect(bufferInfo.size);
                this.outputBuffers[iDequeueOutputBuffer].position(bufferInfo.offset);
                this.outputBuffers[iDequeueOutputBuffer].limit(bufferInfo.offset + bufferInfo.size);
                this.configData.put(this.outputBuffers[iDequeueOutputBuffer]);
                this.mediaCodec.releaseOutputBuffer(iDequeueOutputBuffer, false);
                iDequeueOutputBuffer = this.mediaCodec.dequeueOutputBuffer(bufferInfo, 0L);
            }
            if (iDequeueOutputBuffer >= 0) {
                return createOutputBufferInfo(bufferInfo, iDequeueOutputBuffer, this.outputBuffers[iDequeueOutputBuffer].duplicate());
            }
            if (iDequeueOutputBuffer == -3) {
                this.outputBuffers = this.mediaCodec.getOutputBuffers();
                return dequeueOutputBuffer();
            }
            if (iDequeueOutputBuffer == -2) {
                return dequeueOutputBuffer();
            }
            if (iDequeueOutputBuffer == -1) {
                return null;
            }
            throw new RuntimeException("dequeueOutputBuffer: " + iDequeueOutputBuffer);
        } catch (IllegalStateException e) {
            Logging.e(TAG, "dequeueOutputBuffer failed", e);
            return new OutputBufferInfo(-1, null, false, -1L, 0);
        }
    }

    void dumpIntoFile(OutputBufferInfo buf, VideoCodecType type) {
        String str;
        if (this.fos == null) {
            String str2 = null;
            try {
                if (type == VideoCodecType.VIDEO_CODEC_H264) {
                    str = String.format("/sdcard/java_dump_video_%d_%d.h264", Integer.valueOf(this.width), Integer.valueOf(this.height));
                } else {
                    str = type == VideoCodecType.VIDEO_CODEC_H265 ? String.format("/sdcard/java_dump_video_%d_%d.h265", Integer.valueOf(this.width), Integer.valueOf(this.height)) : String.format("/sdcard/java_dump_video_%d_%d.raw", Integer.valueOf(this.width), Integer.valueOf(this.height));
                }
                str2 = str;
                this.fos = new FileOutputStream(str2, true);
            } catch (Exception unused) {
                Logging.i(TAG, "dumpIntoFile: failed to open " + str2);
                return;
            }
        }
        if (buf == null || buf.index < 0) {
            return;
        }
        Logging.i(TAG, "Dump nal: " + buf.buffer);
        try {
            byte[] bArr = new byte[buf.buffer.remaining()];
            buf.buffer.get(bArr);
            this.fos.write(bArr, 0, buf.size);
        } catch (Exception e) {
            Logging.e(TAG, "Run: 4.1 Exception ", e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0066 A[Catch: IllegalStateException -> 0x0062, TryCatch #0 {IllegalStateException -> 0x0062, blocks: (B:21:0x004e, B:23:0x0056, B:31:0x007c, B:29:0x0066, B:30:0x006b), top: B:35:0x004e }] */
    boolean encodeBuffer(final boolean isKeyframe, final int inputBuffer, final int size, final int rotation, final long presentationTimestampUs) {
        if (this.useAsyncMode && !isOnAsyncHandlerThread()) {
            Handler handler = this.asyncEncoderHandler;
            if (handler == null) {
                Logging.e(TAG, "encodeBuffer: null async handler, not initialized?");
                return false;
            }
            handler.post(new Runnable() { // from class: io.agora.rtc.video.MediaCodecVideoEncoder.2
                @Override // java.lang.Runnable
                public void run() {
                    if (MediaCodecVideoEncoder.this.encodeBuffer(isKeyframe, inputBuffer, size, rotation, presentationTimestampUs)) {
                        return;
                    }
                    MediaCodecVideoEncoder mediaCodecVideoEncoder = MediaCodecVideoEncoder.this;
                    mediaCodecVideoEncoder.onAsyncEncodeFrameResult(mediaCodecVideoEncoder.nativeHandle, false, null);
                }
            });
            return true;
        }
        if (!this.isInitialized) {
            Logging.e(TAG, "encodeBuffer: encoder is not initialized!");
            return false;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.lastKeyFrameTimeMs == 0) {
            this.lastKeyFrameTimeMs = jElapsedRealtime;
        }
        this.outputFrameRotation = rotation;
        if (isKeyframe) {
            if (isKeyframe) {
                Logging.i(TAG, "Sync frame request");
            }
            Bundle bundle = new Bundle();
            bundle.putInt("request-sync", 0);
            this.mediaCodec.setParameters(bundle);
            this.lastKeyFrameTimeMs = jElapsedRealtime;
        } else {
            try {
                if (this.chipProperties.bitrateAdjustmentType != BitrateAdjustmentType.ACTUAL_FRAMERATE_ADJUSTMENT && jElapsedRealtime - this.lastKeyFrameTimeMs >= this.keyFrameIntervalInMsec) {
                    if (isKeyframe) {
                        Logging.i(TAG, "Sync frame request");
                    }
                    Bundle bundle2 = new Bundle();
                    bundle2.putInt("request-sync", 0);
                    this.mediaCodec.setParameters(bundle2);
                    this.lastKeyFrameTimeMs = jElapsedRealtime;
                }
            } catch (IllegalStateException e) {
                Logging.e(TAG, "encodeBuffer failed", e);
                return false;
            }
        }
        this.mediaCodec.queueInputBuffer(inputBuffer, 0, size, presentationTimestampUs, 0);
        return true;
    }

    @Deprecated
    ByteBuffer[] getInputBuffers() {
        ByteBuffer[] inputBuffers = this.mediaCodec.getInputBuffers();
        Logging.d(TAG, "Input buffers: " + inputBuffers.length);
        return inputBuffers;
    }

    boolean initEncoder(final InitParameters initParams) {
        boolean z6 = initParams.useAsyncMode;
        this.useAsyncMode = z6;
        if (!z6) {
            Logging.i(TAG, "Init encoder start, in caller thread");
            return initEncoderWithRetryIfNeeded(initParams);
        }
        if (this.asyncHandlerThread == null) {
            HandlerThread handlerThread = new HandlerThread("encoderAsyncHandler");
            this.asyncHandlerThread = handlerThread;
            handlerThread.start();
        }
        Handler handler = new Handler(this.asyncHandlerThread.getLooper());
        this.asyncEncoderHandler = handler;
        handler.post(new Runnable() { // from class: io.agora.rtc.video.MediaCodecVideoEncoder.1
            @Override // java.lang.Runnable
            public void run() {
                Logging.i(MediaCodecVideoEncoder.TAG, "Init encoder start, in async thread");
                boolean zInitEncoderWithRetryIfNeeded = MediaCodecVideoEncoder.this.initEncoderWithRetryIfNeeded(initParams);
                MediaCodecVideoEncoder mediaCodecVideoEncoder = MediaCodecVideoEncoder.this;
                mediaCodecVideoEncoder.onAsyncInitEncoderResult(mediaCodecVideoEncoder.nativeHandle, zInitEncoderWithRetryIfNeeded);
            }
        });
        return true;
    }

    void nativeCreate(long nativeHandle) {
        this.nativeHandle = nativeHandle;
        Logging.i(TAG, "nativeCreate handle: " + nativeHandle);
    }

    void nativeDestroy() {
        Logging.i(TAG, "nativeDestroy");
        HandlerThread handlerThread = this.asyncHandlerThread;
        if (handlerThread != null) {
            handlerThread.quit();
            this.asyncHandlerThread = null;
        }
        this.asyncEncoderHandler = null;
        this.nativeHandle = 0L;
    }

    void release() {
        Logging.i(TAG, "Java releaseEncoder");
        if (!this.useAsyncMode) {
            releaseEncoderTask();
            return;
        }
        synchronized (this.inputBufferLock) {
            try {
                this.availableInputIndexes.clear();
                MediaCodecEncoderCallback mediaCodecEncoderCallback = this.asyncEncoderCallback;
                if (mediaCodecEncoderCallback != null) {
                    mediaCodecEncoderCallback.stale = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Handler handler = this.asyncEncoderHandler;
        if (handler == null) {
            Logging.e(TAG, "release: null async handler, not initialized?");
        } else {
            handler.post(new Runnable() { // from class: io.agora.rtc.video.MediaCodecVideoEncoder.4
                @Override // java.lang.Runnable
                public void run() {
                    MediaCodecVideoEncoder.this.releaseEncoderTask();
                }
            });
        }
    }

    static MediaCodec createByCodecName(String codecName) {
        try {
            return MediaCodec.createByCodecName(codecName);
        } catch (Exception e) {
            Logging.e(TAG, "create media encoder failed, ", e);
            return null;
        }
    }

    private static EncoderProperties findHwEncoder(String mime, String[] supportedHwCodecPrefixes, int[] colorList) {
        try {
            return do_findHwEncoder(mime, supportedHwCodecPrefixes, colorList);
        } catch (Exception unused) {
            return null;
        }
    }

    private void initEglForEncoderIfNeeded(InitParameters initParams) {
        if (!initParams.useSurface()) {
            return;
        }
        android.opengl.EGLContext eGLContext = initParams.sharedEgl14Context;
        if (eGLContext != null) {
            this.eglBase = new EglBase14(new EglBase14.Context(eGLContext), EglBase.CONFIG_RECORDABLE);
        } else {
            EGLContext eGLContext2 = initParams.sharedEgl10Context;
            if (eGLContext2 != null) {
                this.eglBase = new EglBase10(new EglBase10.Context(eGLContext2), EglBase.CONFIG_RECORDABLE);
            }
        }
        if (this.eglBase != null) {
            Surface surfaceCreateInputSurface = this.mediaCodec.createInputSurface();
            this.inputSurface = surfaceCreateInputSurface;
            this.eglBase.createSurface(surfaceCreateInputSurface);
            this.drawer = new GlRectDrawer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean initEncoderWithRetryIfNeeded(InitParameters initParams) {
        String str;
        boolean zInitEncoderTask = initEncoderTask(initParams);
        if (!zInitEncoderTask && initParams.fallbackToBaselineProfile) {
            initParams.profile = 66;
            Logging.w(TAG, "Init encoder: retry with baseline profile");
            zInitEncoderTask = initEncoderTask(initParams);
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Init encoder done: ");
        if (zInitEncoderTask) {
            str = "success";
        } else {
            str = "failed";
        }
        sb.append(str);
        Logging.i(TAG, sb.toString());
        return zInitEncoderTask;
    }
}
