package com.narvii.video.ui;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.io.File;

/* loaded from: classes3.dex */
public class Utils {
    private static boolean DEBUG = false;
    public static final String TAG = "AVChat";
    public static final Handler handler = new Handler(Looper.getMainLooper());

    public static void post(Runnable runnable) {
        handler.post(runnable);
    }

    public static void postDelayed(Runnable runnable, long j) {
        handler.postDelayed(runnable, j);
    }

    public static void log(String str, String str2) {
        if (DEBUG) {
            Log.d(TAG, str2);
        }
    }

    public static void log(String str) {
        if (DEBUG) {
            Log.d(TAG, str);
        }
    }

    public static void logW(String str, String str2) {
        if (DEBUG) {
            Log.w(str, str2);
        }
    }

    public static void logE(String str) {
        logE(TAG, str);
    }

    public static void logE(String str, String str2) {
        if (DEBUG) {
            Log.e(str, str2);
        }
    }

    public static File getAvailableFileDir(Context context) {
        File externalFilesDir = context.getExternalFilesDir(null);
        return (externalFilesDir == null || !externalFilesDir.isDirectory()) ? context.getFilesDir() : externalFilesDir;
    }
}
