package androidx.compose.foundation.shape;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@StabilityInferred
public abstract class CornerBasedShape implements Shape {
    public static final int $stable = 0;

    @NotNull
    private final CornerSize bottomEnd;

    @NotNull
    private final CornerSize bottomStart;

    @NotNull
    private final CornerSize topEnd;

    @NotNull
    private final CornerSize topStart;

    @NotNull
    public abstract CornerBasedShape c(@NotNull CornerSize cornerSize, @NotNull CornerSize cornerSize2, @NotNull CornerSize cornerSize3, @NotNull CornerSize cornerSize4);

    @NotNull
    public abstract Outline e(long j6, float f, float f6, float f7, float f10, @NotNull LayoutDirection layoutDirection);

    @NotNull
    public final CornerSize f() {
        return this.bottomEnd;
    }

    @NotNull
    public final CornerSize g() {
        return this.bottomStart;
    }

    @NotNull
    public final CornerSize h() {
        return this.topEnd;
    }

    @NotNull
    public final CornerSize i() {
        return this.topStart;
    }

    public CornerBasedShape(@NotNull CornerSize topStart, @NotNull CornerSize topEnd, @NotNull CornerSize bottomEnd, @NotNull CornerSize bottomStart) {
        t.j(topStart, "topStart");
        t.j(topEnd, "topEnd");
        t.j(bottomEnd, "bottomEnd");
        t.j(bottomStart, "bottomStart");
        this.topStart = topStart;
        this.topEnd = topEnd;
        this.bottomEnd = bottomEnd;
        this.bottomStart = bottomStart;
    }

    public static /* synthetic */ CornerBasedShape d(CornerBasedShape cornerBasedShape, CornerSize cornerSize, CornerSize cornerSize2, CornerSize cornerSize3, CornerSize cornerSize4, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: copy");
        }
        if ((i10 & 1) != 0) {
            cornerSize = cornerBasedShape.topStart;
        }
        if ((i10 & 2) != 0) {
            cornerSize2 = cornerBasedShape.topEnd;
        }
        if ((i10 & 4) != 0) {
            cornerSize3 = cornerBasedShape.bottomEnd;
        }
        if ((i10 & 8) != 0) {
            cornerSize4 = cornerBasedShape.bottomStart;
        }
        return cornerBasedShape.c(cornerSize, cornerSize2, cornerSize3, cornerSize4);
    }

    @Override // androidx.compose.ui.graphics.Shape
    @NotNull
    public final Outline a(long j6, @NotNull LayoutDirection layoutDirection, @NotNull Density density) {
        t.j(layoutDirection, "layoutDirection");
        t.j(density, "density");
        float fA = this.topStart.a(j6, density);
        float fA2 = this.topEnd.a(j6, density);
        float fA3 = this.bottomEnd.a(j6, density);
        float fA4 = this.bottomStart.a(j6, density);
        float fH = Size.h(j6);
        float f = fA + fA4;
        if (f > fH) {
            float f6 = fH / f;
            fA *= f6;
            fA4 *= f6;
        }
        float f7 = fA4;
        float f10 = fA2 + fA3;
        if (f10 > fH) {
            float f11 = fH / f10;
            fA2 *= f11;
            fA3 *= f11;
        }
        if (fA >= 0.0f && fA2 >= 0.0f && fA3 >= 0.0f && f7 >= 0.0f) {
            return e(j6, fA, fA2, fA3, f7, layoutDirection);
        }
        throw new IllegalArgumentException(("Corner size in Px can't be negative(topStart = " + fA + ", topEnd = " + fA2 + ", bottomEnd = " + fA3 + ", bottomStart = " + f7 + ")!").toString());
    }

    @NotNull
    public final CornerBasedShape b(@NotNull CornerSize all) {
        t.j(all, "all");
        return c(all, all, all, all);
    }
}
