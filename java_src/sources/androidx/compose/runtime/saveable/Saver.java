package androidx.compose.runtime.saveable;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public interface Saver<Original, Saveable> {
    @Nullable
    Saveable a(@NotNull SaverScope saverScope, Original original);

    @Nullable
    Original b(@NotNull Saveable saveable);
}
