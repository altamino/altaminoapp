package l7;

import java.util.Map;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class a<K, V> {
    private static final /* synthetic */ AtomicReferenceFieldUpdater current$FU = AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "current");

    @NotNull
    private volatile /* synthetic */ Object current = s0.h();

    @Nullable
    public final V a(@NotNull K key) {
        t.j(key, "key");
        return (V) ((Map) this.current).get(key);
    }
}
