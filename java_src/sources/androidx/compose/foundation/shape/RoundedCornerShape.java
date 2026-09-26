package androidx.compose.foundation.shape;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.CornerRadiusKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@StabilityInferred
public final class RoundedCornerShape extends CornerBasedShape {
    public static final int $stable = 0;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RoundedCornerShape)) {
            return false;
        }
        RoundedCornerShape roundedCornerShape = (RoundedCornerShape) obj;
        return t.e(i(), roundedCornerShape.i()) && t.e(h(), roundedCornerShape.h()) && t.e(f(), roundedCornerShape.f()) && t.e(g(), roundedCornerShape.g());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RoundedCornerShape(@NotNull CornerSize topStart, @NotNull CornerSize topEnd, @NotNull CornerSize bottomEnd, @NotNull CornerSize bottomStart) {
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
        if (f + f6 + f7 + f10 == 0.0f) {
            return new Outline.Rectangle(SizeKt.c(j6));
        }
        Rect rectC = SizeKt.c(j6);
        LayoutDirection layoutDirection2 = LayoutDirection.Ltr;
        return new Outline.Rounded(RoundRectKt.b(rectC, CornerRadiusKt.b(layoutDirection == layoutDirection2 ? f : f6, 0.0f, 2, null), CornerRadiusKt.b(layoutDirection == layoutDirection2 ? f6 : f, 0.0f, 2, null), CornerRadiusKt.b(layoutDirection == layoutDirection2 ? f7 : f10, 0.0f, 2, null), CornerRadiusKt.b(layoutDirection == layoutDirection2 ? f10 : f7, 0.0f, 2, null)));
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    @NotNull
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public RoundedCornerShape c(@NotNull CornerSize topStart, @NotNull CornerSize topEnd, @NotNull CornerSize bottomEnd, @NotNull CornerSize bottomStart) {
        t.j(topStart, "topStart");
        t.j(topEnd, "topEnd");
        t.j(bottomEnd, "bottomEnd");
        t.j(bottomStart, "bottomStart");
        return new RoundedCornerShape(topStart, topEnd, bottomEnd, bottomStart);
    }

    @NotNull
    public String toString() {
        return "RoundedCornerShape(topStart = " + i() + ", topEnd = " + h() + ", bottomEnd = " + f() + ", bottomStart = " + g() + ')';
    }

    public int hashCode() {
        return (((((i().hashCode() * 31) + h().hashCode()) * 31) + f().hashCode()) * 31) + g().hashCode();
    }
}
