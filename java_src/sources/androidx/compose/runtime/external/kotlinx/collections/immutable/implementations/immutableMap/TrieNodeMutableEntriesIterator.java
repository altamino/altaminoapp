package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class TrieNodeMutableEntriesIterator<K, V> extends TrieNodeBaseIterator<K, V, Map.Entry<K, V>> {

    @NotNull
    private final PersistentHashMapBuilderEntriesIterator<K, V> parentIterator;

    public TrieNodeMutableEntriesIterator(@NotNull PersistentHashMapBuilderEntriesIterator<K, V> parentIterator) {
        t.j(parentIterator, "parentIterator");
        this.parentIterator = parentIterator;
    }

    @Override // java.util.Iterator
    @NotNull
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public Map.Entry<K, V> next() {
        CommonFunctionsKt.a(f());
        m(e() + 2);
        return new MutableMapEntry(this.parentIterator, c()[e() - 2], c()[e() - 1]);
    }
}
