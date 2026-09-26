package androidx.compose.ui.graphics;

import android.graphics.PorterDuff;
import androidx.annotation.RequiresApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidBlendMode_androidKt {
    @RequiresApi
    @NotNull
    public static final android.graphics.BlendMode a(int i10) {
        BlendMode.Companion companion = BlendMode.Companion;
        if (BlendMode.G(i10, companion.a())) {
            return android.graphics.BlendMode.CLEAR;
        }
        if (BlendMode.G(i10, companion.x())) {
            return android.graphics.BlendMode.SRC;
        }
        if (BlendMode.G(i10, companion.g())) {
            return android.graphics.BlendMode.DST;
        }
        if (BlendMode.G(i10, companion.B())) {
            return android.graphics.BlendMode.SRC_OVER;
        }
        if (BlendMode.G(i10, companion.k())) {
            return android.graphics.BlendMode.DST_OVER;
        }
        if (BlendMode.G(i10, companion.z())) {
            return android.graphics.BlendMode.SRC_IN;
        }
        if (BlendMode.G(i10, companion.i())) {
            return android.graphics.BlendMode.DST_IN;
        }
        if (BlendMode.G(i10, companion.A())) {
            return android.graphics.BlendMode.SRC_OUT;
        }
        if (BlendMode.G(i10, companion.j())) {
            return android.graphics.BlendMode.DST_OUT;
        }
        if (BlendMode.G(i10, companion.y())) {
            return android.graphics.BlendMode.SRC_ATOP;
        }
        if (BlendMode.G(i10, companion.h())) {
            return android.graphics.BlendMode.DST_ATOP;
        }
        if (BlendMode.G(i10, companion.C())) {
            return android.graphics.BlendMode.XOR;
        }
        if (BlendMode.G(i10, companion.t())) {
            return android.graphics.BlendMode.PLUS;
        }
        if (BlendMode.G(i10, companion.q())) {
            return android.graphics.BlendMode.MODULATE;
        }
        if (BlendMode.G(i10, companion.v())) {
            return android.graphics.BlendMode.SCREEN;
        }
        if (BlendMode.G(i10, companion.s())) {
            return android.graphics.BlendMode.OVERLAY;
        }
        if (BlendMode.G(i10, companion.e())) {
            return android.graphics.BlendMode.DARKEN;
        }
        if (BlendMode.G(i10, companion.o())) {
            return android.graphics.BlendMode.LIGHTEN;
        }
        if (BlendMode.G(i10, companion.d())) {
            return android.graphics.BlendMode.COLOR_DODGE;
        }
        if (BlendMode.G(i10, companion.c())) {
            return android.graphics.BlendMode.COLOR_BURN;
        }
        if (BlendMode.G(i10, companion.m())) {
            return android.graphics.BlendMode.HARD_LIGHT;
        }
        if (BlendMode.G(i10, companion.w())) {
            return android.graphics.BlendMode.SOFT_LIGHT;
        }
        if (BlendMode.G(i10, companion.f())) {
            return android.graphics.BlendMode.DIFFERENCE;
        }
        if (BlendMode.G(i10, companion.l())) {
            return android.graphics.BlendMode.EXCLUSION;
        }
        if (BlendMode.G(i10, companion.r())) {
            return android.graphics.BlendMode.MULTIPLY;
        }
        if (BlendMode.G(i10, companion.n())) {
            return android.graphics.BlendMode.HUE;
        }
        if (BlendMode.G(i10, companion.u())) {
            return android.graphics.BlendMode.SATURATION;
        }
        if (BlendMode.G(i10, companion.b())) {
            return android.graphics.BlendMode.COLOR;
        }
        return BlendMode.G(i10, companion.p()) ? android.graphics.BlendMode.LUMINOSITY : android.graphics.BlendMode.SRC_OVER;
    }

    @NotNull
    public static final PorterDuff.Mode b(int i10) {
        BlendMode.Companion companion = BlendMode.Companion;
        if (BlendMode.G(i10, companion.a())) {
            return PorterDuff.Mode.CLEAR;
        }
        if (BlendMode.G(i10, companion.x())) {
            return PorterDuff.Mode.SRC;
        }
        if (BlendMode.G(i10, companion.g())) {
            return PorterDuff.Mode.DST;
        }
        if (BlendMode.G(i10, companion.B())) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (BlendMode.G(i10, companion.k())) {
            return PorterDuff.Mode.DST_OVER;
        }
        if (BlendMode.G(i10, companion.z())) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (BlendMode.G(i10, companion.i())) {
            return PorterDuff.Mode.DST_IN;
        }
        if (BlendMode.G(i10, companion.A())) {
            return PorterDuff.Mode.SRC_OUT;
        }
        if (BlendMode.G(i10, companion.j())) {
            return PorterDuff.Mode.DST_OUT;
        }
        if (BlendMode.G(i10, companion.y())) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        if (BlendMode.G(i10, companion.h())) {
            return PorterDuff.Mode.DST_ATOP;
        }
        if (BlendMode.G(i10, companion.C())) {
            return PorterDuff.Mode.XOR;
        }
        if (BlendMode.G(i10, companion.t())) {
            return PorterDuff.Mode.ADD;
        }
        if (BlendMode.G(i10, companion.v())) {
            return PorterDuff.Mode.SCREEN;
        }
        if (BlendMode.G(i10, companion.s())) {
            return PorterDuff.Mode.OVERLAY;
        }
        if (BlendMode.G(i10, companion.e())) {
            return PorterDuff.Mode.DARKEN;
        }
        if (BlendMode.G(i10, companion.o())) {
            return PorterDuff.Mode.LIGHTEN;
        }
        return BlendMode.G(i10, companion.q()) ? PorterDuff.Mode.MULTIPLY : PorterDuff.Mode.SRC_OVER;
    }
}
