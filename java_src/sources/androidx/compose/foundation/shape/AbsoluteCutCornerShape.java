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

/* JADX INFO: loaded from: classes2.dex */
@StabilityInferred
public final class AbsoluteCutCornerShape extends CornerBasedShape {
    public static final int $stable = 0;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbsoluteCutCornerShape)) {
            return false;
        }
        AbsoluteCutCornerShape absoluteCutCornerShape = (AbsoluteCutCornerShape) obj;
        return t.e(i(), absoluteCutCornerShape.i()) && t.e(h(), absoluteCutCornerShape.h()) && t.e(f(), absoluteCutCornerShape.f()) && t.e(g(), absoluteCutCornerShape.g());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbsoluteCutCornerShape(@NotNull CornerSize topLeft, @NotNull CornerSize topRight, @NotNull CornerSize bottomRight, @NotNull CornerSize bottomLeft) {
        super(topLeft, topRight, bottomRight, bottomLeft);
        t.j(topLeft, "topLeft");
        t.j(topRight, "topRight");
        t.j(bottomRight, "bottomRight");
        t.j(bottomLeft, "bottomLeft");
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    @NotNull
    public Outline e(long j6, float f, float f6, float f7, float f10, @NotNull LayoutDirection layoutDirection) {
        t.j(layoutDirection, "layoutDirection");
        if (f + f6 + f10 + f7 == 0.0f) {
            return new Outline.Rectangle(SizeKt.c(j6));
        }
        Path pathA = AndroidPath_androidKt.a();
        pathA.moveTo(0.0f, f);
        pathA.lineTo(f, 0.0f);
        pathA.lineTo(Size.i(j6) - f6, 0.0f);
        pathA.lineTo(Size.i(j6), f6);
        pathA.lineTo(Size.i(j6), Size.g(j6) - f7);
        pathA.lineTo(Size.i(j6) - f7, Size.g(j6));
        pathA.lineTo(f10, Size.g(j6));
        pathA.lineTo(0.0f, Size.g(j6) - f10);
        pathA.close();
        return new Outline.Generic(pathA);
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    @NotNull
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public AbsoluteCutCornerShape c(@NotNull CornerSize topStart, @NotNull CornerSize topEnd, @NotNull CornerSize bottomEnd, @NotNull CornerSize bottomStart) {
        t.j(topStart, "topStart");
        t.j(topEnd, "topEnd");
        t.j(bottomEnd, "bottomEnd");
        t.j(bottomStart, "bottomStart");
        return new AbsoluteCutCornerShape(topStart, topEnd, bottomEnd, bottomStart);
    }

    @NotNull
    public String toString() {
        return "AbsoluteCutCornerShape(topLeft = " + i() + ", topRight = " + h() + ", bottomRight = " + f() + ", bottomLeft = " + g() + ')';
    }

    public int hashCode() {
        return (((((i().hashCode() * 31) + h().hashCode()) * 31) + f().hashCode()) * 31) + g().hashCode();
    }
}
