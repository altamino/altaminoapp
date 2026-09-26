package androidx.compose.ui.geometry;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class RoundRectKt {
    @NotNull
    public static final RoundRect b(@NotNull Rect rect, long j6, long j10, long j11, long j12) {
        t.j(rect, "rect");
        return new RoundRect(rect.j(), rect.m(), rect.k(), rect.e(), j6, j10, j11, j12, null);
    }

    public static final boolean d(@NotNull RoundRect roundRect) {
        t.j(roundRect, "<this>");
        return CornerRadius.e(roundRect.h()) == CornerRadius.f(roundRect.h()) && CornerRadius.e(roundRect.h()) == CornerRadius.e(roundRect.i()) && CornerRadius.e(roundRect.h()) == CornerRadius.f(roundRect.i()) && CornerRadius.e(roundRect.h()) == CornerRadius.e(roundRect.c()) && CornerRadius.e(roundRect.h()) == CornerRadius.f(roundRect.c()) && CornerRadius.e(roundRect.h()) == CornerRadius.e(roundRect.b()) && CornerRadius.e(roundRect.h()) == CornerRadius.f(roundRect.b());
    }

    @NotNull
    public static final RoundRect a(float f, float f6, float f7, float f10, float f11, float f12) {
        long jA = CornerRadiusKt.a(f11, f12);
        return new RoundRect(f, f6, f7, f10, jA, jA, jA, jA, null);
    }

    @NotNull
    public static final RoundRect c(float f, float f6, float f7, float f10, long j6) {
        return a(f, f6, f7, f10, CornerRadius.e(j6), CornerRadius.f(j6));
    }
}
