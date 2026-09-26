package androidx.compose.material;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Immutable
@ExperimentalMaterialApi
public final class SwipeProgress<T> {
    private final float fraction;
    private final T from;
    private final T to;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SwipeProgress)) {
            return false;
        }
        SwipeProgress swipeProgress = (SwipeProgress) obj;
        return t.e(this.from, swipeProgress.from) && t.e(this.to, swipeProgress.to) && this.fraction == swipeProgress.fraction;
    }

    public int hashCode() {
        T t5 = this.from;
        int iHashCode = (t5 != null ? t5.hashCode() : 0) * 31;
        T t10 = this.to;
        return ((iHashCode + (t10 != null ? t10.hashCode() : 0)) * 31) + Float.floatToIntBits(this.fraction);
    }

    @NotNull
    public String toString() {
        return "SwipeProgress(from=" + this.from + ", to=" + this.to + ", fraction=" + this.fraction + ')';
    }

    public SwipeProgress(T t5, T t10, float f) {
        this.from = t5;
        this.to = t10;
        this.fraction = f;
    }
}
