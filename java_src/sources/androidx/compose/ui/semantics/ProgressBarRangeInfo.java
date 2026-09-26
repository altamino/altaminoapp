package androidx.compose.ui.semantics;

import androidx.compose.runtime.internal.StabilityInferred;
import j8.e;
import j8.n;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@StabilityInferred
public final class ProgressBarRangeInfo {
    public static final int $stable = 0;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final ProgressBarRangeInfo Indeterminate = new ProgressBarRangeInfo(0.0f, n.b(0.0f, 0.0f), 0, 4, null);
    private final float current;

    @NotNull
    private final e<Float> range;
    private final int steps;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final ProgressBarRangeInfo a() {
            return ProgressBarRangeInfo.Indeterminate;
        }
    }

    public ProgressBarRangeInfo(float f, @NotNull e<Float> range, int i10) {
        t.j(range, "range");
        this.current = f;
        this.range = range;
        this.steps = i10;
    }

    public final float b() {
        return this.current;
    }

    @NotNull
    public final e<Float> c() {
        return this.range;
    }

    public final int d() {
        return this.steps;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProgressBarRangeInfo)) {
            return false;
        }
        ProgressBarRangeInfo progressBarRangeInfo = (ProgressBarRangeInfo) obj;
        return this.current == progressBarRangeInfo.current && t.e(this.range, progressBarRangeInfo.range) && this.steps == progressBarRangeInfo.steps;
    }

    public /* synthetic */ ProgressBarRangeInfo(float f, e eVar, int i10, int i11, k kVar) {
        this(f, eVar, (i11 & 4) != 0 ? 0 : i10);
    }

    public int hashCode() {
        return (((Float.floatToIntBits(this.current) * 31) + this.range.hashCode()) * 31) + this.steps;
    }

    @NotNull
    public String toString() {
        return "ProgressBarRangeInfo(current=" + this.current + ", range=" + this.range + ", steps=" + this.steps + ')';
    }
}
