package androidx.compose.foundation.shape;

import androidx.compose.runtime.Stable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class CornerSizeKt {

    @NotNull
    private static final CornerSize ZeroCornerSize = new CornerSizeKt$ZeroCornerSize$1();

    @NotNull
    public static final CornerSize c() {
        return ZeroCornerSize;
    }

    @Stable
    @NotNull
    public static final CornerSize a(int i10) {
        return new PercentCornerSize(i10);
    }

    @Stable
    @NotNull
    public static final CornerSize b(float f) {
        return new DpCornerSize(f, null);
    }
}
