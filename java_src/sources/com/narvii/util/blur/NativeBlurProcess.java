package com.narvii.util.blur;

import android.graphics.Bitmap;
import android.os.SystemClock;
import com.narvii.util.Log;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes8.dex */
public class NativeBlurProcess {
    static final ExecutorService EXECUTOR;
    static final int EXECUTOR_THREADS;
    public static final int MAX_BLUR_RADIUS = 254;
    private static boolean nativeLoaded;

    private static class NativeTask implements Callable<Void> {
        private final Bitmap _bitmapOut;
        private final int _coreIndex;
        private final int _radius;
        private final int _round;
        private final int _totalCores;

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            NativeBlurProcess.functionToBlur(this._bitmapOut, this._radius, this._totalCores, this._coreIndex, this._round);
            return null;
        }

        public NativeTask(Bitmap bitmap, int i10, int i11, int i12, int i13) {
            this._bitmapOut = bitmap;
            this._radius = i10;
            this._totalCores = i11;
            this._coreIndex = i12;
            this._round = i13;
        }
    }

    private static native boolean a();

    /* JADX INFO: Access modifiers changed from: private */
    public static native void functionToBlur(Bitmap bitmap, int i10, int i11, int i12, int i13);

    static {
        boolean zA;
        try {
            System.loadLibrary("blur");
            zA = a();
        } catch (Throwable th) {
            Log.e("native blur processor fail to load", th);
            zA = false;
        }
        nativeLoaded = zA;
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        EXECUTOR_THREADS = iAvailableProcessors;
        EXECUTOR = Executors.newFixedThreadPool(iAvailableProcessors);
    }

    public Bitmap blur(Bitmap bitmap, float f) {
        float fMin = Math.min(f, 254.0f);
        if (!nativeLoaded) {
            Log.w("native blur processor not loaded, use original bitmap");
            return bitmap;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        Bitmap bitmapCopy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
        int i10 = EXECUTOR_THREADS;
        ArrayList arrayList = new ArrayList(i10);
        ArrayList arrayList2 = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = (int) fMin;
            int i13 = i11;
            arrayList.add(new NativeTask(bitmapCopy, i12, i10, i13, 1));
            arrayList2.add(new NativeTask(bitmapCopy, i12, i10, i13, 2));
        }
        try {
            ExecutorService executorService = EXECUTOR;
            executorService.invokeAll(arrayList);
            executorService.invokeAll(arrayList2);
            Log.d("native blur process in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms");
        } catch (InterruptedException unused) {
        }
        return bitmapCopy;
    }
}
