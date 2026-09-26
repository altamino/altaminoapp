package com.narvii.util;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import android.webkit.MimeTypeMap;
import com.narvii.app.NVContext;

/* JADX INFO: loaded from: classes10.dex */
public class StorageUtils {
    public static String formatSize(long j6) {
        String str;
        if (j6 >= 1024) {
            j6 /= 1024;
            if (j6 >= 1024) {
                j6 /= 1024;
                str = "MB";
            } else {
                str = "KB";
            }
        } else {
            str = null;
        }
        StringBuilder sb = new StringBuilder(Long.toString(j6));
        for (int length = sb.length() - 3; length > 0; length -= 3) {
            sb.insert(length, kotlinx.serialization.json.internal.b.COMMA);
        }
        if (str != null) {
            sb.append(str);
        }
        return sb.toString();
    }

    public static boolean hasRootAccess(NVContext nVContext) {
        return new com.scottyab.rootbeer.b(nVContext.getContext()).n();
    }

    public static boolean externalMemoryAvailable() {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static long getAvailableExternalMemorySize(Context context) {
        if (externalMemoryAvailable()) {
            StatFs statFs = new StatFs(context.getExternalFilesDir("").getPath());
            return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
        }
        return 0L;
    }

    public static long getAvailableInternalMemorySize() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
    }

    public static String getMimeType(String str) {
        String fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(str);
        if (fileExtensionFromUrl != null) {
            return MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileExtensionFromUrl);
        }
        return null;
    }
}
