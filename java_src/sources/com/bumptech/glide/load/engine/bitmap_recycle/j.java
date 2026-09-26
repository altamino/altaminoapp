package com.bumptech.glide.load.engine.bitmap_recycle;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class j implements d {
    private static final Bitmap.Config DEFAULT_CONFIG = Bitmap.Config.ARGB_8888;
    private static final String TAG = "LruBitmapPool";
    private final Set<Bitmap.Config> allowedConfigs;
    private long currentSize;
    private int evictions;
    private int hits;
    private final long initialMaxSize;
    private long maxSize;
    private int misses;
    private int puts;
    private final k strategy;
    private final a tracker;

    private interface a {
        void a(Bitmap bitmap);

        void b(Bitmap bitmap);
    }

    j(long j6, k kVar, Set<Bitmap.Config> set) {
        this.initialMaxSize = j6;
        this.maxSize = j6;
        this.strategy = kVar;
        this.allowedConfigs = set;
        this.tracker = new b();
    }

    @Nullable
    private synchronized Bitmap m(int i10, int i11, @Nullable Bitmap.Config config) {
        Bitmap bitmapD;
        try {
            f(config);
            bitmapD = this.strategy.d(i10, i11, config != null ? config : DEFAULT_CONFIG);
            if (bitmapD == null) {
                if (Log.isLoggable(TAG, 3)) {
                    Log.d(TAG, "Missing bitmap=" + this.strategy.a(i10, i11, config));
                }
                this.misses++;
            } else {
                this.hits++;
                this.currentSize -= (long) this.strategy.b(bitmapD);
                this.tracker.b(bitmapD);
                p(bitmapD);
            }
            if (Log.isLoggable(TAG, 2)) {
                Log.v(TAG, "Get bitmap=" + this.strategy.a(i10, i11, config));
            }
            h();
        } catch (Throwable th) {
            throw th;
        }
        return bitmapD;
    }

    @TargetApi(19)
    private static void o(Bitmap bitmap) {
        bitmap.setPremultiplied(true);
    }

    private static void p(Bitmap bitmap) {
        bitmap.setHasAlpha(true);
        o(bitmap);
    }

    private synchronized void q(long j6) {
        while (this.currentSize > j6) {
            try {
                Bitmap bitmapF = this.strategy.f();
                if (bitmapF == null) {
                    if (Log.isLoggable(TAG, 5)) {
                        Log.w(TAG, "Size mismatch, resetting");
                        i();
                    }
                    this.currentSize = 0L;
                    return;
                }
                this.tracker.b(bitmapF);
                this.currentSize -= (long) this.strategy.b(bitmapF);
                this.evictions++;
                if (Log.isLoggable(TAG, 3)) {
                    Log.d(TAG, "Evicting bitmap=" + this.strategy.e(bitmapF));
                }
                h();
                bitmapF.recycle();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.d
    @SuppressLint({"InlinedApi"})
    public void a(int i10) {
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "trimMemory, level=" + i10);
        }
        if (i10 >= 40 || i10 >= 20) {
            b();
        } else if (i10 >= 20 || i10 == 15) {
            q(n() / 2);
        }
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.d
    public void b() {
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "clearMemory");
        }
        q(0L);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.d
    public synchronized void c(Bitmap bitmap) {
        try {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (bitmap.isMutable() && this.strategy.b(bitmap) <= this.maxSize && this.allowedConfigs.contains(bitmap.getConfig())) {
                int iB = this.strategy.b(bitmap);
                this.strategy.c(bitmap);
                this.tracker.a(bitmap);
                this.puts++;
                this.currentSize += (long) iB;
                if (Log.isLoggable(TAG, 2)) {
                    Log.v(TAG, "Put bitmap in pool=" + this.strategy.e(bitmap));
                }
                h();
                j();
                return;
            }
            if (Log.isLoggable(TAG, 2)) {
                Log.v(TAG, "Reject bitmap from pool, bitmap: " + this.strategy.e(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.allowedConfigs.contains(bitmap.getConfig()));
            }
            bitmap.recycle();
        } catch (Throwable th) {
            throw th;
        }
    }

    public long n() {
        return this.maxSize;
    }

    private static final class b implements a {
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.j.a
        public void a(Bitmap bitmap) {
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.j.a
        public void b(Bitmap bitmap) {
        }

        b() {
        }
    }

    @TargetApi(26)
    private static void f(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
            throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
        }
    }

    @NonNull
    private static Bitmap g(int i10, int i11, @Nullable Bitmap.Config config) {
        if (config == null) {
            config = DEFAULT_CONFIG;
        }
        return Bitmap.createBitmap(i10, i11, config);
    }

    private void h() {
        if (Log.isLoggable(TAG, 2)) {
            i();
        }
    }

    private void i() {
        Log.v(TAG, "Hits=" + this.hits + ", misses=" + this.misses + ", puts=" + this.puts + ", evictions=" + this.evictions + ", currentSize=" + this.currentSize + ", maxSize=" + this.maxSize + "\nStrategy=" + this.strategy);
    }

    private void j() {
        q(this.maxSize);
    }

    @TargetApi(26)
    private static Set<Bitmap.Config> k() {
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        int i10 = Build.VERSION.SDK_INT;
        hashSet.add(null);
        if (i10 >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        return Collections.unmodifiableSet(hashSet);
    }

    private static k l() {
        return new m();
    }

    public j(long j6) {
        this(j6, l(), k());
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.d
    @NonNull
    public Bitmap d(int i10, int i11, Bitmap.Config config) {
        Bitmap bitmapM = m(i10, i11, config);
        if (bitmapM != null) {
            bitmapM.eraseColor(0);
            return bitmapM;
        }
        return g(i10, i11, config);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.d
    @NonNull
    public Bitmap e(int i10, int i11, Bitmap.Config config) {
        Bitmap bitmapM = m(i10, i11, config);
        if (bitmapM == null) {
            return g(i10, i11, config);
        }
        return bitmapM;
    }

    public j(long j6, Set<Bitmap.Config> set) {
        this(j6, l(), set);
    }
}
