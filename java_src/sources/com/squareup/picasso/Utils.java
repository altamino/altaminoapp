package com.squareup.picasso;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.StatFs;
import android.provider.Settings;
import android.util.Log;
import androidx.media3.datasource.cache.CacheDataSink;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.ThreadFactory;
import okio.BufferedSource;
import okio.ByteString;

/* JADX INFO: loaded from: classes8.dex */
final class Utils {
    private static final int KEY_PADDING = 50;
    static final char KEY_SEPARATOR = '\n';
    private static final int MAX_DISK_CACHE_SIZE = 52428800;
    private static final int MIN_DISK_CACHE_SIZE = 5242880;
    static final String OWNER_DISPATCHER = "Dispatcher";
    static final String OWNER_HUNTER = "Hunter";
    static final String OWNER_MAIN = "Main";
    private static final String PICASSO_CACHE = "picasso-cache";
    static final String THREAD_IDLE_NAME = "Picasso-Idle";
    static final int THREAD_LEAK_CLEANING_MS = 1000;
    static final String THREAD_PREFIX = "Picasso-";
    static final String VERB_BATCHED = "batched";
    static final String VERB_CANCELED = "canceled";
    static final String VERB_CHANGED = "changed";
    static final String VERB_COMPLETED = "completed";
    static final String VERB_CREATED = "created";
    static final String VERB_DECODED = "decoded";
    static final String VERB_DELIVERED = "delivered";
    static final String VERB_ENQUEUED = "enqueued";
    static final String VERB_ERRORED = "errored";
    static final String VERB_EXECUTING = "executing";
    static final String VERB_IGNORED = "ignored";
    static final String VERB_JOINED = "joined";
    static final String VERB_PAUSED = "paused";
    static final String VERB_REMOVED = "removed";
    static final String VERB_REPLAYING = "replaying";
    static final String VERB_RESUMED = "resumed";
    static final String VERB_RETRYING = "retrying";
    static final String VERB_TRANSFORMED = "transformed";
    static final StringBuilder MAIN_THREAD_KEY_BUILDER = new StringBuilder();
    private static final ByteString WEBP_FILE_HEADER_RIFF = ByteString.encodeUtf8("RIFF");
    private static final ByteString WEBP_FILE_HEADER_WEBP = ByteString.encodeUtf8("WEBP");

    private static class PicassoThread extends Thread {
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(10);
            super.run();
        }

        PicassoThread(Runnable runnable) {
            super(runnable);
        }
    }

    static class PicassoThreadFactory implements ThreadFactory {
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new PicassoThread(runnable);
        }

        PicassoThreadFactory() {
        }
    }

    static String createKey(Request request) {
        StringBuilder sb = MAIN_THREAD_KEY_BUILDER;
        String strCreateKey = createKey(request, sb);
        sb.setLength(0);
        return strCreateKey;
    }

    static String getLogIdsForHunter(BitmapHunter bitmapHunter) {
        return getLogIdsForHunter(bitmapHunter, "");
    }

    static void log(String str, String str2, String str3) {
        log(str, str2, str3, "");
    }

    static int calculateMemoryCacheSize(Context context) {
        ActivityManager activityManager = (ActivityManager) getService(context, "activity");
        return (int) ((((long) ((context.getApplicationInfo().flags & 1048576) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass())) * 1048576) / 7);
    }

    static <T> T checkNotNull(T t5, String str) {
        if (t5 != null) {
            return t5;
        }
        throw new NullPointerException(str);
    }

    static File createDefaultCacheDir(Context context) {
        File file = new File(context.getApplicationContext().getCacheDir(), PICASSO_CACHE);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    static void flushStackLocalLeaks(Looper looper) {
        Handler handler = new Handler(looper) { // from class: com.squareup.picasso.Utils.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                sendMessageDelayed(obtainMessage(), 1000L);
            }
        };
        handler.sendMessageDelayed(handler.obtainMessage(), 1000L);
    }

    static String getLogIdsForHunter(BitmapHunter bitmapHunter, String str) {
        StringBuilder sb = new StringBuilder(str);
        Action action = bitmapHunter.getAction();
        if (action != null) {
            sb.append(action.request.logId());
        }
        List<Action> actions = bitmapHunter.getActions();
        if (actions != null) {
            int size = actions.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (i10 > 0 || action != null) {
                    sb.append(", ");
                }
                sb.append(actions.get(i10).request.logId());
            }
        }
        return sb.toString();
    }

    static int getResourceId(Resources resources, Request request) throws FileNotFoundException {
        Uri uri;
        int i10 = request.resourceId;
        if (i10 != 0 || (uri = request.uri) == null) {
            return i10;
        }
        String authority = uri.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + request.uri);
        }
        List<String> pathSegments = request.uri.getPathSegments();
        if (pathSegments == null || pathSegments.isEmpty()) {
            throw new FileNotFoundException("No path segments: " + request.uri);
        }
        if (pathSegments.size() == 1) {
            try {
                return Integer.parseInt(pathSegments.get(0));
            } catch (NumberFormatException unused) {
                throw new FileNotFoundException("Last path segment is not a resource ID: " + request.uri);
            }
        }
        if (pathSegments.size() == 2) {
            return resources.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
        }
        throw new FileNotFoundException("More than two path segments: " + request.uri);
    }

    static Resources getResources(Context context, Request request) throws FileNotFoundException {
        Uri uri;
        if (request.resourceId != 0 || (uri = request.uri) == null) {
            return context.getResources();
        }
        String authority = uri.getAuthority();
        if (authority == null) {
            throw new FileNotFoundException("No package provided: " + request.uri);
        }
        try {
            return context.getPackageManager().getResourcesForApplication(authority);
        } catch (PackageManager.NameNotFoundException unused) {
            throw new FileNotFoundException("Unable to obtain resources for package: " + request.uri);
        }
    }

    static boolean isWebPFile(BufferedSource bufferedSource) throws IOException {
        return bufferedSource.rangeEquals(0L, WEBP_FILE_HEADER_RIFF) && bufferedSource.rangeEquals(8L, WEBP_FILE_HEADER_WEBP);
    }

    static void log(String str, String str2, String str3, String str4) {
        Log.d("Picasso", String.format("%1$-11s %2$-12s %3$s %4$s", str, str2, str3, str4));
    }

    private Utils() {
    }

    @TargetApi(18)
    static long calculateDiskCacheSize(File file) {
        long blockCountLong;
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            blockCountLong = (statFs.getBlockCountLong() * statFs.getBlockSizeLong()) / 50;
        } catch (IllegalArgumentException unused) {
            blockCountLong = 5242880;
        }
        return Math.max(Math.min(blockCountLong, 52428800L), CacheDataSink.DEFAULT_FRAGMENT_SIZE);
    }

    static void checkMain() {
        if (isMain()) {
        } else {
            throw new IllegalStateException("Method call should happen from the main thread.");
        }
    }

    static void checkNotMain() {
        if (!isMain()) {
        } else {
            throw new IllegalStateException("Method call should not happen from the main thread.");
        }
    }

    static String createKey(Request request, StringBuilder sb) {
        String str = request.stableKey;
        if (str != null) {
            sb.ensureCapacity(str.length() + 50);
            sb.append(request.stableKey);
        } else {
            Uri uri = request.uri;
            if (uri != null) {
                String string = uri.toString();
                sb.ensureCapacity(string.length() + 50);
                sb.append(string);
            } else {
                sb.ensureCapacity(50);
                sb.append(request.resourceId);
            }
        }
        sb.append(KEY_SEPARATOR);
        if (request.rotationDegrees != 0.0f) {
            sb.append("rotation:");
            sb.append(request.rotationDegrees);
            if (request.hasRotationPivot) {
                sb.append('@');
                sb.append(request.rotationPivotX);
                sb.append('x');
                sb.append(request.rotationPivotY);
            }
            sb.append(KEY_SEPARATOR);
        }
        if (request.hasSize()) {
            sb.append("resize:");
            sb.append(request.targetWidth);
            sb.append('x');
            sb.append(request.targetHeight);
            sb.append(KEY_SEPARATOR);
        }
        if (request.centerCrop) {
            sb.append("centerCrop:");
            sb.append(request.centerCropGravity);
            sb.append(KEY_SEPARATOR);
        } else if (request.centerInside) {
            sb.append("centerInside");
            sb.append(KEY_SEPARATOR);
        }
        List<Transformation> list = request.transformations;
        if (list != null) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                sb.append(request.transformations.get(i10).key());
                sb.append(KEY_SEPARATOR);
            }
        }
        return sb.toString();
    }

    static int getBitmapBytes(Bitmap bitmap) {
        int allocationByteCount = bitmap.getAllocationByteCount();
        if (allocationByteCount >= 0) {
            return allocationByteCount;
        }
        throw new IllegalStateException("Negative size: " + bitmap);
    }

    static <T> T getService(Context context, String str) {
        return (T) context.getSystemService(str);
    }

    static boolean hasPermission(Context context, String str) {
        if (context.checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        return false;
    }

    static boolean isAirplaneModeOn(Context context) {
        try {
            if (Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) == 0) {
                return false;
            }
            return true;
        } catch (NullPointerException | SecurityException unused) {
            return false;
        }
    }

    static boolean isMain() {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            return true;
        }
        return false;
    }
}
