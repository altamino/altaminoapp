package coil.util;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class n {
    private final boolean addLastModifiedToFileCacheKey;

    @NotNull
    private final coil.decode.l bitmapFactoryExifOrientationPolicy;
    private final int bitmapFactoryMaxParallelism;
    private final boolean networkObserverEnabled;
    private final boolean respectCacheHeaders;

    public n() {
        this(false, false, false, 0, null, 31, null);
    }

    public final boolean a() {
        return this.addLastModifiedToFileCacheKey;
    }

    @NotNull
    public final coil.decode.l b() {
        return this.bitmapFactoryExifOrientationPolicy;
    }

    public final int c() {
        return this.bitmapFactoryMaxParallelism;
    }

    public final boolean d() {
        return this.networkObserverEnabled;
    }

    public final boolean e() {
        return this.respectCacheHeaders;
    }

    public n(boolean z6, boolean z10, boolean z11, int i10, @NotNull coil.decode.l lVar) {
        this.addLastModifiedToFileCacheKey = z6;
        this.networkObserverEnabled = z10;
        this.respectCacheHeaders = z11;
        this.bitmapFactoryMaxParallelism = i10;
        this.bitmapFactoryExifOrientationPolicy = lVar;
    }

    public /* synthetic */ n(boolean z6, boolean z10, boolean z11, int i10, coil.decode.l lVar, int i11, kotlin.jvm.internal.k kVar) {
        this((i11 & 1) != 0 ? true : z6, (i11 & 2) != 0 ? true : z10, (i11 & 4) == 0 ? z11 : true, (i11 & 8) != 0 ? 4 : i10, (i11 & 16) != 0 ? coil.decode.l.RESPECT_PERFORMANCE : lVar);
    }
}
