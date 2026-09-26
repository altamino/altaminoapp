package androidx.compose.ui.geometry;

import androidx.compose.runtime.Stable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class RectKt {
    @Stable
    @NotNull
    public static final Rect a(long j6, long j10) {
        return new Rect(Offset.m(j6), Offset.n(j6), Offset.m(j10), Offset.n(j10));
    }

    @Stable
    @NotNull
    public static final Rect b(long j6, long j10) {
        return new Rect(Offset.m(j6), Offset.n(j6), Offset.m(j6) + Size.i(j10), Offset.n(j6) + Size.g(j10));
    }
}
