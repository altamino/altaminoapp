package io.agora.rtc.video;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Surface;
import io.agora.rtc.internal.Logging;
import io.agora.rtc.utils.ThreadUtils;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public class MediaCodecVideoDecoder {
    private static final int DEQUEUE_INPUT_TIMEOUT = 100000;
    private static final String H264_MIME_TYPE = "video/avc";
    private static final String H265_MIME_TYPE = "video/hevc";
    private static final long MAX_DECODE_TIME_MS = 2000;
    private static final int MAX_QUEUED_OUTPUTBUFFERS = 3;
    private static final int MEDIA_CODEC_RELEASE_TIMEOUT_MS = 5000;
    private static final String TAG = "MediaCodecVideoDecoder";
    private static final String VP8_MIME_TYPE = "video/x-vnd.on2.vp8";
    private static final String VP9_MIME_TYPE = "video/x-vnd.on2.vp9";
    private static int codecErrors;
    private static MediaCodecVideoDecoderErrorCallback errorCallback;
    private static MediaCodecVideoDecoder runningInstance;
    private HandlerThread asyncHandlerThread;
    private String codecName;
    private int colorFormat;
    private int cropHeight;
    private int cropWidth;
    private MediaCodecDecoderCallback decoderCallback;
    private int droppedFrames;
    private boolean hasDecodedFirstFrame;
    private int height;

    @Deprecated
    ByteBuffer[] inputBuffers;
    private MediaCodec mediaCodec;
    private Thread mediaCodecThread;
    private long nativeHandle;

    @Deprecated
    ByteBuffer[] outputBuffers;
    private int sliceHeight;
    private int stride;
    private int supportCodecs;
    private boolean useSurface;
    private int width;
    private static Set<String> hwDecoderDisabledTypes = new HashSet();
    private static final String[] supportedVp8HwCodecPrefixes = {"OMX.qcom.", "OMX.Nvidia.", "OMX.Exynos.", "OMX.Intel."};
    private static final String[] supportedVp9HwCodecPrefixes = {"OMX.qcom.", "OMX.Exynos."};
    private static final String[] supportedH264HwCodecPrefixes = {"OMX.qcom.", "OMX.Exynos.", "OMX.rk.", "OMX.sprd.", "OMX.amlogic.", "OMX.IMG.TOPAZ.", "OMX.IMG.MSVDX.", "OMX.hisi.", "OMX.k3.", "OMX.allwinner.", "OMX.MTK.", "OMX.Nvidia.", "OMX.Intel.", "OMX.MS."};
    private static final String[] supportedH265HwCodecPrefixes = {"OMX.qcom.", "OMX.Exynos.", "OMX.rk.", "OMX.sprd.", "OMX.amlogic.", "OMX.IMG.TOPAZ.", "OMX.IMG.MSVDX.", "OMX.hisi.", "OMX.k3.", "OMX.allwinner.", "OMX.MTK.", "OMX.Nvidia.", "OMX.Intel.", "OMX.MS.", "OMX.google."};
    private static final int COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m = 2141391876;
    private static final List<Integer> supportedColorList = Arrays.asList(19, 21, 2141391872, Integer.valueOf(COLOR_QCOM_FORMATYUV420PackedSemiPlanar32m));
    private static AtomicInteger currentInstances = new AtomicInteger(0);
    private static boolean preferGoogleSoftwareDecoder = false;
    private boolean useAsyncMode = false;
    private int supportInstances = 1;
    private final Queue<TimeStamps> decodeStartTimeMs = new LinkedList();
    private Surface surface = null;
    private final Queue<DecodedOutputBuffer> dequeuedSurfaceOutputBuffers = new LinkedList();

    private static class DecodedOutputBuffer {
        public final ByteBuffer buffer;
        private final long bufferedFrames;
        private final long decodeTimeMs;
        private final long endDecodeTimeMs;
        private final int index;
        private final long ntpTimeStampMs;
        private final int offset;
        private final long presentationTimeStampMs;
        private final int size;
        private final long timeStampMs;

        public DecodedOutputBuffer(int index, ByteBuffer buffer, int offset, int size, long presentationTimeStampMs, long timeStampMs, long ntpTimeStampMs, long decodeTime, long endDecodeTime, long bufferedFrames) {
            this.index = index;
            this.offset = offset;
            this.size = size;
            this.buffer = buffer;
            this.presentationTimeStampMs = presentationTimeStampMs;
            this.timeStampMs = timeStampMs;
            this.ntpTimeStampMs = ntpTimeStampMs;
            this.decodeTimeMs = decodeTime;
            this.endDecodeTimeMs = endDecodeTime;
            this.bufferedFrames = bufferedFrames;
        }
    }

    @TargetApi(21)
    class MediaCodecDecoderCallback extends MediaCodec.Callback {
        boolean isObsolete = false;
        final LinkedHashSet<Integer> availableInputIndexes = new LinkedHashSet<>();

        MediaCodecDecoderCallback() {
        }

        @Override // android.media.MediaCodec.Callback
        public void onError(MediaCodec codec, MediaCodec.CodecException e) {
            Logging.e(MediaCodecVideoDecoder.TAG, "onError " + e);
        }

        @Override // android.media.MediaCodec.Callback
        public void onInputBufferAvailable(MediaCodec codec, int index) {
            synchronized (this.availableInputIndexes) {
                this.availableInputIndexes.add(Integer.valueOf(index));
            }
        }

        @Override // android.media.MediaCodec.Callback
        public void onOutputBufferAvailable(MediaCodec codec, int index, MediaCodec.BufferInfo info) {
            long j6;
            synchronized (this) {
                if (this.isObsolete) {
                    Logging.w(MediaCodecVideoDecoder.TAG, "discarding output as this callback is obsolete.");
                    return;
                }
                try {
                    ByteBuffer outputBuffer = MediaCodecVideoDecoder.this.mediaCodec.getOutputBuffer(index);
                    if (outputBuffer == null) {
                        Logging.e(MediaCodecVideoDecoder.TAG, "failed to get output buffer, index: " + index);
                        return;
                    }
                    if (MediaCodecVideoDecoder.this.decodeStartTimeMs.isEmpty()) {
                        Logging.e(MediaCodecVideoDecoder.TAG, "decodeStartTimeMs empty, dropping decoded output");
                    } else {
                        TimeStamps timeStamps = (TimeStamps) MediaCodecVideoDecoder.this.decodeStartTimeMs.remove();
                        MediaCodecVideoDecoder.this.hasDecodedFirstFrame = true;
                        long size = MediaCodecVideoDecoder.this.decodeStartTimeMs.size();
                        long jElapsedRealtime = SystemClock.elapsedRealtime() - timeStamps.decodeStartTimeMs;
                        if (jElapsedRealtime > 2000) {
                            Logging.w(MediaCodecVideoDecoder.TAG, "Very high decode time: " + jElapsedRealtime + "ms.");
                            j6 = 2000L;
                        } else {
                            j6 = jElapsedRealtime;
                        }
                        DecodedOutputBuffer decodedOutputBuffer = new DecodedOutputBuffer(index, outputBuffer, info.offset, info.size, TimeUnit.MICROSECONDS.toMillis(info.presentationTimeUs), timeStamps.timeStampMs, timeStamps.ntpTimeStampMs, j6, SystemClock.elapsedRealtime(), size);
                        MediaCodecVideoDecoder mediaCodecVideoDecoder = MediaCodecVideoDecoder.this;
                        mediaCodecVideoDecoder.deliverOutputBufferReady(decodedOutputBuffer, mediaCodecVideoDecoder.nativeHandle);
                    }
                    MediaCodecVideoDecoder.this.mediaCodec.releaseOutputBuffer(index, false);
                } catch (IllegalStateException e) {
                    Logging.e(MediaCodecVideoDecoder.TAG, "getOutputBuffer exception, index: " + index, e);
                }
            }
        }

        @Override // android.media.MediaCodec.Callback
        public void onOutputFormatChanged(MediaCodec codec, MediaFormat format) {
            Logging.w(MediaCodecVideoDecoder.TAG, "onOutputFormatChanged " + format);
            MediaCodecVideoDecoder.this.handleOutputFormatChanged(format);
        }
    }

    public interface MediaCodecVideoDecoderErrorCallback {
        void onMediaCodecVideoDecoderCriticalError(int codecErrors);
    }

    class SurfaceTextureHelper {
        SurfaceTextureHelper() {
        }
    }

    private static class TimeStamps {
        private final long decodeStartTimeMs;
        private final long ntpTimeStampMs;
        private final long timeStampMs;

        public TimeStamps(long decodeStartTimeMs, long timeStampMs, long ntpTimeStampMs) {
            this.decodeStartTimeMs = decodeStartTimeMs;
            this.timeStampMs = timeStampMs;
            this.ntpTimeStampMs = ntpTimeStampMs;
        }
    }

    public enum VideoCodecType {
        VIDEO_CODEC_VP8,
        VIDEO_CODEC_VP9,
        VIDEO_CODEC_H264,
        VIDEO_CODEC_H265
    }

    private void checkOnMediaCodecThread() throws IllegalStateException {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public native void deliverOutputBufferReady(DecodedOutputBuffer decodedOutputBuffer, long nativeVideoEncoder);

    public static boolean isAsyncModeSupported() {
        return false;
    }

    public static void setErrorCallback(MediaCodecVideoDecoderErrorCallback errorCallback2) {
        errorCallback = errorCallback2;
    }

    private static class DecodedTextureBuffer {
        private final long decodeTimeMs;
        private final long frameDelayMs;
        private final long ntpTimeStampMs;
        private final long presentationTimeStampMs;
        private final int textureID;
        private final long timeStampMs;
        private final float[] transformMatrix;

        public DecodedTextureBuffer(int textureID, float[] transformMatrix, long presentationTimeStampMs, long timeStampMs, long ntpTimeStampMs, long decodeTimeMs, long frameDelay) {
            this.textureID = textureID;
            this.transformMatrix = transformMatrix;
            this.presentationTimeStampMs = presentationTimeStampMs;
            this.timeStampMs = timeStampMs;
            this.ntpTimeStampMs = ntpTimeStampMs;
            this.decodeTimeMs = decodeTimeMs;
            this.frameDelayMs = frameDelay;
        }
    }

    private static class DecoderProperties {
        public final String codecName;
        public final int colorFormat;

        public DecoderProperties(String codecName, int colorFormat) {
            this.codecName = codecName;
            this.colorFormat = colorFormat;
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

    @TargetApi(21)
    private InputBufferInfo dequeueInputBufferAvailable() {
        InputBufferInfo inputBufferInfo;
        synchronized (this.decoderCallback.availableInputIndexes) {
            try {
                Iterator<Integer> it = this.decoderCallback.availableInputIndexes.iterator();
                if (it.hasNext()) {
                    int iIntValue = it.next().intValue();
                    it.remove();
                    try {
                        inputBufferInfo = new InputBufferInfo(iIntValue, this.mediaCodec.getInputBuffer(iIntValue));
                    } catch (IllegalStateException e) {
                        Logging.e(TAG, "codec exception: " + e.getMessage());
                        inputBufferInfo = new InputBufferInfo(-2, null);
                    }
                } else {
                    Logging.e(TAG, "no input buffer available");
                    inputBufferInfo = new InputBufferInfo(-1, null);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return inputBufferInfo;
    }

    private DecodedOutputBuffer dequeueOutputBuffer(int dequeueTimeoutMs) {
        long j6;
        checkOnMediaCodecThread();
        if (this.decodeStartTimeMs.isEmpty()) {
            return null;
        }
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        while (true) {
            int iDequeueOutputBuffer = this.mediaCodec.dequeueOutputBuffer(bufferInfo, TimeUnit.MILLISECONDS.toMicros(dequeueTimeoutMs));
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
                    long size = this.decodeStartTimeMs.size();
                    TimeStamps timeStampsRemove = this.decodeStartTimeMs.remove();
                    long jElapsedRealtime = SystemClock.elapsedRealtime() - timeStampsRemove.decodeStartTimeMs;
                    if (jElapsedRealtime > 2000) {
                        Logging.w(TAG, "Very high decode time: " + jElapsedRealtime + "ms.");
                        j6 = 2000L;
                    } else {
                        j6 = jElapsedRealtime;
                    }
                    return new DecodedOutputBuffer(iDequeueOutputBuffer, this.outputBuffers[iDequeueOutputBuffer], bufferInfo.offset, bufferInfo.size, TimeUnit.MICROSECONDS.toMillis(bufferInfo.presentationTimeUs), timeStampsRemove.timeStampMs, timeStampsRemove.ntpTimeStampMs, j6, SystemClock.elapsedRealtime(), size);
                }
                handleOutputFormatChanged(this.mediaCodec.getOutputFormat());
            }
        }
    }

    public static void disableH264HwCodec() {
        Logging.w(TAG, "H.264 decoding is disabled by application.");
        hwDecoderDisabledTypes.add("video/avc");
    }

    public static void disableH265HwCodec() {
        Logging.w(TAG, "H.265 decoding is disabled by application.");
        hwDecoderDisabledTypes.add("video/hevc");
    }

    public static void disableVp8HwCodec() {
        Logging.w(TAG, "VP8 decoding is disabled by application.");
        hwDecoderDisabledTypes.add("video/x-vnd.on2.vp8");
    }

    public static void disableVp9HwCodec() {
        Logging.w(TAG, "VP9 decoding is disabled by application.");
        hwDecoderDisabledTypes.add("video/x-vnd.on2.vp9");
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0088 A[LOOP:2: B:31:0x0086->B:32:0x0088, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:37:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:42:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:46:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ad A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x00d5 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:32:0x0088, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:40:0x00c1, please report this as an issue */
    private static DecoderProperties findDecoder(String mime, String[] supportedCodecPrefixes) {
        MediaCodecInfo codecInfoAt;
        int i10;
        Iterator<Integer> it;
        int iIntValue;
        int i11;
        Logging.i(TAG, "Trying to find HW decoder for mime " + mime);
        int i12 = 0;
        while (true) {
            String name = null;
            if (i12 >= MediaCodecList.getCodecCount()) {
                Logging.i(TAG, "No HW decoder found for mime " + mime);
                return null;
            }
            try {
                codecInfoAt = MediaCodecList.getCodecInfoAt(i12);
            } catch (IllegalArgumentException e) {
                Logging.e(TAG, "Cannot retrieve decoder codec info", e);
                codecInfoAt = null;
            }
            if (codecInfoAt != null && !codecInfoAt.isEncoder()) {
                for (String str : codecInfoAt.getSupportedTypes()) {
                    if (str.equals(mime)) {
                        name = codecInfoAt.getName();
                        break;
                    }
                }
                if (name == null) {
                    continue;
                } else {
                    Logging.i(TAG, "Found candidate decoder: " + name);
                    if (!preferGoogleSoftwareDecoder) {
                        int length = supportedCodecPrefixes.length;
                        int i13 = 0;
                        while (true) {
                            if (i13 >= length) {
                                continue;
                            } else if (name.startsWith(supportedCodecPrefixes[i13])) {
                                MediaCodecInfo.CodecCapabilities capabilitiesForType = codecInfoAt.getCapabilitiesForType(mime);
                                for (int i14 : capabilitiesForType.colorFormats) {
                                    Logging.d(TAG, "   Color: 0x" + Integer.toHexString(i14));
                                }
                                if (name.startsWith("OMX.rk.")) {
                                    return new DecoderProperties(name, 21);
                                }
                                it = supportedColorList.iterator();
                                while (it.hasNext()) {
                                    iIntValue = it.next().intValue();
                                    for (int i15 : capabilitiesForType.colorFormats) {
                                        if (i15 == iIntValue) {
                                            Logging.i(TAG, "Found target decoder " + name + ". Color: 0x" + Integer.toHexString(i15));
                                            return new DecoderProperties(name, i15);
                                        }
                                    }
                                }
                            } else {
                                i13++;
                            }
                        }
                    } else if (name.startsWith("OMX.google.")) {
                        MediaCodecInfo.CodecCapabilities capabilitiesForType2 = codecInfoAt.getCapabilitiesForType(mime);
                        while (i10 < r6) {
                            Logging.d(TAG, "   Color: 0x" + Integer.toHexString(i14));
                        }
                        if (name.startsWith("OMX.rk.")) {
                            return new DecoderProperties(name, 21);
                        }
                        it = supportedColorList.iterator();
                        while (it.hasNext()) {
                            iIntValue = it.next().intValue();
                            while (i11 < r8) {
                                if (i15 == iIntValue) {
                                    Logging.i(TAG, "Found target decoder " + name + ". Color: 0x" + Integer.toHexString(i15));
                                    return new DecoderProperties(name, i15);
                                }
                            }
                        }
                    } else {
                        continue;
                    }
                }
            }
            i12++;
        }
    }

    private void getDecoderProperties(int codec) {
        MediaCodecInfo codecInfoAt;
        String[] strArr = {"video/x-vnd.on2.vp8", "video/x-vnd.on2.vp9", "video/avc", "video/hevc"};
        this.supportCodecs = 0;
        String name = null;
        for (int i10 = 0; i10 < MediaCodecList.getCodecCount(); i10++) {
            try {
                codecInfoAt = MediaCodecList.getCodecInfoAt(i10);
            } catch (IllegalArgumentException e) {
                Logging.e(TAG, "Cannot retrieve decoder codec info", e);
                codecInfoAt = null;
            }
            if (codecInfoAt != null && !codecInfoAt.isEncoder()) {
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
                        this.codecName = name;
                        this.supportInstances = codecInfoAt.getCapabilitiesForType(strArr[codec]).getMaxSupportedInstances();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleOutputFormatChanged(MediaFormat format) {
        Logging.i(TAG, "Decoder format changed: " + format.toString());
        int integer = format.getInteger("width");
        int integer2 = format.getInteger("height");
        if (this.hasDecodedFirstFrame && (integer != this.width || integer2 != this.height)) {
            Logging.w(TAG, "Decoder format changed. Configured " + this.width + "*" + this.height + ". New " + integer + "*" + integer2);
        }
        this.width = format.getInteger("width");
        this.height = format.getInteger("height");
        if (format.containsKey("stride")) {
            this.stride = format.getInteger("stride");
        }
        if (format.containsKey("slice-height")) {
            this.sliceHeight = format.getInteger("slice-height");
        }
        if (format.containsKey("crop-left") && format.containsKey("crop-right")) {
            this.cropWidth = (format.getInteger("crop-right") - format.getInteger("crop-left")) + 1;
        } else {
            this.cropWidth = this.width;
        }
        if (format.containsKey("crop-bottom") && format.containsKey("crop-top")) {
            this.cropHeight = (format.getInteger("crop-bottom") - format.getInteger("crop-top")) + 1;
        } else {
            this.cropHeight = this.height;
        }
        Logging.i(TAG, "Frame stride and slice height: " + this.stride + " x " + this.sliceHeight);
        Logging.i(TAG, "Crop width and height: " + this.cropWidth + " x " + this.cropHeight);
        this.stride = Math.max(this.width, this.stride);
        this.sliceHeight = Math.max(this.height, this.sliceHeight);
    }

    @SuppressLint({"NewApi"})
    private boolean initDecode(int codec, int width, int height, SurfaceTextureHelper surfaceTextureHelper, boolean useAsyncMode, Looper callbackLooper, long nativeHandle) {
        String[] strArr;
        String str;
        if (this.mediaCodecThread != null) {
            throw new RuntimeException("initDecode: Forgot to release()?");
        }
        if (currentInstances.get() >= this.supportInstances) {
            return false;
        }
        currentInstances.incrementAndGet();
        this.useSurface = surfaceTextureHelper != null;
        VideoCodecType videoCodecType = VideoCodecType.values()[codec];
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
            if (videoCodecType != VideoCodecType.VIDEO_CODEC_H265) {
                throw new RuntimeException("initDecode: Non-supported codec " + videoCodecType);
            }
            strArr = supportedH265HwCodecPrefixes;
            str = "video/hevc";
        }
        DecoderProperties decoderPropertiesFindDecoder = findDecoder(str, strArr);
        if (decoderPropertiesFindDecoder == null) {
            throw new RuntimeException("Cannot find HW decoder for " + videoCodecType);
        }
        Logging.d(TAG, "Java initDecode: " + videoCodecType + " : " + width + " x " + height + ". Color: 0x" + Integer.toHexString(decoderPropertiesFindDecoder.colorFormat) + ". Use Surface: " + this.useSurface + ". Use async mode: " + useAsyncMode + ". nativeHandle: " + nativeHandle);
        runningInstance = this;
        this.mediaCodecThread = Thread.currentThread();
        try {
            this.width = width;
            this.height = height;
            this.stride = width;
            this.sliceHeight = height;
            this.cropWidth = width;
            this.cropHeight = height;
            MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat(str, width, height);
            if (!this.useSurface) {
                mediaFormatCreateVideoFormat.setInteger("color-format", decoderPropertiesFindDecoder.colorFormat);
            }
            Logging.d(TAG, "  Format: " + mediaFormatCreateVideoFormat);
            MediaCodec mediaCodecCreateByCodecName = MediaCodecVideoEncoder.createByCodecName(decoderPropertiesFindDecoder.codecName);
            this.mediaCodec = mediaCodecCreateByCodecName;
            if (mediaCodecCreateByCodecName == null) {
                Logging.e(TAG, "Can not create media decoder");
                return false;
            }
            this.nativeHandle = nativeHandle;
            this.useAsyncMode = useAsyncMode;
            if (useAsyncMode) {
                this.decoderCallback = new MediaCodecDecoderCallback();
                if (callbackLooper == null) {
                    HandlerThread handlerThread = new HandlerThread("decoderAsyncHandler");
                    this.asyncHandlerThread = handlerThread;
                    handlerThread.start();
                    callbackLooper = this.asyncHandlerThread.getLooper();
                }
                this.mediaCodec.setCallback(this.decoderCallback, new Handler(callbackLooper));
            }
            this.mediaCodec.configure(mediaFormatCreateVideoFormat, this.surface, (MediaCrypto) null, 0);
            this.mediaCodec.start();
            Logging.d(TAG, "MediaCodec started");
            this.colorFormat = decoderPropertiesFindDecoder.colorFormat;
            if (!useAsyncMode) {
                this.outputBuffers = this.mediaCodec.getOutputBuffers();
                this.inputBuffers = this.mediaCodec.getInputBuffers();
                Logging.i(TAG, "Input buffers: " + this.inputBuffers.length + ". Output buffers: " + this.outputBuffers.length);
            }
            this.decodeStartTimeMs.clear();
            this.hasDecodedFirstFrame = false;
            this.dequeuedSurfaceOutputBuffers.clear();
            this.droppedFrames = 0;
            return true;
        } catch (IllegalStateException e) {
            Logging.e(TAG, "initDecode failed", e);
            return false;
        }
    }

    public static boolean isH264HwSupported() {
        return (hwDecoderDisabledTypes.contains("video/avc") || findDecoder("video/avc", supportedH264HwCodecPrefixes) == null) ? false : true;
    }

    public static boolean isH265HwSupported() {
        return (hwDecoderDisabledTypes.contains("video/hevc") || findDecoder("video/hevc", supportedH265HwCodecPrefixes) == null) ? false : true;
    }

    public static boolean isVp8HwSupported() {
        return (hwDecoderDisabledTypes.contains("video/x-vnd.on2.vp8") || findDecoder("video/x-vnd.on2.vp8", supportedVp8HwCodecPrefixes) == null) ? false : true;
    }

    public static boolean isVp9HwSupported() {
        return (hwDecoderDisabledTypes.contains("video/x-vnd.on2.vp9") || findDecoder("video/x-vnd.on2.vp9", supportedVp9HwCodecPrefixes) == null) ? false : true;
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

    private boolean queueInputBuffer(int inputBufferIndex, int size, long presentationTimeStamUs, long timeStampMs, long ntpTimeStamp) {
        checkOnMediaCodecThread();
        try {
            if (!this.useAsyncMode) {
                this.inputBuffers[inputBufferIndex].position(0);
                this.inputBuffers[inputBufferIndex].limit(size);
            }
            this.decodeStartTimeMs.add(new TimeStamps(SystemClock.elapsedRealtime(), timeStampMs, ntpTimeStamp));
            this.mediaCodec.queueInputBuffer(inputBufferIndex, 0, size, presentationTimeStamUs, 0);
            return true;
        } catch (IllegalStateException e) {
            Logging.e(TAG, "decode failed", e);
            return false;
        }
    }

    @SuppressLint({"NewApi"})
    private void release() {
        Logging.i(TAG, "Java releaseDecoder. Total number of dropped frames: " + this.droppedFrames);
        checkOnMediaCodecThread();
        if (this.useAsyncMode) {
            HandlerThread handlerThread = this.asyncHandlerThread;
            if (handlerThread != null) {
                handlerThread.quit();
                this.asyncHandlerThread = null;
            }
            synchronized (this.decoderCallback) {
                this.decoderCallback.isObsolete = true;
            }
            this.decoderCallback = null;
        }
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
        if (!ThreadUtils.awaitUninterruptibly(countDownLatch, 5000L)) {
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
        currentInstances.decrementAndGet();
        Logging.d(TAG, "Java releaseDecoder done");
    }

    private void reset(int width, int height) {
        if (this.mediaCodecThread == null || this.mediaCodec == null) {
            throw new RuntimeException("Incorrect reset call for non-initialized decoder.");
        }
        Logging.i(TAG, "Java reset: " + width + " x " + height);
        if (this.useAsyncMode) {
            this.mediaCodec.flush();
            synchronized (this.decoderCallback.availableInputIndexes) {
                this.decoderCallback.availableInputIndexes.clear();
            }
            this.mediaCodec.start();
            Logging.d(TAG, "MediaCodec restarted");
        } else {
            this.mediaCodec.flush();
        }
        this.width = width;
        this.height = height;
        this.decodeStartTimeMs.clear();
        this.dequeuedSurfaceOutputBuffers.clear();
        this.hasDecodedFirstFrame = false;
        this.droppedFrames = 0;
    }

    @Deprecated
    private int dequeueInputBuffer() {
        checkOnMediaCodecThread();
        try {
            return this.mediaCodec.dequeueInputBuffer(100000L);
        } catch (IllegalStateException e) {
            Logging.e(TAG, "dequeueIntputBuffer failed", e);
            return -2;
        }
    }

    private void returnDecodedOutputBuffer(int index) throws IllegalStateException {
        checkOnMediaCodecThread();
        if (!this.useSurface) {
            this.mediaCodec.releaseOutputBuffer(index, false);
            return;
        }
        throw new IllegalStateException("returnDecodedOutputBuffer() called for surface decoding.");
    }
}
