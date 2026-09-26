package com.bumptech.glide;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.bumptech.glide.manager.l;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public final class c {
    private com.bumptech.glide.load.engine.executor.a animationExecutor;
    private com.bumptech.glide.load.engine.bitmap_recycle.b arrayPool;
    private com.bumptech.glide.load.engine.bitmap_recycle.d bitmapPool;
    private com.bumptech.glide.manager.d connectivityMonitorFactory;

    @Nullable
    private List<y0.e<Object>> defaultRequestListeners;
    private com.bumptech.glide.load.engine.executor.a diskCacheExecutor;
    private com.bumptech.glide.load.engine.cache.a.InterfaceC0121a diskCacheFactory;
    private com.bumptech.glide.load.engine.k engine;
    private boolean isActiveResourceRetentionAllowed;
    private boolean isImageDecoderEnabledForBitmaps;
    private boolean isLoggingRequestOriginsEnabled;
    private com.bumptech.glide.load.engine.cache.h memoryCache;
    private com.bumptech.glide.load.engine.cache.i memorySizeCalculator;

    @Nullable
    private l.b requestManagerFactory;
    private com.bumptech.glide.load.engine.executor.a sourceExecutor;
    private final Map<Class<?>, k<?, ?>> defaultTransitionOptions = new ArrayMap();
    private int logLevel = 4;
    private b.a defaultRequestOptionsFactory = new a();

    class a implements b.a {
        a() {
        }

        @Override // com.bumptech.glide.b.a
        @NonNull
        public y0.f build() {
            return new y0.f();
        }
    }

    void b(@Nullable l.b bVar) {
        this.requestManagerFactory = bVar;
    }

    @NonNull
    b a(@NonNull Context context) {
        if (this.sourceExecutor == null) {
            this.sourceExecutor = com.bumptech.glide.load.engine.executor.a.h();
        }
        if (this.diskCacheExecutor == null) {
            this.diskCacheExecutor = com.bumptech.glide.load.engine.executor.a.f();
        }
        if (this.animationExecutor == null) {
            this.animationExecutor = com.bumptech.glide.load.engine.executor.a.c();
        }
        if (this.memorySizeCalculator == null) {
            this.memorySizeCalculator = new com.bumptech.glide.load.engine.cache.i.a(context).a();
        }
        if (this.connectivityMonitorFactory == null) {
            this.connectivityMonitorFactory = new com.bumptech.glide.manager.f();
        }
        if (this.bitmapPool == null) {
            int iB = this.memorySizeCalculator.b();
            if (iB > 0) {
                this.bitmapPool = new com.bumptech.glide.load.engine.bitmap_recycle.j(iB);
            } else {
                this.bitmapPool = new com.bumptech.glide.load.engine.bitmap_recycle.e();
            }
        }
        if (this.arrayPool == null) {
            this.arrayPool = new com.bumptech.glide.load.engine.bitmap_recycle.i(this.memorySizeCalculator.a());
        }
        if (this.memoryCache == null) {
            this.memoryCache = new com.bumptech.glide.load.engine.cache.g(this.memorySizeCalculator.d());
        }
        if (this.diskCacheFactory == null) {
            this.diskCacheFactory = new com.bumptech.glide.load.engine.cache.f(context);
        }
        if (this.engine == null) {
            this.engine = new com.bumptech.glide.load.engine.k(this.memoryCache, this.diskCacheFactory, this.diskCacheExecutor, this.sourceExecutor, com.bumptech.glide.load.engine.executor.a.i(), this.animationExecutor, this.isActiveResourceRetentionAllowed);
        }
        List<y0.e<Object>> list = this.defaultRequestListeners;
        if (list == null) {
            this.defaultRequestListeners = Collections.emptyList();
        } else {
            this.defaultRequestListeners = Collections.unmodifiableList(list);
        }
        return new b(context, this.engine, this.memoryCache, this.bitmapPool, this.arrayPool, new l(this.requestManagerFactory), this.connectivityMonitorFactory, this.logLevel, this.defaultRequestOptionsFactory, this.defaultTransitionOptions, this.defaultRequestListeners, this.isLoggingRequestOriginsEnabled, this.isImageDecoderEnabledForBitmaps);
    }
}
