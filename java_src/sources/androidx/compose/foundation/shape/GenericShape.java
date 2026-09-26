package androidx.compose.foundation.shape;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.q;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
@StabilityInferred
public final class GenericShape implements Shape {
    public static final int $stable = 0;

    @NotNull
    private final q<Path, Size, LayoutDirection, l0> builder;

    /* JADX WARN: Multi-variable type inference failed */
    public GenericShape(@NotNull q<? super Path, ? super Size, ? super LayoutDirection, l0> builder) {
        t.j(builder, "builder");
        this.builder = builder;
    }

    @Override // androidx.compose.ui.graphics.Shape
    @NotNull
    public Outline a(long j6, @NotNull LayoutDirection layoutDirection, @NotNull Density density) {
        t.j(layoutDirection, "layoutDirection");
        t.j(density, "density");
        Path pathA = AndroidPath_androidKt.a();
        this.builder.invoke(pathA, Size.c(j6), layoutDirection);
        pathA.close();
        return new Outline.Generic(pathA);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        GenericShape genericShape = obj instanceof GenericShape ? (GenericShape) obj : null;
        return t.e(genericShape != null ? genericShape.builder : null, this.builder);
    }

    public int hashCode() {
        return this.builder.hashCode();
    }
}
