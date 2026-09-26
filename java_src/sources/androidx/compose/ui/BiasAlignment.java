package androidx.compose.ui;

import androidx.compose.runtime.Immutable;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@Immutable
public final class BiasAlignment implements Alignment {
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
            return g8.c.c(((i11 - i10) / 2.0f) * (1 + (layoutDirection == LayoutDirection.Ltr ? this.bias : (-1) * this.bias)));
        }

        public Horizontal(float f) {
            this.bias = f;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BiasAlignment)) {
            return false;
        }
        BiasAlignment biasAlignment = (BiasAlignment) obj;
        return t.e(Float.valueOf(this.horizontalBias), Float.valueOf(biasAlignment.horizontalBias)) && t.e(Float.valueOf(this.verticalBias), Float.valueOf(biasAlignment.verticalBias));
    }

    public int hashCode() {
        return (Float.floatToIntBits(this.horizontalBias) * 31) + Float.floatToIntBits(this.verticalBias);
    }

    @NotNull
    public String toString() {
        return "BiasAlignment(horizontalBias=" + this.horizontalBias + ", verticalBias=" + this.verticalBias + ')';
    }

    @Immutable
    public static final class Vertical implements Alignment.Vertical {
        private final float bias;

        @Override // androidx.compose.ui.Alignment.Vertical
        public int a(int i10, int i11) {
            return g8.c.c(((i11 - i10) / 2.0f) * (1 + this.bias));
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Vertical) && t.e(Float.valueOf(this.bias), Float.valueOf(((Vertical) obj).bias));
        }

        public int hashCode() {
            return Float.floatToIntBits(this.bias);
        }

        @NotNull
        public String toString() {
            return "Vertical(bias=" + this.bias + ')';
        }

        public Vertical(float f) {
            this.bias = f;
        }
    }

    @Override // androidx.compose.ui.Alignment
    public long a(long j6, long j10, @NotNull LayoutDirection layoutDirection) {
        t.j(layoutDirection, "layoutDirection");
        float fG = (IntSize.g(j10) - IntSize.g(j6)) / 2.0f;
        float f = (IntSize.f(j10) - IntSize.f(j6)) / 2.0f;
        float f6 = 1;
        return IntOffsetKt.a(g8.c.c(fG * ((layoutDirection == LayoutDirection.Ltr ? this.horizontalBias : (-1) * this.horizontalBias) + f6)), g8.c.c(f * (f6 + this.verticalBias)));
    }

    public BiasAlignment(float f, float f6) {
        this.horizontalBias = f;
        this.verticalBias = f6;
    }
}
