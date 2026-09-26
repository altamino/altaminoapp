package com.bumptech.glide.load.engine.cache;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.VisibleForTesting;

/* JADX INFO: loaded from: classes8.dex */
public final class i {

    @VisibleForTesting
    static final int BYTES_PER_ARGB_8888_PIXEL = 4;
    private static final int LOW_MEMORY_BYTE_ARRAY_POOL_DIVISOR = 2;
    private static final String TAG = "MemorySizeCalculator";
    private final int arrayPoolSize;
    private final int bitmapPoolSize;
    private final Context context;
    private final int memoryCacheSize;

    public static final class a {
        static final int ARRAY_POOL_SIZE_BYTES = 4194304;
        static final int BITMAP_POOL_TARGET_SCREENS;
        static final float LOW_MEMORY_MAX_SIZE_MULTIPLIER = 0.33f;
        static final float MAX_SIZE_MULTIPLIER = 0.4f;

        @VisibleForTesting
        static final int MEMORY_CACHE_TARGET_SCREENS = 2;
        ActivityManager activityManager;
        float bitmapPoolScreens;
        final Context context;
        c screenDimensions;
        float memoryCacheScreens = 2.0f;
        float maxSizeMultiplier = MAX_SIZE_MULTIPLIER;
        float lowMemoryMaxSizeMultiplier = LOW_MEMORY_MAX_SIZE_MULTIPLIER;
        int arrayPoolSizeBytes = 4194304;

        static {
            BITMAP_POOL_TARGET_SCREENS = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public i a() {
            return new i(this);
        }

        public a(Context context) {
            this.bitmapPoolScreens = BITMAP_POOL_TARGET_SCREENS;
            this.context = context;
            this.activityManager = (ActivityManager) context.getSystemService("activity");
            this.screenDimensions = new b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT >= 26 && i.e(this.activityManager)) {
                this.bitmapPoolScreens = 0.0f;
            }
        }
    }

    private static final class b implements c {
        private final DisplayMetrics displayMetrics;

        @Override // com.bumptech.glide.load.engine.cache.i.c
        public int a() {
            return this.displayMetrics.heightPixels;
        }

        @Override // com.bumptech.glide.load.engine.cache.i.c
        public int b() {
            return this.displayMetrics.widthPixels;
        }

        b(DisplayMetrics displayMetrics) {
            this.displayMetrics = displayMetrics;
        }
    }

    interface c {
        int a();

        int b();
    }

    public int a() {
        return this.arrayPoolSize;
    }

    public int b() {
        return this.bitmapPoolSize;
    }

    public int d() {
        return this.memoryCacheSize;
    }

    private String f(int i10) {
        return Formatter.formatFileSize(this.context, i10);
    }

    i(a aVar) {
        int i10;
        boolean z6;
        this.context = aVar.context;
        if (e(aVar.activityManager)) {
            i10 = aVar.arrayPoolSizeBytes / 2;
        } else {
            i10 = aVar.arrayPoolSizeBytes;
        }
        this.arrayPoolSize = i10;
        int iC = c(aVar.activityManager, aVar.maxSizeMultiplier, aVar.lowMemoryMaxSizeMultiplier);
        float fB = aVar.screenDimensions.b() * aVar.screenDimensions.a() * 4;
        int iRound = Math.round(aVar.bitmapPoolScreens * fB);
        int iRound2 = Math.round(fB * aVar.memoryCacheScreens);
        int i11 = iC - i10;
        int i12 = iRound2 + iRound;
        if (i12 <= i11) {
            this.memoryCacheSize = iRound2;
            this.bitmapPoolSize = iRound;
        } else {
            float f = i11;
            float f6 = aVar.bitmapPoolScreens;
            float f7 = aVar.memoryCacheScreens;
            float f10 = f / (f6 + f7);
            this.memoryCacheSize = Math.round(f7 * f10);
            this.bitmapPoolSize = Math.round(f10 * aVar.bitmapPoolScreens);
        }
        if (Log.isLoggable(TAG, 3)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Calculation complete, Calculated memory cache size: ");
            sb.append(f(this.memoryCacheSize));
            sb.append(", pool size: ");
            sb.append(f(this.bitmapPoolSize));
            sb.append(", byte array size: ");
            sb.append(f(i10));
            sb.append(", memory class limited? ");
            if (i12 > iC) {
                z6 = true;
            } else {
                z6 = false;
            }
            sb.append(z6);
            sb.append(", max size: ");
            sb.append(f(iC));
            sb.append(", memoryClass: ");
            sb.append(aVar.activityManager.getMemoryClass());
            sb.append(", isLowMemoryDevice: ");
            sb.append(e(aVar.activityManager));
            Log.d(TAG, sb.toString());
        }
    }

    private static int c(ActivityManager activityManager, float f, float f6) {
        float memoryClass = activityManager.getMemoryClass() * 1048576;
        if (e(activityManager)) {
            f = f6;
        }
        return Math.round(memoryClass * f);
    }

    @TargetApi(19)
    static boolean e(ActivityManager activityManager) {
        return activityManager.isLowRamDevice();
    }
}
