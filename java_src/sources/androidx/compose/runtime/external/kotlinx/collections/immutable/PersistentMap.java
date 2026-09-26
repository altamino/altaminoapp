package androidx.compose.runtime.external.kotlinx.collections.immutable;

import f8.e;
import java.util.Map;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public interface PersistentMap<K, V> extends ImmutableMap<K, V> {

    public interface Builder<K, V> extends Map<K, V>, e {
        @NotNull
        PersistentMap<K, V> build();
    }

    @NotNull
    Builder<K, V> builder();
}
