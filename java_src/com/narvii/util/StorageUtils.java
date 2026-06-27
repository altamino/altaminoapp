package com.narvii.util;

import android.os.Environment;
import android.os.StatFs;

/* loaded from: classes3.dex */
public class StorageUtils {
    public static boolean externalMemoryAvailable() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static long getAvailableInternalMemorySize() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getAvailableBlocks() * statFs.getBlockSize();
    }

    public static long getTotalInternalMemorySize() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getBlockCount() * statFs.getBlockSize();
    }

    public static long getAvailableExternalMemorySize() {
        if (!externalMemoryAvailable()) {
            return 0L;
        }
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return statFs.getAvailableBlocks() * statFs.getBlockSize();
    }

    public static long getTotalExternalMemorySize() {
        if (!externalMemoryAvailable()) {
            return 0L;
        }
        StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        return statFs.getBlockCount() * statFs.getBlockSize();
    }

    public static String formatSize(long j) {
        String str;
        if (j >= 1024) {
            j /= 1024;
            if (j >= 1024) {
                j /= 1024;
                str = "MB";
            } else {
                str = "KB";
            }
        } else {
            str = null;
        }
        StringBuilder sb = new StringBuilder(Long.toString(j));
        for (int length = sb.length() - 3; length > 0; length -= 3) {
            sb.insert(length, ',');
        }
        if (str != null) {
            sb.append(str);
        }
        return sb.toString();
    }
}
