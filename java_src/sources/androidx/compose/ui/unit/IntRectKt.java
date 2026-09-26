package androidx.compose.ui.unit;

import androidx.compose.runtime.Stable;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class IntRectKt {
    @Stable
    @NotNull
    public static final IntRect a(long j6, long j10) {
        return new IntRect(IntOffset.j(j6), IntOffset.k(j6), IntOffset.j(j6) + IntSize.g(j10), IntOffset.k(j6) + IntSize.f(j10));
    }
}
