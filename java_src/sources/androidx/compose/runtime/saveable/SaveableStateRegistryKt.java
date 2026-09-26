package androidx.compose.runtime.saveable;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import e8.l;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class SaveableStateRegistryKt {

    @NotNull
    private static final ProvidableCompositionLocal<SaveableStateRegistry> LocalSaveableStateRegistry = CompositionLocalKt.e(SaveableStateRegistryKt$LocalSaveableStateRegistry$1.INSTANCE);

    @NotNull
    public static final ProvidableCompositionLocal<SaveableStateRegistry> b() {
        return LocalSaveableStateRegistry;
    }

    @NotNull
    public static final SaveableStateRegistry a(@Nullable Map<String, ? extends List<? extends Object>> map, @NotNull l<Object, Boolean> canBeSaved) {
        t.j(canBeSaved, "canBeSaved");
        return new SaveableStateRegistryImpl(map, canBeSaved);
    }
}
