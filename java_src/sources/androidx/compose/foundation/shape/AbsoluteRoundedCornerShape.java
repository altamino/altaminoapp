package androidx.compose.foundation.shape;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.CornerRadiusKt;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@StabilityInferred
public final class AbsoluteRoundedCornerShape extends CornerBasedShape {
    public static final int $stable = 0;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbsoluteRoundedCornerShape)) {
            return false;
        }
        AbsoluteRoundedCornerShape absoluteRoundedCornerShape = (AbsoluteRoundedCornerShape) obj;
        return t.e(i(), absoluteRoundedCornerShape.i()) && t.e(h(), absoluteRoundedCornerShape.h()) && t.e(f(), absoluteRoundedCornerShape.f()) && t.e(g(), absoluteRoundedCornerShape.g());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AbsoluteRoundedCornerShape(@NotNull CornerSize topLeft, @NotNull CornerSize topRight, @NotNull CornerSize bottomRight, @NotNull CornerSize bottomLeft) {
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
        return ((f + f6) + f7) + f10 == 0.0f ? new Outline.Rectangle(SizeKt.c(j6)) : new Outline.Rounded(RoundRectKt.b(SizeKt.c(j6), CornerRadiusKt.b(f, 0.0f, 2, null), CornerRadiusKt.b(f6, 0.0f, 2, null), CornerRadiusKt.b(f7, 0.0f, 2, null), CornerRadiusKt.b(f10, 0.0f, 2, null)));
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    @NotNull
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public AbsoluteRoundedCornerShape c(@NotNull CornerSize topStart, @NotNull CornerSize topEnd, @NotNull CornerSize bottomEnd, @NotNull CornerSize bottomStart) {
        t.j(topStart, "topStart");
        t.j(topEnd, "topEnd");
        t.j(bottomEnd, "bottomEnd");
        t.j(bottomStart, "bottomStart");
        return new AbsoluteRoundedCornerShape(topStart, topEnd, bottomEnd, bottomStart);
    }

    @NotNull
    public String toString() {
        return "AbsoluteRoundedCornerShape(topLeft = " + i() + ", topRight = " + h() + ", bottomRight = " + f() + ", bottomLeft = " + g() + ')';
    }

    public int hashCode() {
        return (((((i().hashCode() * 31) + h().hashCode()) * 31) + f().hashCode()) * 31) + g().hashCode();
    }
}
