package io.agora.rtc.video;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import io.agora.rtc.internal.Logging;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import tv.danmaku.ijk.media.player.IjkMediaPlayer;

/* loaded from: classes4.dex */
public abstract class VideoCapture {
    private static final int kVideoI420 = 0;
    private static final int kVideoNV12 = 11;
    private static final int kVideoNV21 = 12;
    private static final int kVideoUnknown = 99;
    private static final int kVideoYUY2 = 2;
    private static final int kVideoYV12 = 1;
    protected int mCameraNativeOrientation;
    protected final Context mContext;
    protected final int mId;
    private int mLastRotation = -1;
    protected long mNativeVideoCaptureDeviceAndroid;

    public static int translateToAndroidFormat(int i) {
        if (i == 0) {
            return 35;
        }
        if (i == 1) {
            return IjkMediaPlayer.SDL_FCC_YV12;
        }
        if (i != 2) {
            return i != 12 ? 0 : 17;
        }
        return 20;
    }

    public static int translateToEngineFormat(int i) {
        if (i == 17) {
            return 12;
        }
        if (i == 20) {
            return 2;
        }
        if (i != 35) {
            return i != 842094169 ? 99 : 1;
        }
        return 0;
    }

    public native void NotifyCameraExposureAreaChanged(float f, float f2, float f3, float f4, long j);

    public native void NotifyCameraFocusAreaChanged(float f, float f2, float f3, float f4, long j);

    public native void ProvideCameraFrame(byte[] bArr, int i, long j);

    public native void ProvideCameraTexture(byte[] bArr, int i, long j);

    public abstract int UnRegisterNativeHandle();

    public abstract int allocate();

    public abstract void deallocate();

    public abstract float getMaxZoom();

    public native boolean isAutoFaceFocusEnabled(long j);

    public abstract boolean isAutoFaceFocusSupported();

    public abstract boolean isExposureSupported();

    public abstract boolean isFocusSupported();

    public abstract boolean isTorchSupported();

    public abstract boolean isZoomSupported();

    public native void onCameraError(long j, String str);

    public abstract int setAutoFaceFocus(boolean z);

    public abstract int setCaptureFormat(int i);

    public abstract int setExposure(float f, float f2, boolean z);

    public abstract int setFocus(float f, float f2, boolean z);

    public abstract int setTorchMode(boolean z);

    public abstract int setZoom(float f);

    public abstract int startCapture(int i, int i2, int i3);

    public abstract int stopCapture();

    VideoCapture(Context context, int i, long j) {
        this.mContext = context;
        this.mId = i;
        this.mNativeVideoCaptureDeviceAndroid = j;
    }

    public static String fetchCapability(int i, Context context) {
        return context.getSharedPreferences("CamCaps2", 0).getString("Cam_" + i, null);
    }

    public static void cacheCapability(int i, Context context, String str) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("CamCaps2", 0).edit();
        editorEdit.putString("Cam_" + i, str);
        editorEdit.commit();
    }

    public static boolean isEmulator() throws IOException {
        if ("nokia".equalsIgnoreCase(Build.MANUFACTURER) && ("Nokia_N1".equalsIgnoreCase(Build.DEVICE) || "N1".equalsIgnoreCase(Build.MODEL))) {
            return false;
        }
        try {
            Process processStart = new ProcessBuilder("/system/bin/cat", "/proc/cpuinfo").start();
            StringBuffer stringBuffer = new StringBuffer();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processStart.getInputStream(), "utf-8"));
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    break;
                }
                stringBuffer.append(line);
            }
            bufferedReader.close();
            String lowerCase = stringBuffer.toString().toLowerCase();
            return lowerCase.contains("intel") || lowerCase.contains("amd");
        } catch (IOException unused) {
            return false;
        }
    }

    private int checkOrientation() {
        Display defaultDisplay;
        Context context = this.mContext;
        if (context != null && context.getSystemService("window") != null && (defaultDisplay = ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay()) != null) {
            try {
                return defaultDisplay.getRotation();
            } catch (RuntimeException unused) {
                Logging.e("VideoCapture", "video capture checkOrientation display getRotation throwout exception");
                return this.mLastRotation;
            }
        }
        return this.mLastRotation;
    }
}
