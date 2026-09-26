package androidx.compose.ui.draw;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.a;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
@StabilityInferred
public final class CacheDrawScope implements Density {
    public static final int $stable = 0;

    @NotNull
    private BuildDrawCacheParams cacheParams = EmptyBuildDrawCacheParams.INSTANCE;

    @Nullable
    private DrawResult drawResult;

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float H0(float f) {
        return a.h(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ int L0(long j6) {
        return a.a(this, j6);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float P(float f) {
        return a.d(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ long X(long j6) {
        return a.i(this, j6);
    }

    @Nullable
    public final DrawResult e() {
        return this.drawResult;
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float j(int i10) {
        return a.e(this, i10);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ int j0(float f) {
        return a.b(this, f);
    }

    public final void p(@NotNull BuildDrawCacheParams buildDrawCacheParams) {
        t.j(buildDrawCacheParams, "<set-?>");
        this.cacheParams = buildDrawCacheParams;
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float p0(long j6) {
        return a.g(this, j6);
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ long q(long j6) {
        return a.f(this, j6);
    }

    public final void r(@Nullable DrawResult drawResult) {
        this.drawResult = drawResult;
    }

    @Override // androidx.compose.ui.unit.Density
    public /* synthetic */ float s(long j6) {
        return a.c(this, j6);
    }

    @Override // androidx.compose.ui.unit.Density
    public float E0() {
        return this.cacheParams.getDensity().E0();
    }

    public final long c() {
        return this.cacheParams.c();
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.cacheParams.getDensity().getDensity();
    }

    @NotNull
    public final LayoutDirection getLayoutDirection() {
        return this.cacheParams.getLayoutDirection();
    }

    @NotNull
    public final DrawResult m(@NotNull l<? super ContentDrawScope, l0> block) {
        t.j(block, "block");
        DrawResult drawResult = new DrawResult(block);
        this.drawResult = drawResult;
        return drawResult;
    }
}
