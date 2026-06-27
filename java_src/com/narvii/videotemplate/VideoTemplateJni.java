package com.narvii.videotemplate;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.narvii.scene.template.data.SceneTemplateExtraInfo;
import com.narvii.util.BlockingItem;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class VideoTemplateJni {
    public static BlockingItem<String> CONDITION = null;
    public static int ERROR_ABORT = 1;
    public static int ERROR_AV_MIX = 7;
    public static int ERROR_EGL_INIT_FAILED = 2;
    public static int ERROR_ENCODER_INIT_FAILED = 5;
    public static int ERROR_ENCODE_FRAME_FAILED = 6;
    public static int ERROR_FRAME_DECODE_FAILED = 3;
    public static int ERROR_NONE = 0;
    public static int ERROR_SWS_SCALE_FAILED = 4;
    public static int ERROR_WATERMARK = 8;
    private static String TAG = "VIDEO_TEMPLATE";
    private static Context context = null;
    public static boolean vTemplateInstalled = true;
    private static IVideoTemplateEventCallback videoTemplateEventCallback;
    private static Intent progressIntent = new Intent(TemplateServiceKt.VIDEO_TEMPLATE_COMPILE_PROGRESS);
    private static ProgressCallbackRunnable progressCallbackRunnable = new ProgressCallbackRunnable();

    public interface IVideoTemplateEventCallback {
        void onError(int i);

        void onFinish();

        void onProgress(float f);
    }

    private static native void nativeCreate(TemplateSegment[] templateSegmentArr);

    private static native void nativeDestroy();

    private static native void nativeStart(String[] strArr, SceneTemplateExtraInfo[] sceneTemplateExtraInfoArr, String str, int i, int i2);

    private static native void nativeStop();

    static {
        String str = Build.CPU_ABI;
        if (str == null || !str.startsWith("arm")) {
            return;
        }
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
            System.loadLibrary("yuv");
            System.loadLibrary("vtemplate");
        } catch (Throwable th) {
            Log.e(TAG, th.getMessage());
            vTemplateInstalled = false;
        }
    }

    private static class ProgressCallbackRunnable implements Runnable {
        private float progress;

        private ProgressCallbackRunnable() {
            this.progress = 0.0f;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VideoTemplateJni.videoTemplateEventCallback != null) {
                VideoTemplateJni.videoTemplateEventCallback.onProgress(this.progress);
            }
        }
    }

    public static void onProgressFromNative(float f) {
        progressCallbackRunnable.progress = f;
        Utils.post(progressCallbackRunnable);
        if (context != null) {
            progressIntent.putExtra("com.narvii.videotemplate.progress", f);
            context.sendBroadcast(progressIntent);
        }
    }

    public static void onErrorFromNative(final int i) {
        if (videoTemplateEventCallback != null) {
            Utils.post(new Runnable() { // from class: com.narvii.videotemplate.VideoTemplateJni.1
                @Override // java.lang.Runnable
                public void run() {
                    VideoTemplateJni.videoTemplateEventCallback.onError(i);
                }
            });
        }
        BlockingItem<String> blockingItem = CONDITION;
        if (blockingItem != null) {
            blockingItem.put("ERROR");
        }
        if (context != null) {
            Intent intent = new Intent(TemplateServiceKt.VIDEO_TEMPLATE_COMPILE_ERROR);
            intent.putExtra("com.narvii.videotemplate.errorType", i);
            context.sendBroadcast(intent);
        }
    }

    public static void onFinishFromNative() {
        if (videoTemplateEventCallback != null) {
            Utils.post(new Runnable() { // from class: com.narvii.videotemplate.VideoTemplateJni.2
                @Override // java.lang.Runnable
                public void run() {
                    VideoTemplateJni.videoTemplateEventCallback.onFinish();
                }
            });
        }
        BlockingItem<String> blockingItem = CONDITION;
        if (blockingItem != null) {
            blockingItem.put("FINISH");
        }
        if (context != null) {
            context.sendBroadcast(new Intent(TemplateServiceKt.VIDEO_TEMPLATE_COMPILE_FINISH));
        }
    }

    public static void setVideoTemplateEventCallback(IVideoTemplateEventCallback iVideoTemplateEventCallback) {
        videoTemplateEventCallback = iVideoTemplateEventCallback;
    }

    public static void removeVideoTemplateEventCallback() {
        videoTemplateEventCallback = null;
    }

    public static void bindContext(Context context2) {
        context = context2;
    }

    public static void unbindContext() {
        context = null;
    }

    public static void create(ArrayList<TemplateSegment> arrayList) {
        if (arrayList != null && vTemplateInstalled) {
            nativeCreate((TemplateSegment[]) arrayList.toArray(new TemplateSegment[0]));
        }
    }

    public static void start(String[] strArr, SceneTemplateExtraInfo[] sceneTemplateExtraInfoArr, String str, int i, int i2) {
        if (vTemplateInstalled) {
            nativeStart(strArr, sceneTemplateExtraInfoArr, str, i, i2);
        }
    }

    public static void stop() {
        if (vTemplateInstalled) {
            nativeStop();
        }
    }

    public static void destroy() {
        if (vTemplateInstalled) {
            nativeDestroy();
        }
    }
}
