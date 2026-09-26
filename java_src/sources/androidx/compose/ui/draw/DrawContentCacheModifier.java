package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.a;
import androidx.compose.ui.b;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class DrawContentCacheModifier implements DrawCacheModifier {

    @NotNull
    private final CacheDrawScope cacheDrawScope;

    @NotNull
    private final l<CacheDrawScope, DrawResult> onBuildDrawCache;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return b.a(this, lVar);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DrawContentCacheModifier)) {
            return false;
        }
        DrawContentCacheModifier drawContentCacheModifier = (DrawContentCacheModifier) obj;
        return t.e(this.cacheDrawScope, drawContentCacheModifier.cacheDrawScope) && t.e(this.onBuildDrawCache, drawContentCacheModifier.onBuildDrawCache);
    }

    @NotNull
    public String toString() {
        return "DrawContentCacheModifier(cacheDrawScope=" + this.cacheDrawScope + ", onBuildDrawCache=" + this.onBuildDrawCache + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DrawContentCacheModifier(@NotNull CacheDrawScope cacheDrawScope, @NotNull l<? super CacheDrawScope, DrawResult> onBuildDrawCache) {
        t.j(cacheDrawScope, "cacheDrawScope");
        t.j(onBuildDrawCache, "onBuildDrawCache");
        this.cacheDrawScope = cacheDrawScope;
        this.onBuildDrawCache = onBuildDrawCache;
    }

    @Override // androidx.compose.ui.draw.DrawCacheModifier
    public void M(@NotNull BuildDrawCacheParams params) {
        t.j(params, "params");
        CacheDrawScope cacheDrawScope = this.cacheDrawScope;
        cacheDrawScope.p(params);
        cacheDrawScope.r(null);
        this.onBuildDrawCache.invoke(cacheDrawScope);
        if (cacheDrawScope.e() == null) {
            throw new IllegalStateException("DrawResult not defined, did you forget to call onDraw?".toString());
        }
    }

    public int hashCode() {
        return (this.cacheDrawScope.hashCode() * 31) + this.onBuildDrawCache.hashCode();
    }

    @Override // androidx.compose.ui.draw.DrawModifier
    public void r(@NotNull ContentDrawScope contentDrawScope) {
        t.j(contentDrawScope, "<this>");
        DrawResult drawResultE = this.cacheDrawScope.e();
        t.g(drawResultE);
        drawResultE.a().invoke(contentDrawScope);
    }
}
