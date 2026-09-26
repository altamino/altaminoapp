package androidx.compose.foundation.layout;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.Stable;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@Stable
public interface PaddingValues {

    @Immutable
    public static final class Absolute implements PaddingValues {
        private final float bottom;
        private final float left;
        private final float right;
        private final float top;

        public /* synthetic */ Absolute(float f, float f6, float f7, float f10, kotlin.jvm.internal.k kVar) {
            this(f, f6, f7, f10);
        }

        @Override // androidx.compose.foundation.layout.PaddingValues
        public float a() {
            return this.bottom;
        }

        @Override // androidx.compose.foundation.layout.PaddingValues
        public float b(@NotNull LayoutDirection layoutDirection) {
            t.j(layoutDirection, "layoutDirection");
            return this.left;
        }

        @Override // androidx.compose.foundation.layout.PaddingValues
        public float c(@NotNull LayoutDirection layoutDirection) {
            t.j(layoutDirection, "layoutDirection");
            return this.right;
        }

        @Override // androidx.compose.foundation.layout.PaddingValues
        public float d() {
            return this.top;
        }

        private Absolute(float f, float f6, float f7, float f10) {
            this.left = f;
            this.top = f6;
            this.right = f7;
            this.bottom = f10;
        }

        public boolean equals(@Nullable Object obj) {
            if (!(obj instanceof Absolute)) {
                return false;
            }
            Absolute absolute = (Absolute) obj;
            return Dp.i(this.left, absolute.left) && Dp.i(this.top, absolute.top) && Dp.i(this.right, absolute.right) && Dp.i(this.bottom, absolute.bottom);
        }

        public int hashCode() {
            return (((((Dp.j(this.left) * 31) + Dp.j(this.top)) * 31) + Dp.j(this.right)) * 31) + Dp.j(this.bottom);
        }

        @NotNull
        public String toString() {
            return "PaddingValues.Absolute(left=" + ((Object) Dp.k(this.left)) + ", top=" + ((Object) Dp.k(this.top)) + ", right=" + ((Object) Dp.k(this.right)) + ", bottom=" + ((Object) Dp.k(this.bottom)) + ')';
        }

        public /* synthetic */ Absolute(float f, float f6, float f7, float f10, int i10, kotlin.jvm.internal.k kVar) {
            this((i10 & 1) != 0 ? Dp.f(0) : f, (i10 & 2) != 0 ? Dp.f(0) : f6, (i10 & 4) != 0 ? Dp.f(0) : f7, (i10 & 8) != 0 ? Dp.f(0) : f10, null);
        }
    }

    float a();

    float b(@NotNull LayoutDirection layoutDirection);

    float c(@NotNull LayoutDirection layoutDirection);

    float d();
}
