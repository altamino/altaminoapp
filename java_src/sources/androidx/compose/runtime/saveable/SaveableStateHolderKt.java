package androidx.compose.runtime.saveable;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class SaveableStateHolderKt {
    @Composable
    @NotNull
    public static final SaveableStateHolder a(@Nullable Composer composer, int i10) {
        composer.G(15454635);
        SaveableStateHolderImpl saveableStateHolderImpl = (SaveableStateHolderImpl) RememberSaveableKt.b(new Object[0], SaveableStateHolderImpl.Companion.a(), null, SaveableStateHolderKt$rememberSaveableStateHolder$1.INSTANCE, composer, 8, 4);
        saveableStateHolderImpl.h((SaveableStateRegistry) composer.x(SaveableStateRegistryKt.b()));
        composer.Q();
        return saveableStateHolderImpl;
    }
}
