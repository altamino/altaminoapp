package coil.request;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.k0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class b {
    private final boolean allowHardware;
    private final boolean allowRgb565;

    @NotNull
    private final Bitmap.Config bitmapConfig;

    @NotNull
    private final k0 decoderDispatcher;

    @NotNull
    private final a diskCachePolicy;

    @Nullable
    private final Drawable error;

    @Nullable
    private final Drawable fallback;

    @NotNull
    private final k0 fetcherDispatcher;

    @NotNull
    private final k0 interceptorDispatcher;

    @NotNull
    private final a memoryCachePolicy;

    @NotNull
    private final a networkCachePolicy;

    @Nullable
    private final Drawable placeholder;

    @NotNull
    private final coil.size.e precision;

    @NotNull
    private final k0 transformationDispatcher;

    @NotNull
    private final coil.transition.c.a transitionFactory;

    public b() {
        this(null, null, null, null, null, null, null, false, false, null, null, null, null, null, null, 32767, null);
    }

    public final boolean a() {
        return this.allowHardware;
    }

    public final boolean b() {
        return this.allowRgb565;
    }

    @NotNull
    public final Bitmap.Config c() {
        return this.bitmapConfig;
    }

    @NotNull
    public final k0 d() {
        return this.decoderDispatcher;
    }

    @NotNull
    public final a e() {
        return this.diskCachePolicy;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (t.e(this.interceptorDispatcher, bVar.interceptorDispatcher) && t.e(this.fetcherDispatcher, bVar.fetcherDispatcher) && t.e(this.decoderDispatcher, bVar.decoderDispatcher) && t.e(this.transformationDispatcher, bVar.transformationDispatcher) && t.e(this.transitionFactory, bVar.transitionFactory) && this.precision == bVar.precision && this.bitmapConfig == bVar.bitmapConfig && this.allowHardware == bVar.allowHardware && this.allowRgb565 == bVar.allowRgb565 && t.e(this.placeholder, bVar.placeholder) && t.e(this.error, bVar.error) && t.e(this.fallback, bVar.fallback) && this.memoryCachePolicy == bVar.memoryCachePolicy && this.diskCachePolicy == bVar.diskCachePolicy && this.networkCachePolicy == bVar.networkCachePolicy) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    public final Drawable f() {
        return this.error;
    }

    @Nullable
    public final Drawable g() {
        return this.fallback;
    }

    @NotNull
    public final k0 h() {
        return this.fetcherDispatcher;
    }

    @NotNull
    public final k0 i() {
        return this.interceptorDispatcher;
    }

    @NotNull
    public final a j() {
        return this.memoryCachePolicy;
    }

    @NotNull
    public final a k() {
        return this.networkCachePolicy;
    }

    @Nullable
    public final Drawable l() {
        return this.placeholder;
    }

    @NotNull
    public final coil.size.e m() {
        return this.precision;
    }

    @NotNull
    public final k0 n() {
        return this.transformationDispatcher;
    }

    @NotNull
    public final coil.transition.c.a o() {
        return this.transitionFactory;
    }

    public b(@NotNull k0 k0Var, @NotNull k0 k0Var2, @NotNull k0 k0Var3, @NotNull k0 k0Var4, @NotNull coil.transition.c.a aVar, @NotNull coil.size.e eVar, @NotNull Bitmap.Config config, boolean z6, boolean z10, @Nullable Drawable drawable, @Nullable Drawable drawable2, @Nullable Drawable drawable3, @NotNull a aVar2, @NotNull a aVar3, @NotNull a aVar4) {
        this.interceptorDispatcher = k0Var;
        this.fetcherDispatcher = k0Var2;
        this.decoderDispatcher = k0Var3;
        this.transformationDispatcher = k0Var4;
        this.transitionFactory = aVar;
        this.precision = eVar;
        this.bitmapConfig = config;
        this.allowHardware = z6;
        this.allowRgb565 = z10;
        this.placeholder = drawable;
        this.error = drawable2;
        this.fallback = drawable3;
        this.memoryCachePolicy = aVar2;
        this.diskCachePolicy = aVar3;
        this.networkCachePolicy = aVar4;
    }

    public int hashCode() {
        int iHashCode = ((((((((((((((((this.interceptorDispatcher.hashCode() * 31) + this.fetcherDispatcher.hashCode()) * 31) + this.decoderDispatcher.hashCode()) * 31) + this.transformationDispatcher.hashCode()) * 31) + this.transitionFactory.hashCode()) * 31) + this.precision.hashCode()) * 31) + this.bitmapConfig.hashCode()) * 31) + androidx.compose.foundation.c.a(this.allowHardware)) * 31) + androidx.compose.foundation.c.a(this.allowRgb565)) * 31;
        Drawable drawable = this.placeholder;
        int iHashCode2 = (iHashCode + (drawable != null ? drawable.hashCode() : 0)) * 31;
        Drawable drawable2 = this.error;
        int iHashCode3 = (iHashCode2 + (drawable2 != null ? drawable2.hashCode() : 0)) * 31;
        Drawable drawable3 = this.fallback;
        return ((((((iHashCode3 + (drawable3 != null ? drawable3.hashCode() : 0)) * 31) + this.memoryCachePolicy.hashCode()) * 31) + this.diskCachePolicy.hashCode()) * 31) + this.networkCachePolicy.hashCode();
    }

    public /* synthetic */ b(k0 k0Var, k0 k0Var2, k0 k0Var3, k0 k0Var4, coil.transition.c.a aVar, coil.size.e eVar, Bitmap.Config config, boolean z6, boolean z10, Drawable drawable, Drawable drawable2, Drawable drawable3, a aVar2, a aVar3, a aVar4, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? e1.c().getImmediate() : k0Var, (i10 & 2) != 0 ? e1.b() : k0Var2, (i10 & 4) != 0 ? e1.b() : k0Var3, (i10 & 8) != 0 ? e1.b() : k0Var4, (i10 & 16) != 0 ? coil.transition.c.a.NONE : aVar, (i10 & 32) != 0 ? coil.size.e.AUTOMATIC : eVar, (i10 & 64) != 0 ? coil.util.i.f() : config, (i10 & 128) != 0 ? true : z6, (i10 & 256) != 0 ? false : z10, (i10 & 512) != 0 ? null : drawable, (i10 & 1024) != 0 ? null : drawable2, (i10 & 2048) == 0 ? drawable3 : null, (i10 & 4096) != 0 ? a.ENABLED : aVar2, (i10 & 8192) != 0 ? a.ENABLED : aVar3, (i10 & 16384) != 0 ? a.ENABLED : aVar4);
    }
}
