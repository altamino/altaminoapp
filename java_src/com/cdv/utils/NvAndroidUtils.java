package com.cdv.utils;

import android.app.ActivityManager;
import android.content.Context;

/* loaded from: classes.dex */
public class NvAndroidUtils {
    private static final String TAG = "Meicam";

    public static long getSystemMemorySizeInBytes(Context context) {
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo.totalMem;
    }
}
