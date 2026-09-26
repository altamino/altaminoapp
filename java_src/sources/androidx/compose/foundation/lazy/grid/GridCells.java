package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.Stable;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@Stable
public interface GridCells {

    @StabilityInferred
    public static final class Adaptive implements GridCells {
        public static final int $stable = 0;
        private final float minSize;

        public /* synthetic */ Adaptive(float f, k kVar) {
            this(f);
        }

        private Adaptive(float f) {
            this.minSize = f;
            if (Dp.e(f, Dp.f(0)) <= 0) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
        }

        @Override // androidx.compose.foundation.lazy.grid.GridCells
        @NotNull
        public List<Integer> a(@NotNull Density density, int i10, int i11) {
            t.j(density, "<this>");
            return LazyGridDslKt.d(i10, Math.max((i10 + i11) / (density.j0(this.minSize) + i11), 1), i11);
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof Adaptive) && Dp.i(this.minSize, ((Adaptive) obj).minSize);
        }

        public int hashCode() {
            return Dp.j(this.minSize);
        }
    }

    @StabilityInferred
    public static final class Fixed implements GridCells {
        public static final int $stable = 0;
        private final int count;

        public int hashCode() {
            return -this.count;
        }

        @Override // androidx.compose.foundation.lazy.grid.GridCells
        @NotNull
        public List<Integer> a(@NotNull Density density, int i10, int i11) {
            t.j(density, "<this>");
            return LazyGridDslKt.d(i10, this.count, i11);
        }

        public boolean equals(@Nullable Object obj) {
            return (obj instanceof Fixed) && this.count == ((Fixed) obj).count;
        }

        public Fixed(int i10) {
            this.count = i10;
            if (i10 > 0) {
            } else {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
        }
    }

    @NotNull
    List<Integer> a(@NotNull Density density, int i10, int i11);
}
