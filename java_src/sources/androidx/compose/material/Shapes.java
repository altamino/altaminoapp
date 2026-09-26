package androidx.compose.material;

import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@Immutable
public final class Shapes {

    @NotNull
    private final CornerBasedShape large;

    @NotNull
    private final CornerBasedShape medium;

    @NotNull
    private final CornerBasedShape small;

    public Shapes() {
        this(null, null, null, 7, null);
    }

    @NotNull
    public final CornerBasedShape a() {
        return this.large;
    }

    @NotNull
    public final CornerBasedShape b() {
        return this.medium;
    }

    @NotNull
    public final CornerBasedShape c() {
        return this.small;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Shapes)) {
            return false;
        }
        Shapes shapes = (Shapes) obj;
        return t.e(this.small, shapes.small) && t.e(this.medium, shapes.medium) && t.e(this.large, shapes.large);
    }

    public Shapes(@NotNull CornerBasedShape small, @NotNull CornerBasedShape medium, @NotNull CornerBasedShape large) {
        t.j(small, "small");
        t.j(medium, "medium");
        t.j(large, "large");
        this.small = small;
        this.medium = medium;
        this.large = large;
    }

    public int hashCode() {
        return (((this.small.hashCode() * 31) + this.medium.hashCode()) * 31) + this.large.hashCode();
    }

    @NotNull
    public String toString() {
        return "Shapes(small=" + this.small + ", medium=" + this.medium + ", large=" + this.large + ')';
    }

    public /* synthetic */ Shapes(CornerBasedShape cornerBasedShape, CornerBasedShape cornerBasedShape2, CornerBasedShape cornerBasedShape3, int i10, k kVar) {
        this((i10 & 1) != 0 ? RoundedCornerShapeKt.c(Dp.f(4)) : cornerBasedShape, (i10 & 2) != 0 ? RoundedCornerShapeKt.c(Dp.f(4)) : cornerBasedShape2, (i10 & 4) != 0 ? RoundedCornerShapeKt.c(Dp.f(0)) : cornerBasedShape3);
    }
}
