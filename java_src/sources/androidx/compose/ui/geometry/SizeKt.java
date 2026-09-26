package androidx.compose.ui.geometry;

import androidx.compose.runtime.Stable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class SizeKt {
    @Stable
    @NotNull
    public static final Rect c(long j6) {
        return RectKt.b(Offset.Companion.c(), j6);
    }

    @Stable
    public static final long a(float f, float f6) {
        return Size.d((((long) Float.floatToIntBits(f6)) & 4294967295L) | (Float.floatToIntBits(f) << 32));
    }

    public static final long b(long j6) {
        return OffsetKt.a(Size.i(j6) / 2.0f, Size.g(j6) / 2.0f);
    }
}
