package androidx.compose.ui;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@Immutable
public final class BiasAbsoluteAlignment implements Alignment {
    private final float horizontalBias;
    private final float verticalBias;

    @Immutable
    public static final class Horizontal implements Alignment.Horizontal {
        private final float bias;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Horizontal) && t.e(Float.valueOf(this.bias), Float.valueOf(((Horizontal) obj).bias));
        }

        public int hashCode() {
            return Float.floatToIntBits(this.bias);
        }

        @NotNull
        public String toString() {
            return "Horizontal(bias=" + this.bias + ')';
        }

        @Override // androidx.compose.ui.Alignment.Horizontal
        public int a(int i10, int i11, @NotNull LayoutDirection layoutDirection) {
            t.j(layoutDirection, "layoutDirection");
            return g8.c.c(((i11 - i10) / 2.0f) * (1 + this.bias));
        }

        public Horizontal(float f) {
            this.bias = f;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BiasAbsoluteAlignment)) {
            return false;
        }
        BiasAbsoluteAlignment biasAbsoluteAlignment = (BiasAbsoluteAlignment) obj;
        return t.e(Float.valueOf(this.horizontalBias), Float.valueOf(biasAbsoluteAlignment.horizontalBias)) && t.e(Float.valueOf(this.verticalBias), Float.valueOf(biasAbsoluteAlignment.verticalBias));
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.horizontalBias) * 31) + Float.floatToIntBits(this.verticalBias);
    }

    @NotNull
    public String toString() {
        return "BiasAbsoluteAlignment(horizontalBias=" + this.horizontalBias + ", verticalBias=" + this.verticalBias + ')';
    }

    @Override // androidx.compose.ui.Alignment
    public long a(long j6, long j10, @NotNull LayoutDirection layoutDirection) {
        t.j(layoutDirection, "layoutDirection");
        long jA = IntSizeKt.a(IntSize.g(j10) - IntSize.g(j6), IntSize.f(j10) - IntSize.f(j6));
        float f = 1;
        return IntOffsetKt.a(g8.c.c((IntSize.g(jA) / 2.0f) * (this.horizontalBias + f)), g8.c.c((IntSize.f(jA) / 2.0f) * (f + this.verticalBias)));
    }

    public BiasAbsoluteAlignment(float f, float f6) {
        this.horizontalBias = f;
        this.verticalBias = f6;
    }
}
