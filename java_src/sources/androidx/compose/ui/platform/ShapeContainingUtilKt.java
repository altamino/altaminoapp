package androidx.compose.ui.platform;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathOperation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class ShapeContainingUtilKt {
    private static final boolean e(Outline.Rounded rounded, float f, float f6, Path path, Path path2) {
        RoundRect roundRectA = rounded.a();
        if (f < roundRectA.e() || f >= roundRectA.f() || f6 < roundRectA.g() || f6 >= roundRectA.a()) {
            return false;
        }
        if (!a(roundRectA)) {
            Path pathA = path2 == null ? AndroidPath_androidKt.a() : path2;
            pathA.e(roundRectA);
            return c(pathA, f, f6, path, path2);
        }
        float fE = CornerRadius.e(roundRectA.h()) + roundRectA.e();
        float f7 = CornerRadius.f(roundRectA.h()) + roundRectA.g();
        float f10 = roundRectA.f() - CornerRadius.e(roundRectA.i());
        float f11 = CornerRadius.f(roundRectA.i()) + roundRectA.g();
        float f12 = roundRectA.f() - CornerRadius.e(roundRectA.c());
        float fA = roundRectA.a() - CornerRadius.f(roundRectA.c());
        float fA2 = roundRectA.a() - CornerRadius.f(roundRectA.b());
        float fE2 = CornerRadius.e(roundRectA.b()) + roundRectA.e();
        if (f < fE && f6 < f7) {
            return f(f, f6, roundRectA.h(), fE, f7);
        }
        if (f < fE2 && f6 > fA2) {
            return f(f, f6, roundRectA.b(), fE2, fA2);
        }
        if (f > f10 && f6 < f11) {
            return f(f, f6, roundRectA.i(), f10, f11);
        }
        if (f <= f12 || f6 <= fA) {
            return true;
        }
        return f(f, f6, roundRectA.c(), f12, fA);
    }

    private static final boolean f(float f, float f6, long j6, float f7, float f10) {
        float f11 = f - f7;
        float f12 = f6 - f10;
        float fE = CornerRadius.e(j6);
        float f13 = CornerRadius.f(j6);
        return ((f11 * f11) / (fE * fE)) + ((f12 * f12) / (f13 * f13)) <= 1.0f;
    }

    public static final boolean b(@NotNull Outline outline, float f, float f6, @Nullable Path path, @Nullable Path path2) {
        kotlin.jvm.internal.t.j(outline, "outline");
        if (outline instanceof Outline.Rectangle) {
            return d(((Outline.Rectangle) outline).a(), f, f6);
        }
        if (outline instanceof Outline.Rounded) {
            return e((Outline.Rounded) outline, f, f6, path, path2);
        }
        if (outline instanceof Outline.Generic) {
            return c(((Outline.Generic) outline).a(), f, f6, path, path2);
        }
        throw new w7.s();
    }

    private static final boolean c(Path path, float f, float f6, Path path2, Path path3) {
        Rect rect = new Rect(f - 0.005f, f6 - 0.005f, f + 0.005f, f6 + 0.005f);
        if (path2 == null) {
            path2 = AndroidPath_androidKt.a();
        }
        path2.j(rect);
        if (path3 == null) {
            path3 = AndroidPath_androidKt.a();
        }
        path3.k(path, path2, PathOperation.Companion.b());
        boolean zIsEmpty = path3.isEmpty();
        path3.reset();
        path2.reset();
        return !zIsEmpty;
    }

    private static final boolean a(RoundRect roundRect) {
        if (CornerRadius.e(roundRect.h()) + CornerRadius.e(roundRect.i()) <= roundRect.j() && CornerRadius.e(roundRect.b()) + CornerRadius.e(roundRect.c()) <= roundRect.j() && CornerRadius.f(roundRect.h()) + CornerRadius.f(roundRect.b()) <= roundRect.d() && CornerRadius.f(roundRect.i()) + CornerRadius.f(roundRect.c()) <= roundRect.d()) {
            return true;
        }
        return false;
    }

    private static final boolean d(Rect rect, float f, float f6) {
        if (rect.j() <= f && f < rect.k() && rect.m() <= f6 && f6 < rect.e()) {
            return true;
        }
        return false;
    }
}
