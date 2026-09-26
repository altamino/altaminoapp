package com.bumptech.glide.load.engine.prefill;

import android.os.Handler;
import android.os.Looper;
import com.bumptech.glide.load.engine.cache.h;

/* JADX INFO: loaded from: classes11.dex */
public final class b {
    private final com.bumptech.glide.load.engine.bitmap_recycle.d bitmapPool;
    private a current;
    private final com.bumptech.glide.load.b defaultFormat;
    private final Handler handler = new Handler(Looper.getMainLooper());
    private final h memoryCache;

    public b(h hVar, com.bumptech.glide.load.engine.bitmap_recycle.d dVar, com.bumptech.glide.load.b bVar) {
        this.memoryCache = hVar;
        this.bitmapPool = dVar;
        this.defaultFormat = bVar;
    }
}
