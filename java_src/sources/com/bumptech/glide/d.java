package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public class d extends ContextWrapper {

    @VisibleForTesting
    static final k<?, ?> DEFAULT_TRANSITION_OPTIONS = new a();
    private final com.bumptech.glide.load.engine.bitmap_recycle.b arrayPool;
    private final List<y0.e<Object>> defaultRequestListeners;

    @Nullable
    @GuardedBy
    private y0.f defaultRequestOptions;
    private final b.a defaultRequestOptionsFactory;
    private final Map<Class<?>, k<?, ?>> defaultTransitionOptions;
    private final com.bumptech.glide.load.engine.k engine;
    private final com.bumptech.glide.request.target.c imageViewTargetFactory;
    private final boolean isLoggingRequestOriginsEnabled;
    private final int logLevel;
    private final h registry;

    @NonNull
    public com.bumptech.glide.load.engine.bitmap_recycle.b a() {
        return this.arrayPool;
    }

    public List<y0.e<Object>> b() {
        return this.defaultRequestListeners;
    }

    public synchronized y0.f c() {
        try {
            if (this.defaultRequestOptions == null) {
                this.defaultRequestOptions = this.defaultRequestOptionsFactory.build().J();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.defaultRequestOptions;
    }

    @NonNull
    public com.bumptech.glide.load.engine.k e() {
        return this.engine;
    }

    public int f() {
        return this.logLevel;
    }

    @NonNull
    public h g() {
        return this.registry;
    }

    public boolean h() {
        return this.isLoggingRequestOriginsEnabled;
    }

    @NonNull
    public <T> k<?, T> d(@NonNull Class<T> cls) {
        k<?, T> kVar = (k) this.defaultTransitionOptions.get(cls);
        if (kVar == null) {
            for (Map.Entry<Class<?>, k<?, ?>> entry : this.defaultTransitionOptions.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    kVar = (k) entry.getValue();
                }
            }
        }
        return kVar == null ? (k<?, T>) DEFAULT_TRANSITION_OPTIONS : kVar;
    }

    public d(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar, @NonNull h hVar, @NonNull com.bumptech.glide.request.target.c cVar, @NonNull b.a aVar, @NonNull Map<Class<?>, k<?, ?>> map, @NonNull List<y0.e<Object>> list, @NonNull com.bumptech.glide.load.engine.k kVar, boolean z6, int i10) {
        super(context.getApplicationContext());
        this.arrayPool = bVar;
        this.registry = hVar;
        this.imageViewTargetFactory = cVar;
        this.defaultRequestOptionsFactory = aVar;
        this.defaultRequestListeners = list;
        this.defaultTransitionOptions = map;
        this.engine = kVar;
        this.isLoggingRequestOriginsEnabled = z6;
        this.logLevel = i10;
    }
}
