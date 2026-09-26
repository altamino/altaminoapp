package androidx.compose.ui.node;

import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.RenderEffect;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public interface OwnedLayer {
    void a(@NotNull MutableRect mutableRect, boolean z6);

    void b(@NotNull Canvas canvas);

    void c(@NotNull l<? super Canvas, l0> lVar, @NotNull e8.a<l0> aVar);

    long d(long j6, boolean z6);

    void destroy();

    void e(long j6);

    void f(float f, float f6, float f7, float f10, float f11, float f12, float f13, float f14, float f15, float f16, long j6, @NotNull Shape shape, boolean z6, @Nullable RenderEffect renderEffect, long j10, long j11, @NotNull LayoutDirection layoutDirection, @NotNull Density density);

    boolean g(long j6);

    void h(long j6);

    void i();

    void invalidate();
}
