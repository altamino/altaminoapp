package kotlinx.coroutines.internal;

import java.util.List;
import kotlinx.coroutines.n2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public interface w {
    @NotNull
    n2 createDispatcher(@NotNull List<? extends w> list);

    int getLoadPriority();

    @Nullable
    String hintOnError();
}
