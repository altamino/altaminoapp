package coil.request;

import android.graphics.Bitmap;
import androidx.lifecycle.Lifecycle;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.k0;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class c {

    @Nullable
    private final Boolean allowHardware;

    @Nullable
    private final Boolean allowRgb565;

    @Nullable
    private final Bitmap.Config bitmapConfig;

    @Nullable
    private final k0 decoderDispatcher;

    @Nullable
    private final a diskCachePolicy;

    @Nullable
    private final k0 fetcherDispatcher;

    @Nullable
    private final k0 interceptorDispatcher;

    @Nullable
    private final Lifecycle lifecycle;

    @Nullable
    private final a memoryCachePolicy;

    @Nullable
    private final a networkCachePolicy;

    @Nullable
    private final coil.size.e precision;

    @Nullable
    private final coil.size.h scale;

    @Nullable
    private final coil.size.j sizeResolver;

    @Nullable
    private final k0 transformationDispatcher;

    @Nullable
    private final coil.transition.c.a transitionFactory;

    public c(@Nullable Lifecycle lifecycle, @Nullable coil.size.j jVar, @Nullable coil.size.h hVar, @Nullable k0 k0Var, @Nullable k0 k0Var2, @Nullable k0 k0Var3, @Nullable k0 k0Var4, @Nullable coil.transition.c.a aVar, @Nullable coil.size.e eVar, @Nullable Bitmap.Config config, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable a aVar2, @Nullable a aVar3, @Nullable a aVar4) {
        this.lifecycle = lifecycle;
        this.sizeResolver = jVar;
        this.scale = hVar;
        this.interceptorDispatcher = k0Var;
        this.fetcherDispatcher = k0Var2;
        this.decoderDispatcher = k0Var3;
        this.transformationDispatcher = k0Var4;
        this.transitionFactory = aVar;
        this.precision = eVar;
        this.bitmapConfig = config;
        this.allowHardware = bool;
        this.allowRgb565 = bool2;
        this.memoryCachePolicy = aVar2;
        this.diskCachePolicy = aVar3;
        this.networkCachePolicy = aVar4;
    }

    @Nullable
    public final Boolean a() {
        return this.allowHardware;
    }

    @Nullable
    public final Boolean b() {
        return this.allowRgb565;
    }

    @Nullable
    public final Bitmap.Config c() {
        return this.bitmapConfig;
    }

    @Nullable
    public final k0 d() {
        return this.decoderDispatcher;
    }

    @Nullable
    public final a e() {
        return this.diskCachePolicy;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            if (t.e(this.lifecycle, cVar.lifecycle) && t.e(this.sizeResolver, cVar.sizeResolver) && this.scale == cVar.scale && t.e(this.interceptorDispatcher, cVar.interceptorDispatcher) && t.e(this.fetcherDispatcher, cVar.fetcherDispatcher) && t.e(this.decoderDispatcher, cVar.decoderDispatcher) && t.e(this.transformationDispatcher, cVar.transformationDispatcher) && t.e(this.transitionFactory, cVar.transitionFactory) && this.precision == cVar.precision && this.bitmapConfig == cVar.bitmapConfig && t.e(this.allowHardware, cVar.allowHardware) && t.e(this.allowRgb565, cVar.allowRgb565) && this.memoryCachePolicy == cVar.memoryCachePolicy && this.diskCachePolicy == cVar.diskCachePolicy && this.networkCachePolicy == cVar.networkCachePolicy) {
                return true;
            }
        }
        return false;
    }

    @Nullable
    public final k0 f() {
        return this.fetcherDispatcher;
    }

    @Nullable
    public final k0 g() {
        return this.interceptorDispatcher;
    }

    @Nullable
    public final Lifecycle h() {
        return this.lifecycle;
    }

    @Nullable
    public final a i() {
        return this.memoryCachePolicy;
    }

    @Nullable
    public final a j() {
        return this.networkCachePolicy;
    }

    @Nullable
    public final coil.size.e k() {
        return this.precision;
    }

    @Nullable
    public final coil.size.h l() {
        return this.scale;
    }

    @Nullable
    public final coil.size.j m() {
        return this.sizeResolver;
    }

    @Nullable
    public final k0 n() {
        return this.transformationDispatcher;
    }

    @Nullable
    public final coil.transition.c.a o() {
        return this.transitionFactory;
    }

    public int hashCode() {
        Lifecycle lifecycle = this.lifecycle;
        int iHashCode = (lifecycle != null ? lifecycle.hashCode() : 0) * 31;
        coil.size.j jVar = this.sizeResolver;
        int iHashCode2 = (iHashCode + (jVar != null ? jVar.hashCode() : 0)) * 31;
        coil.size.h hVar = this.scale;
        int iHashCode3 = (iHashCode2 + (hVar != null ? hVar.hashCode() : 0)) * 31;
        k0 k0Var = this.interceptorDispatcher;
        int iHashCode4 = (iHashCode3 + (k0Var != null ? k0Var.hashCode() : 0)) * 31;
        k0 k0Var2 = this.fetcherDispatcher;
        int iHashCode5 = (iHashCode4 + (k0Var2 != null ? k0Var2.hashCode() : 0)) * 31;
        k0 k0Var3 = this.decoderDispatcher;
        int iHashCode6 = (iHashCode5 + (k0Var3 != null ? k0Var3.hashCode() : 0)) * 31;
        k0 k0Var4 = this.transformationDispatcher;
        int iHashCode7 = (iHashCode6 + (k0Var4 != null ? k0Var4.hashCode() : 0)) * 31;
        coil.transition.c.a aVar = this.transitionFactory;
        int iHashCode8 = (iHashCode7 + (aVar != null ? aVar.hashCode() : 0)) * 31;
        coil.size.e eVar = this.precision;
        int iHashCode9 = (iHashCode8 + (eVar != null ? eVar.hashCode() : 0)) * 31;
        Bitmap.Config config = this.bitmapConfig;
        int iHashCode10 = (iHashCode9 + (config != null ? config.hashCode() : 0)) * 31;
        Boolean bool = this.allowHardware;
        int iHashCode11 = (iHashCode10 + (bool != null ? bool.hashCode() : 0)) * 31;
        Boolean bool2 = this.allowRgb565;
        int iHashCode12 = (iHashCode11 + (bool2 != null ? bool2.hashCode() : 0)) * 31;
        a aVar2 = this.memoryCachePolicy;
        int iHashCode13 = (iHashCode12 + (aVar2 != null ? aVar2.hashCode() : 0)) * 31;
        a aVar3 = this.diskCachePolicy;
        int iHashCode14 = (iHashCode13 + (aVar3 != null ? aVar3.hashCode() : 0)) * 31;
        a aVar4 = this.networkCachePolicy;
        return iHashCode14 + (aVar4 != null ? aVar4.hashCode() : 0);
    }
}
