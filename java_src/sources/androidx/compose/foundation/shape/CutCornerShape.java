package androidx.compose.foundation.shape;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@StabilityInferred
public final class CutCornerShape extends CornerBasedShape {
    public static final int $stable = 0;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CutCornerShape)) {
            return false;
        }
        CutCornerShape cutCornerShape = (CutCornerShape) obj;
        return t.e(i(), cutCornerShape.i()) && t.e(h(), cutCornerShape.h()) && t.e(f(), cutCornerShape.f()) && t.e(g(), cutCornerShape.g());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CutCornerShape(@NotNull CornerSize topStart, @NotNull CornerSize topEnd, @NotNull CornerSize bottomEnd, @NotNull CornerSize bottomStart) {
        super(topStart, topEnd, bottomEnd, bottomStart);
        t.j(topStart, "topStart");
        t.j(topEnd, "topEnd");
        t.j(bottomEnd, "bottomEnd");
        t.j(bottomStart, "bottomStart");
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    @NotNull
    public Outline e(long j6, float f, float f6, float f7, float f10, @NotNull LayoutDirection layoutDirection) {
        t.j(layoutDirection, "layoutDirection");
        if (f + f6 + f10 + f7 == 0.0f) {
            return new Outline.Rectangle(SizeKt.c(j6));
        }
        Path pathA = AndroidPath_androidKt.a();
        LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
        float f11 = layoutDirection == layoutDirection2 ? f : f6;
        pathA.moveTo(0.0f, f11);
        pathA.lineTo(f11, 0.0f);
        if (layoutDirection == layoutDirection2) {
            f = f6;
        }
        pathA.lineTo(Size.i(j6) - f, 0.0f);
        pathA.lineTo(Size.i(j6), f);
        float f12 = layoutDirection == layoutDirection2 ? f7 : f10;
        pathA.lineTo(Size.i(j6), Size.g(j6) - f12);
        pathA.lineTo(Size.i(j6) - f12, Size.g(j6));
        if (layoutDirection == layoutDirection2) {
            f7 = f10;
        }
        pathA.lineTo(f7, Size.g(j6));
        pathA.lineTo(0.0f, Size.g(j6) - f7);
        pathA.close();
        return new Outline.Generic(pathA);
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    @NotNull
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public CutCornerShape c(@NotNull CornerSize topStart, @NotNull CornerSize topEnd, @NotNull CornerSize bottomEnd, @NotNull CornerSize bottomStart) {
        t.j(topStart, "topStart");
        t.j(topEnd, "topEnd");
        t.j(bottomEnd, "bottomEnd");
        t.j(bottomStart, "bottomStart");
        return new CutCornerShape(topStart, topEnd, bottomEnd, bottomStart);
    }

    @NotNull
    public String toString() {
        return "CutCornerShape(topStart = " + i() + ", topEnd = " + h() + ", bottomEnd = " + f() + ", bottomStart = " + g() + ')';
    }

    public int hashCode() {
        return (((((i().hashCode() * 31) + h().hashCode()) * 31) + f().hashCode()) * 31) + g().hashCode();
    }
}
