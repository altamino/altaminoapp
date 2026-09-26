package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ReadOnlyComposable;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class ColorsKt {

    @NotNull
    private static final ProvidableCompositionLocal<Colors> LocalColors = CompositionLocalKt.e(ColorsKt$LocalColors$1.INSTANCE);

    @NotNull
    public static final ProvidableCompositionLocal<Colors> e() {
        return LocalColors;
    }

    public static final long a(@NotNull Colors contentColorFor, long j6) {
        t.j(contentColorFor, "$this$contentColorFor");
        if (Color.n(j6, contentColorFor.j())) {
            return contentColorFor.g();
        }
        if (Color.n(j6, contentColorFor.k())) {
            return contentColorFor.g();
        }
        if (Color.n(j6, contentColorFor.l())) {
            return contentColorFor.h();
        }
        if (Color.n(j6, contentColorFor.m())) {
            return contentColorFor.h();
        }
        if (Color.n(j6, contentColorFor.c())) {
            return contentColorFor.e();
        }
        if (Color.n(j6, contentColorFor.n())) {
            return contentColorFor.i();
        }
        return Color.n(j6, contentColorFor.d()) ? contentColorFor.f() : Color.Companion.f();
    }

    @Composable
    @ReadOnlyComposable
    public static final long b(long j6, @Nullable Composer composer, int i10) {
        long jA = a(MaterialTheme.INSTANCE.a(composer, 6), j6);
        return jA != Color.Companion.f() ? jA : ((Color) composer.x(ContentColorKt.a())).v();
    }

    @NotNull
    public static final Colors c(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20) {
        return new Colors(j6, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, false, null);
    }

    public static /* synthetic */ Colors d(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, int i10, Object obj) {
        long jD = (i10 & 1) != 0 ? ColorKt.d(4290479868L) : j6;
        long jD2 = (i10 & 2) != 0 ? ColorKt.d(4281794739L) : j10;
        long jD3 = (i10 & 4) != 0 ? ColorKt.d(4278442694L) : j11;
        return c(jD, jD2, jD3, (i10 & 8) != 0 ? jD3 : j12, (i10 & 16) != 0 ? ColorKt.d(4279374354L) : j13, (i10 & 32) != 0 ? ColorKt.d(4279374354L) : j14, (i10 & 64) != 0 ? ColorKt.d(4291782265L) : j15, (i10 & 128) != 0 ? Color.Companion.a() : j16, (i10 & 256) != 0 ? Color.Companion.a() : j17, (i10 & 512) != 0 ? Color.Companion.g() : j18, (i10 & 1024) != 0 ? Color.Companion.g() : j19, (i10 & 2048) != 0 ? Color.Companion.a() : j20);
    }

    public static final long f(@NotNull Colors colors) {
        t.j(colors, "<this>");
        return colors.o() ? colors.j() : colors.n();
    }

    @NotNull
    public static final Colors g(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20) {
        return new Colors(j6, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, true, null);
    }

    public static final void i(@NotNull Colors colors, @NotNull Colors other) {
        t.j(colors, "<this>");
        t.j(other, "other");
        colors.x(other.j());
        colors.y(other.k());
        colors.z(other.l());
        colors.A(other.m());
        colors.p(other.c());
        colors.B(other.n());
        colors.q(other.d());
        colors.u(other.g());
        colors.v(other.h());
        colors.s(other.e());
        colors.w(other.i());
        colors.t(other.f());
        colors.r(other.o());
    }
}
