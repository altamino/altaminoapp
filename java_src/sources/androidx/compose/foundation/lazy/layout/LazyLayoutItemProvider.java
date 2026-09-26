package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Stable;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Stable
@ExperimentalFoundationApi
public interface LazyLayoutItemProvider {
    @Nullable
    Object a(int i10);

    @Composable
    void b(int i10, @Nullable Composer composer, int i11);

    @NotNull
    Map<Object, Integer> c();

    @NotNull
    Object d(int i10);

    int f();
}
