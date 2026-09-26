package androidx.compose.ui.graphics;

import android.graphics.Shader;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class AndroidPaint implements Paint {

    @Nullable
    private ColorFilter internalColorFilter;

    @Nullable
    private Shader internalShader;

    @Nullable
    private PathEffect pathEffect;

    @NotNull
    private android.graphics.Paint internalPaint = AndroidPaint_androidKt.i();
    private int _blendMode = BlendMode.Companion.B();

    @Override // androidx.compose.ui.graphics.Paint
    @NotNull
    public android.graphics.Paint m() {
        return this.internalPaint;
    }

    @Override // androidx.compose.ui.graphics.Paint
    @Nullable
    public Shader n() {
        return this.internalShader;
    }

    @Override // androidx.compose.ui.graphics.Paint
    @Nullable
    public ColorFilter t() {
        return this.internalColorFilter;
    }

    @Override // androidx.compose.ui.graphics.Paint
    @Nullable
    public PathEffect v() {
        return this.pathEffect;
    }

    @Override // androidx.compose.ui.graphics.Paint
    public int w() {
        return this._blendMode;
    }

    @Override // androidx.compose.ui.graphics.Paint
    public long a() {
        return AndroidPaint_androidKt.c(this.internalPaint);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public void b(float f) {
        AndroidPaint_androidKt.j(this.internalPaint, f);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public float e() {
        return AndroidPaint_androidKt.b(this.internalPaint);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public void f(int i10) {
        AndroidPaint_androidKt.q(this.internalPaint, i10);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public void g(int i10) {
        AndroidPaint_androidKt.n(this.internalPaint, i10);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public int h() {
        return AndroidPaint_androidKt.e(this.internalPaint);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public void i(int i10) {
        AndroidPaint_androidKt.r(this.internalPaint, i10);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public void j(long j6) {
        AndroidPaint_androidKt.l(this.internalPaint, j6);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public int k() {
        return AndroidPaint_androidKt.f(this.internalPaint);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public float l() {
        return AndroidPaint_androidKt.g(this.internalPaint);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public void o(float f) {
        AndroidPaint_androidKt.s(this.internalPaint, f);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public void p(int i10) {
        AndroidPaint_androidKt.u(this.internalPaint, i10);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public void q(float f) {
        AndroidPaint_androidKt.t(this.internalPaint, f);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public float r() {
        return AndroidPaint_androidKt.h(this.internalPaint);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public void s(int i10) {
        this._blendMode = i10;
        AndroidPaint_androidKt.k(this.internalPaint, i10);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public void u(@Nullable PathEffect pathEffect) {
        AndroidPaint_androidKt.o(this.internalPaint, pathEffect);
        this.pathEffect = pathEffect;
    }

    @Override // androidx.compose.ui.graphics.Paint
    public void x(@Nullable Shader shader) {
        this.internalShader = shader;
        AndroidPaint_androidKt.p(this.internalPaint, shader);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public void y(@Nullable ColorFilter colorFilter) {
        this.internalColorFilter = colorFilter;
        AndroidPaint_androidKt.m(this.internalPaint, colorFilter);
    }

    @Override // androidx.compose.ui.graphics.Paint
    public int z() {
        return AndroidPaint_androidKt.d(this.internalPaint);
    }
}
