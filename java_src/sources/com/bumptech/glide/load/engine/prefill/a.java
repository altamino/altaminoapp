package com.bumptech.glide.load.engine.prefill;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.cache.h;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.resource.bitmap.f;
import com.bumptech.glide.util.k;
import java.security.MessageDigest;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes7.dex */
final class a implements Runnable {
    static final int BACKOFF_RATIO = 4;
    static final long INITIAL_BACKOFF_MS = 40;
    static final long MAX_DURATION_MS = 32;

    @VisibleForTesting
    static final String TAG = "PreFillRunner";
    private final com.bumptech.glide.load.engine.bitmap_recycle.d bitmapPool;
    private final C0128a clock;
    private long currentDelay;
    private final Handler handler;
    private boolean isCancelled;
    private final h memoryCache;
    private final Set<d> seenTypes;
    private final c toPrefill;
    private static final C0128a DEFAULT_CLOCK = new C0128a();
    static final long MAX_BACKOFF_MS = TimeUnit.SECONDS.toMillis(1);

    private static final class b implements g {
        @Override // com.bumptech.glide.load.g
        public void b(@NonNull MessageDigest messageDigest) {
            throw new UnsupportedOperationException();
        }

        b() {
        }
    }

    public a(com.bumptech.glide.load.engine.bitmap_recycle.d dVar, h hVar, c cVar) {
        this(dVar, hVar, cVar, DEFAULT_CLOCK, new Handler(Looper.getMainLooper()));
    }

    /* JADX INFO: renamed from: com.bumptech.glide.load.engine.prefill.a$a, reason: collision with other inner class name */
    @VisibleForTesting
    static class C0128a {
        C0128a() {
        }

        long a() {
            return SystemClock.currentThreadTimeMillis();
        }
    }

    private long b() {
        return this.memoryCache.d() - this.memoryCache.getCurrentSize();
    }

    private long c() {
        long j6 = this.currentDelay;
        this.currentDelay = Math.min(4 * j6, MAX_BACKOFF_MS);
        return j6;
    }

    private boolean d(long j6) {
        return this.clock.a() - j6 >= 32;
    }

    @VisibleForTesting
    boolean a() {
        Bitmap bitmapCreateBitmap;
        long jA = this.clock.a();
        while (!this.toPrefill.a() && !d(jA)) {
            d dVarB = this.toPrefill.b();
            if (this.seenTypes.contains(dVarB)) {
                bitmapCreateBitmap = Bitmap.createBitmap(dVarB.c(), dVarB.b(), dVarB.a());
            } else {
                this.seenTypes.add(dVarB);
                bitmapCreateBitmap = this.bitmapPool.e(dVarB.c(), dVarB.b(), dVarB.a());
            }
            int iG = k.g(bitmapCreateBitmap);
            if (b() >= iG) {
                this.memoryCache.c(new b(), f.d(bitmapCreateBitmap, this.bitmapPool));
            } else {
                this.bitmapPool.c(bitmapCreateBitmap);
            }
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "allocated [" + dVarB.c() + "x" + dVarB.b() + "] " + dVarB.a() + " size: " + iG);
            }
        }
        return (this.isCancelled || this.toPrefill.a()) ? false : true;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (a()) {
            this.handler.postDelayed(this, c());
        }
    }

    @VisibleForTesting
    a(com.bumptech.glide.load.engine.bitmap_recycle.d dVar, h hVar, c cVar, C0128a c0128a, Handler handler) {
        this.seenTypes = new HashSet();
        this.currentDelay = INITIAL_BACKOFF_MS;
        this.bitmapPool = dVar;
        this.memoryCache = hVar;
        this.toPrefill = cVar;
        this.clock = c0128a;
        this.handler = handler;
    }
}
