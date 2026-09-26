package com.narvii.editors.ffmpeg;

import android.graphics.Bitmap;
import android.os.Build;
import android.util.LongSparseArray;
import androidx.annotation.Nullable;
import com.narvii.media.PhoneImagePickerFragment;
import com.narvii.util.Log;
import com.narvii.video.model.StreamInfo;
import com.narvii.video.services.FrameRetrieverManager;

/* JADX INFO: loaded from: classes9.dex */
public class FFmpegJni {
    private static String TAG = "FFMPEG";
    public static boolean ffmpegInstalled = true;
    private static LongSparseArray<IFFMpegExecProgressCallback> progressCallbacks;

    public interface IFFMpegExecProgressCallback {
        void onProgress(float f);
    }

    private static native void nativeAbort(long j6);

    private static native void nativeDestroyNativeThreadPool();

    private static native void nativeExecuteFrameRetrieving(String str, int i10, int i11);

    private static native StreamInfo nativeFetchStreamInfo(String str);

    private static native void nativeInitNativeThreadPool(int i10);

    private static native int nativeRun(String[] strArr, long j6, int i10, boolean z6);

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

    public static void abort(long j6) {
        if (ffmpegInstalled) {
            nativeAbort(j6);
        }
    }

    public static void addProgressCallback(long j6, IFFMpegExecProgressCallback iFFMpegExecProgressCallback) {
        if (iFFMpegExecProgressCallback == null) {
            return;
        }
        progressCallbacks.put(j6, iFFMpegExecProgressCallback);
    }

    public static void detroyNativeThreadPool() {
        if (ffmpegInstalled) {
            nativeDestroyNativeThreadPool();
        }
    }

    public static void executeFrameRetrieving(String str, int i10, int i11) {
        if (ffmpegInstalled) {
            nativeExecuteFrameRetrieving(str, i10, i11);
        }
    }

    @Nullable
    public static StreamInfo fetchStreamInfo(String str) {
        if (ffmpegInstalled) {
            return nativeFetchStreamInfo(str);
        }
        return null;
    }

    public static void initNativeThreadPool(int i10) {
        if (ffmpegInstalled) {
            nativeInitNativeThreadPool(i10);
        }
    }

    public static void onBitmapLoaded(String str, int i10, Bitmap bitmap) {
        FrameRetrieverManager.Companion.dispatchBitmap(str, i10, bitmap);
    }

    public static void onProgressFromNative(float f, long j6) {
        IFFMpegExecProgressCallback iFFMpegExecProgressCallback = progressCallbacks.get(j6);
        if (iFFMpegExecProgressCallback == null) {
            return;
        }
        iFFMpegExecProgressCallback.onProgress(f);
    }

    public static int pollNextFrameRetrieveTask(String str) {
        FrameRetrieverManager.FrameRetrieveConfig frameRetrieveConfigPollNextTask = FrameRetrieverManager.Companion.pollNextTask(str);
        if (frameRetrieveConfigPollNextTask == null) {
            return -1;
        }
        return frameRetrieveConfigPollNextTask.getRealFrameTimeInMs();
    }

    public static void removeProgressCallback(long j6) {
        if (j6 == -1) {
            return;
        }
        progressCallbacks.remove(j6);
    }

    public static int run(String[] strArr, long j6, int i10, boolean z6) {
        if (ffmpegInstalled) {
            return nativeRun(strArr, j6, i10, z6);
        }
        return -1;
    }

    public static long getThreadId() {
        return Thread.currentThread().getId();
    }
}
