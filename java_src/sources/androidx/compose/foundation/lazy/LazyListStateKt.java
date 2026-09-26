package androidx.compose.foundation.lazy;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class LazyListStateKt {
    @Composable
    @NotNull
    public static final LazyListState a(int i10, int i11, @Nullable Composer composer, int i12, int i13) {
        composer.G(1470655220);
        if ((i13 & 1) != 0) {
            i10 = 0;
        }
        if ((i13 & 2) != 0) {
            i11 = 0;
        }
        LazyListState lazyListState = (LazyListState) RememberSaveableKt.b(new Object[0], LazyListState.Companion.a(), null, new LazyListStateKt$rememberLazyListState$1(i10, i11), composer, 72, 4);
        composer.Q();
        return lazyListState;
    }
}
