package androidx.compose.ui.platform;

import android.graphics.Matrix;
import android.graphics.Outline;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasHolder;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.RenderEffect;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public interface DeviceRenderNode {
    void A(boolean z6);

    boolean B(int i10, int i11, int i12, int i13);

    void C();

    boolean D();

    int E();

    void F(int i10);

    void G(@NotNull CanvasHolder canvasHolder, @Nullable Path path, @NotNull e8.l<? super Canvas, w7.l0> lVar);

    void H(int i10);

    float I();

    int a();

    void b(float f);

    int c();

    void d(float f);

    float e();

    void f(float f);

    void g(float f);

    int getHeight();

    int getWidth();

    void h(float f);

    void i(float f);

    void j(@NotNull android.graphics.Canvas canvas);

    void k(float f);

    void l(@Nullable RenderEffect renderEffect);

    void m(boolean z6);

    void n(float f);

    void o(float f);

    void p(float f);

    void q(int i10);

    boolean r();

    boolean s();

    boolean t(boolean z6);

    void u(@NotNull Matrix matrix);

    void v(int i10);

    int w();

    void x(float f);

    void y(float f);

    void z(@Nullable Outline outline);
}
