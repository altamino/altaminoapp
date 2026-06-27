package com.narvii.editors.ffmpeg;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.LongSparseArray;
import com.narvii.media.PhoneImagePickerFragment;
import com.narvii.util.Log;
import com.narvii.video.model.StreamInfo;
import com.narvii.video.services.FrameRetrieverManager;

/* loaded from: classes2.dex */
public class FFmpegJni {
    private static String TAG = "FFMPEG";
    public static boolean ffmpegInstalled = true;
    private static LongSparseArray<IFFMpegExecProgressCallback> progressCallbacks;

    public interface IFFMpegExecProgressCallback {
        void onProgress(float f);
    }

    private static native void nativeAbort(long j);

    private static native void nativeDestroyNativeThreadPool();

    private static native void nativeExecuteFrameRetrieving(String str, int i, int i2);

    private static native StreamInfo nativeFetchStreamInfo(String str);

    private static native void nativeInitNativeThreadPool(int i);

    private static native int nativeRun(String[] strArr, long j, int i, boolean z);

    static {
        String str = Build.CPU_ABI;
        if (str != null && str.startsWith("arm")) {
            try {
                System.loadLibrary("x264-157");
                System.loadLibrary("avutil");
                System.loadLibrary("avcodec");
                System.loadLibrary("avformat");
                System.loadLibrary("swscale");
                System.loadLibrary("avresample");
                System.loadLibrary("postproc");
                System.loadLibrary("swresample");
                System.loadLibrary("avfilter");
                System.loadLibrary("avdevice");
                System.loadLibrary("ffmpeg");
            } catch (Throwable th) {
                Log.e(TAG, th.getMessage());
                ffmpegInstalled = false;
                PhoneImagePickerFragment.ffmpegInstalled = false;
            }
        }
        progressCallbacks = new LongSparseArray<>();
    }

    public static int run(String[] strArr, long j, int i, boolean z) {
        if (ffmpegInstalled) {
            return nativeRun(strArr, j, i, z);
        }
        return -1;
    }

    public static StreamInfo fetchStreamInfo(String str) {
        if (ffmpegInstalled) {
            return nativeFetchStreamInfo(str);
        }
        return null;
    }

    public static void abort(long j) {
        if (ffmpegInstalled) {
            nativeAbort(j);
        }
    }

    public static void initNativeThreadPool(int i) {
        if (ffmpegInstalled) {
            nativeInitNativeThreadPool(i);
        }
    }

    public static void detroyNativeThreadPool() {
        if (ffmpegInstalled) {
            nativeDestroyNativeThreadPool();
        }
    }

    public static void executeFrameRetrieving(String str, int i, int i2) {
        if (ffmpegInstalled) {
            nativeExecuteFrameRetrieving(str, i, i2);
        }
    }

    public static long getThreadId() {
        return Thread.currentThread().getId();
    }

    public static int pollNextFrameRetrieveTask(String str) {
        FrameRetrieverManager.FrameRetrieveConfig frameRetrieveConfigPollNextTask = FrameRetrieverManager.Companion.pollNextTask(str);
        if (frameRetrieveConfigPollNextTask == null) {
            return -1;
        }
        return frameRetrieveConfigPollNextTask.getRealFrameTimeInMs();
    }

    public static void onBitmapLoaded(String str, int i, Bitmap bitmap) {
        FrameRetrieverManager.Companion.dispatchBitmap(str, i, bitmap);
    }

    public static void onProgressFromNative(float f, long j) {
        IFFMpegExecProgressCallback iFFMpegExecProgressCallback = progressCallbacks.get(j);
        if (iFFMpegExecProgressCallback == null) {
            return;
        }
        iFFMpegExecProgressCallback.onProgress(f);
    }

    public static void addProgressCallback(long j, IFFMpegExecProgressCallback iFFMpegExecProgressCallback) {
        if (iFFMpegExecProgressCallback == null) {
            return;
        }
        progressCallbacks.put(j, iFFMpegExecProgressCallback);
    }

    public static void removeProgressCallback(long j) {
        if (j == -1) {
            return;
        }
        progressCallbacks.remove(j);
    }
}
