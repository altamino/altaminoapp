package androidx.window.embedding;

import android.graphics.Rect;
import android.view.WindowMetrics;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.window.core.ExperimentalWindowApi;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@ExperimentalWindowApi
public class SplitRule extends EmbeddingRule {
    private final int layoutDirection;
    private final int minSmallestWidth;
    private final int minWidth;
    private final float splitRatio;

    @Retention(RetentionPolicy.SOURCE)
    public @interface LayoutDir {
    }

    public SplitRule() {
        this(0, 0, 0.0f, 0, 15, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SplitRule)) {
            return false;
        }
        SplitRule splitRule = (SplitRule) obj;
        return this.minWidth == splitRule.minWidth && this.minSmallestWidth == splitRule.minSmallestWidth && this.splitRatio == splitRule.splitRatio && this.layoutDirection == splitRule.layoutDirection;
    }

    @RequiresApi
    public static final class Api30Impl {

        @NotNull
        public static final Api30Impl INSTANCE = new Api30Impl();

        private Api30Impl() {
        }

        @DoNotInline
        @NotNull
        public final Rect a(@NotNull WindowMetrics windowMetrics) {
            t.j(windowMetrics, "windowMetrics");
            Rect bounds = windowMetrics.getBounds();
            t.i(bounds, "windowMetrics.bounds");
            return bounds;
        }
    }

    public /* synthetic */ SplitRule(int i10, int i11, float f, int i12, int i13, k kVar) {
        this((i13 & 1) != 0 ? 0 : i10, (i13 & 2) != 0 ? 0 : i11, (i13 & 4) != 0 ? 0.5f : f, (i13 & 8) != 0 ? 3 : i12);
    }

    public int hashCode() {
        return (((((this.minWidth * 31) + this.minSmallestWidth) * 31) + Float.floatToIntBits(this.splitRatio)) * 31) + this.layoutDirection;
    }

    public SplitRule(int i10, int i11, float f, int i12) {
        this.minWidth = i10;
        this.minSmallestWidth = i11;
        this.splitRatio = f;
        this.layoutDirection = i12;
    }
}
