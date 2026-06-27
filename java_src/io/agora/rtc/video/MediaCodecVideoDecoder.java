package io.agora.rtc.video;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import io.agora.rtc.internal.Logging;
import io.agora.rtc.utils.ThreadUtils;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes4.dex */
public class MediaCodecVideoDecoder {
    private static final int DEQUEUE_INPUT_TIMEOUT = 100000;
    private static final String H264_MIME_TYPE = "video/avc";
    private static final long MAX_DECODE_TIME_MS = 2000;
    private static final int MAX_QUEUED_OUTPUTBUFFERS = 3;
    private static final int MEDIA_CODEC_RELEASE_TIMEOUT_MS = 5000;
    private static final String TAG = "MediaCodecVideoDecoder";
    private static final String VP8_MIME_TYPE = "video/x-vnd.on2.vp8";
    private static final String VP9_MIME_TYPE = "video/x-vnd.on2.vp9";
    private static int codecErrors;
    private static MediaCodecVideoDecoderErrorCallback errorCallback;
    private static MediaCodecVideoDecoder runningInstance;
    private int colorFormat;
    private int cropHeight;
    private int cropWidth;
    private int droppedFrames;
    private boolean hasDecodedFirstFrame;
    private int height;
    private ByteBuffer[] inputBuffers;
    private MediaCodec mediaCodec;
    private Thread mediaCodecThread;
    private ByteBuffer[] outputBuffers;
    private int sliceHeight;
    private int stride;
    private boolean useSurface;
    private int width;
    private static Set<String> hwDecoderDisabledTypes = new HashSet();
    private static final String[] supportedVp8HwCodecPrefixes = {"OMX.qcom.", "OMX.Nvidia.", "OMX.Exynos.", "OMX.Intel."};
    private static final String[] supportedVp9HwCodecPrefixes = {"OMX.qcom.", "OMX.Exynos."};
    private static final String[] supportedH264HwCodecPrefixes = {"OMX.qcom.", "OMX.Exynos.", "OMX.rk.", "OMX.sprd.", "OMX.amlogic.", "OMX.IMG.TOPAZ.", "OMX.IMG.MSVDX.", "OMX.hisi.", "OMX.k3.", "OMX.allwinner.", "OMX.MTK.", "OMX.Nvidia.", "OMX.Intel.", "OMX.MS."};
    private static final int COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m = 2141391876;
    private static final List<Integer> supportedColorList = Arrays.asList(19, 21, 2141391872, Integer.valueOf(COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m));
    private final Queue<TimeStamps> decodeStartTimeMs = new LinkedList();
    private Surface surface = null;
    private final Queue<DecodedOutputBuffer> dequeuedSurfaceOutputBuffers = new LinkedList();

    public interface MediaCodecVideoDecoderErrorCallback {
        void onMediaCodecVideoDecoderCriticalError(int i);
    }

    public enum VideoCodecType {
        VIDEO_CODEC_VP8,
        VIDEO_CODEC_VP9,
        VIDEO_CODEC_H264
    }

    private void checkOnMediaCodecThread() throws IllegalStateException {
    }

    public static void setErrorCallback(MediaCodecVideoDecoderErrorCallback mediaCodecVideoDecoderErrorCallback) {
        errorCallback = mediaCodecVideoDecoderErrorCallback;
    }

    public static void disableVp8HwCodec() {
        Log.w(TAG, "VP8 decoding is disabled by application.");
        hwDecoderDisabledTypes.add("video/x-vnd.on2.vp8");
    }

    public static void disableVp9HwCodec() {
        Logging.w(TAG, "VP9 decoding is disabled by application.");
        hwDecoderDisabledTypes.add("video/x-vnd.on2.vp9");
    }

    public static void disableH264HwCodec() {
        Logging.w(TAG, "H.264 decoding is disabled by application.");
        hwDecoderDisabledTypes.add("video/avc");
    }

    public static boolean isVp8HwSupported() {
        return (hwDecoderDisabledTypes.contains("video/x-vnd.on2.vp8") || findDecoder("video/x-vnd.on2.vp8", supportedVp8HwCodecPrefixes) == null) ? false : true;
    }

    public static boolean isVp9HwSupported() {
        return (hwDecoderDisabledTypes.contains("video/x-vnd.on2.vp9") || findDecoder("video/x-vnd.on2.vp9", supportedVp9HwCodecPrefixes) == null) ? false : true;
    }

    public static boolean isH264HwSupported() {
        return (hwDecoderDisabledTypes.contains("video/avc") || findDecoder("video/avc", supportedH264HwCodecPrefixes) == null) ? false : true;
    }

    public static void printStackTrace() {
        Thread thread;
        MediaCodecVideoDecoder mediaCodecVideoDecoder = runningInstance;
        if (mediaCodecVideoDecoder == null || (thread = mediaCodecVideoDecoder.mediaCodecThread) == null) {
            return;
        }
        StackTraceElement[] stackTrace = thread.getStackTrace();
        if (stackTrace.length > 0) {
            Logging.d(TAG, "MediaCodecVideoDecoder stacks trace:");
            for (StackTraceElement stackTraceElement : stackTrace) {
                Logging.d(TAG, stackTraceElement.toString());
            }
        }
    }

    private static class DecoderProperties {
        public final String codecName;
        public final int colorFormat;

        public DecoderProperties(String str, int i) {
            this.codecName = str;
            this.colorFormat = i;
        }
    }

    private static DecoderProperties findDecoder(String str, String[] strArr) {
        MediaCodecInfo codecInfoAt;
        String name;
        boolean z;
        if (Build.VERSION.SDK_INT < 19) {
            return null;
        }
        Logging.i(TAG, "Trying to find HW decoder for mime " + str);
        for (int i = 0; i < MediaCodecList.getCodecCount(); i++) {
            try {
                codecInfoAt = MediaCodecList.getCodecInfoAt(i);
            } catch (IllegalArgumentException e) {
                Logging.e(TAG, "Cannot retrieve decoder codec info", e);
                codecInfoAt = null;
            }
            if (codecInfoAt != null && !codecInfoAt.isEncoder()) {
                String[] supportedTypes = codecInfoAt.getSupportedTypes();
                int length = supportedTypes.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        name = null;
                        break;
                    }
                    if (supportedTypes[i2].equals(str)) {
                        name = codecInfoAt.getName();
                        break;
                    }
                    i2++;
                }
                if (name == null) {
                    continue;
                } else {
                    Logging.i(TAG, "Found candidate decoder " + name);
                    int length2 = strArr.length;
                    int i3 = 0;
                    while (true) {
                        if (i3 >= length2) {
                            z = false;
                            break;
                        }
                        if (name.startsWith(strArr[i3])) {
                            z = true;
                            break;
                        }
                        i3++;
                    }
                    if (z) {
                        MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(str);
                        for (int i4 : capabilitiesForType.colorFormats) {
                            Logging.d(TAG, "   Color: 0x" + Integer.toHexString(i4));
                        }
                        if (name.startsWith("OMX.rk.")) {
                            return new DecoderProperties(name, 21);
                        }
                        Iterator<Integer> it = supportedColorList.iterator();
                        while (it.hasNext()) {
                            int iIntValue = it.next().intValue();
                            for (int i5 : capabilitiesForType.colorFormats) {
                                if (i5 == iIntValue) {
                                    Logging.d(TAG, "Found target decoder " + name + ". Color: 0x" + Integer.toHexString(i5));
                                    return new DecoderProperties(name, i5);
                                }
                            }
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        Logging.d(TAG, "No HW decoder found for mime " + str);
        return null;
    }

    class SurfaceTextureHelper {
        SurfaceTextureHelper() {
        }
    }

    private boolean initDecode(int i, int i2, int i3, SurfaceTextureHelper surfaceTextureHelper) {
        String[] strArr;
        String str;
        if (this.mediaCodecThread != null) {
            throw new RuntimeException("initDecode: Forgot to release()?");
        }
        this.useSurface = surfaceTextureHelper != null;
        VideoCodecType videoCodecType = VideoCodecType.values()[i];
        if (videoCodecType == VideoCodecType.VIDEO_CODEC_VP8) {
            strArr = supportedVp8HwCodecPrefixes;
            str = "video/x-vnd.on2.vp8";
        } else if (videoCodecType == VideoCodecType.VIDEO_CODEC_VP9) {
            strArr = supportedVp9HwCodecPrefixes;
            str = "video/x-vnd.on2.vp9";
        } else if (videoCodecType == VideoCodecType.VIDEO_CODEC_H264) {
            strArr = supportedH264HwCodecPrefixes;
            str = "video/avc";
        } else {
            throw new RuntimeException("initDecode: Non-supported codec " + videoCodecType);
        }
        DecoderProperties decoderPropertiesFindDecoder = findDecoder(str, strArr);
        if (decoderPropertiesFindDecoder == null) {
            throw new RuntimeException("Cannot find HW decoder for " + videoCodecType);
        }
        Logging.d(TAG, "Java initDecode: " + videoCodecType + " : " + i2 + " x " + i3 + ". Color: 0x" + Integer.toHexString(decoderPropertiesFindDecoder.colorFormat) + ". Use Surface: " + this.useSurface);
        runningInstance = this;
        this.mediaCodecThread = Thread.currentThread();
        try {
            this.width = i2;
            this.height = i3;
            this.stride = i2;
            this.sliceHeight = i3;
            this.cropWidth = i2;
            this.cropHeight = i3;
            MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat(str, i2, i3);
            if (!this.useSurface) {
                mediaFormatCreateVideoFormat.setInteger("color-format", decoderPropertiesFindDecoder.colorFormat);
            }
            Logging.d(TAG, "  Format: " + mediaFormatCreateVideoFormat);
            this.mediaCodec = MediaCodecVideoEncoder.createByCodecName(decoderPropertiesFindDecoder.codecName);
            if (this.mediaCodec == null) {
                Logging.e(TAG, "Can not create media decoder");
                return false;
            }
            this.mediaCodec.configure(mediaFormatCreateVideoFormat, this.surface, (MediaCrypto) null, 0);
            this.mediaCodec.start();
            this.colorFormat = decoderPropertiesFindDecoder.colorFormat;
            this.outputBuffers = this.mediaCodec.getOutputBuffers();
            this.inputBuffers = this.mediaCodec.getInputBuffers();
            this.decodeStartTimeMs.clear();
            this.hasDecodedFirstFrame = false;
            this.dequeuedSurfaceOutputBuffers.clear();
            this.droppedFrames = 0;
            Logging.i(TAG, "Input buffers: " + this.inputBuffers.length + ". Output buffers: " + this.outputBuffers.length);
            return true;
        } catch (IllegalStateException e) {
            Logging.e(TAG, "initDecode failed", e);
            return false;
        }
    }

    private void reset(int i, int i2) {
        if (this.mediaCodecThread == null || this.mediaCodec == null) {
            throw new RuntimeException("Incorrect reset call for non-initialized decoder.");
        }
        Logging.i(TAG, "Java reset: " + i + " x " + i2);
        this.mediaCodec.flush();
        this.width = i;
        this.height = i2;
        this.decodeStartTimeMs.clear();
        this.dequeuedSurfaceOutputBuffers.clear();
        this.hasDecodedFirstFrame = false;
        this.droppedFrames = 0;
    }

    private void release() throws IllegalStateException {
        Logging.i(TAG, "Java releaseDecoder. Total number of dropped frames: " + this.droppedFrames);
        checkOnMediaCodecThread();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        new Thread(new Runnable() { // from class: io.agora.rtc.video.MediaCodecVideoDecoder.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Logging.i(MediaCodecVideoDecoder.TAG, "Java releaseDecoder on release thread");
                    MediaCodecVideoDecoder.this.mediaCodec.stop();
                    MediaCodecVideoDecoder.this.mediaCodec.release();
                    Logging.i(MediaCodecVideoDecoder.TAG, "Java releaseDecoder on release thread done");
                } catch (Exception e) {
                    Logging.e(MediaCodecVideoDecoder.TAG, "Media decoder release failed", e);
                }
                countDownLatch.countDown();
            }
        }).start();
        if (!ThreadUtils.awaitUninterruptibly(countDownLatch, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS)) {
            Logging.e(TAG, "Media decoder release timeout");
            codecErrors++;
            if (errorCallback != null) {
                Logging.e(TAG, "Invoke codec error callback. Errors: " + codecErrors);
                errorCallback.onMediaCodecVideoDecoderCriticalError(codecErrors);
            }
        }
        this.mediaCodec = null;
        this.mediaCodecThread = null;
        runningInstance = null;
        Logging.d(TAG, "Java releaseDecoder done");
    }

    private int dequeueInputBuffer() throws IllegalStateException {
        checkOnMediaCodecThread();
        try {
            return this.mediaCodec.dequeueInputBuffer(100000L);
        } catch (IllegalStateException e) {
            Logging.e(TAG, "dequeueIntputBuffer failed", e);
            return -2;
        }
    }

    private boolean queueInputBuffer(int i, int i2, long j, long j2, long j3) throws IllegalStateException, MediaCodec.CryptoException {
        checkOnMediaCodecThread();
        try {
            this.inputBuffers[i].position(0);
            this.inputBuffers[i].limit(i2);
            this.decodeStartTimeMs.add(new TimeStamps(SystemClock.elapsedRealtime(), j2, j3));
            this.mediaCodec.queueInputBuffer(i, 0, i2, j, 0);
            return true;
        } catch (IllegalStateException e) {
            Logging.e(TAG, "decode failed", e);
            return false;
        }
    }

    private static class TimeStamps {
        private final long decodeStartTimeMs;
        private final long ntpTimeStampMs;
        private final long timeStampMs;

        public TimeStamps(long j, long j2, long j3) {
            this.decodeStartTimeMs = j;
            this.timeStampMs = j2;
            this.ntpTimeStampMs = j3;
        }
    }

    private static class DecodedOutputBuffer {
        private final long decodeTimeMs;
        private final long endDecodeTimeMs;
        private final int index;
        private final long ntpTimeStampMs;
        private final int offset;
        private final long presentationTimeStampMs;
        private final int size;
        private final long timeStampMs;

        public DecodedOutputBuffer(int i, int i2, int i3, long j, long j2, long j3, long j4, long j5) {
            this.index = i;
            this.offset = i2;
            this.size = i3;
            this.presentationTimeStampMs = j;
            this.timeStampMs = j2;
            this.ntpTimeStampMs = j3;
            this.decodeTimeMs = j4;
            this.endDecodeTimeMs = j5;
        }
    }

    private static class DecodedTextureBuffer {
        private final long decodeTimeMs;
        private final long frameDelayMs;
        private final long ntpTimeStampMs;
        private final long presentationTimeStampMs;
        private final int textureID;
        private final long timeStampMs;
        private final float[] transformMatrix;

        public DecodedTextureBuffer(int i, float[] fArr, long j, long j2, long j3, long j4, long j5) {
            this.textureID = i;
            this.transformMatrix = fArr;
            this.presentationTimeStampMs = j;
            this.timeStampMs = j2;
            this.ntpTimeStampMs = j3;
            this.decodeTimeMs = j4;
            this.frameDelayMs = j5;
        }
    }

    private DecodedOutputBuffer dequeueOutputBuffer(int i) throws IllegalStateException {
        long j;
        checkOnMediaCodecThread();
        if (this.decodeStartTimeMs.isEmpty()) {
            return null;
        }
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        while (true) {
            int iDequeueOutputBuffer = this.mediaCodec.dequeueOutputBuffer(bufferInfo, TimeUnit.MILLISECONDS.toMicros(i));
            if (iDequeueOutputBuffer == -3) {
                this.outputBuffers = this.mediaCodec.getOutputBuffers();
                Logging.i(TAG, "Decoder output buffers changed: " + this.outputBuffers.length);
                if (this.hasDecodedFirstFrame) {
                    throw new RuntimeException("Unexpected output buffer change event.");
                }
            } else {
                if (iDequeueOutputBuffer != -2) {
                    if (iDequeueOutputBuffer == -1) {
                        return null;
                    }
                    this.hasDecodedFirstFrame = true;
                    TimeStamps timeStampsRemove = this.decodeStartTimeMs.remove();
                    long jElapsedRealtime = SystemClock.elapsedRealtime() - timeStampsRemove.decodeStartTimeMs;
                    if (jElapsedRealtime > 2000) {
                        Logging.w(TAG, "Very high decode time: " + jElapsedRealtime + "ms.");
                        j = 2000L;
                    } else {
                        j = jElapsedRealtime;
                    }
                    return new DecodedOutputBuffer(iDequeueOutputBuffer, bufferInfo.offset, bufferInfo.size, TimeUnit.MICROSECONDS.toMillis(bufferInfo.presentationTimeUs), timeStampsRemove.timeStampMs, timeStampsRemove.ntpTimeStampMs, j, SystemClock.elapsedRealtime());
                }
                MediaFormat outputFormat = this.mediaCodec.getOutputFormat();
                Logging.i(TAG, "Decoder format changed: " + outputFormat.toString());
                int integer = outputFormat.getInteger("width");
                int integer2 = outputFormat.getInteger("height");
                if (this.hasDecodedFirstFrame && (integer != this.width || integer2 != this.height)) {
                    Logging.w(TAG, "Decoder format changed. Configured " + this.width + "*" + this.height + ". New " + integer + "*" + integer2);
                }
                this.width = outputFormat.getInteger("width");
                this.height = outputFormat.getInteger("height");
                if (outputFormat.containsKey("stride")) {
                    this.stride = outputFormat.getInteger("stride");
                }
                if (outputFormat.containsKey("slice-height")) {
                    this.sliceHeight = outputFormat.getInteger("slice-height");
                }
                if (outputFormat.containsKey("crop-left") && outputFormat.containsKey("crop-right")) {
                    this.cropWidth = (outputFormat.getInteger("crop-right") - outputFormat.getInteger("crop-left")) + 1;
                } else {
                    this.cropWidth = this.width;
                }
                if (outputFormat.containsKey("crop-bottom") && outputFormat.containsKey("crop-top")) {
                    this.cropHeight = (outputFormat.getInteger("crop-bottom") - outputFormat.getInteger("crop-top")) + 1;
                } else {
                    this.cropHeight = this.height;
                }
                Logging.i(TAG, "Frame stride and slice height: " + this.stride + " x " + this.sliceHeight);
                Logging.i(TAG, "Crop width and height: " + this.cropWidth + " x " + this.cropHeight);
                this.stride = Math.max(this.width, this.stride);
                this.sliceHeight = Math.max(this.height, this.sliceHeight);
            }
        }
    }

    private void returnDecodedOutputBuffer(int i) throws IllegalStateException {
        checkOnMediaCodecThread();
        if (this.useSurface) {
            throw new IllegalStateException("returnDecodedOutputBuffer() called for surface decoding.");
        }
        this.mediaCodec.releaseOutputBuffer(i, false);
    }
}
