package androidx.compose.foundation.lazy;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.unit.Dp;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class LazyItemScopeImpl implements LazyItemScope {

    @NotNull
    private final MutableState maxHeight$delegate;

    @NotNull
    private final MutableState maxWidth$delegate;

    public final void a(float f) {
        this.maxHeight$delegate.setValue(Dp.c(f));
    }

    public final void b(float f) {
        this.maxWidth$delegate.setValue(Dp.c(f));
    }

    public LazyItemScopeImpl() {
        Dp.Companion companion = Dp.Companion;
        this.maxWidth$delegate = SnapshotStateKt__SnapshotStateKt.e(Dp.c(companion.b()), null, 2, null);
        this.maxHeight$delegate = SnapshotStateKt__SnapshotStateKt.e(Dp.c(companion.b()), null, 2, null);
    }
}
