package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class PersistentHashMapKeysIterator<K, V> extends PersistentHashMapBaseIterator<K, V, K> {
    /* JADX WARN: Illegal instructions before constructor call */
    public PersistentHashMapKeysIterator(@NotNull TrieNode<K, V> node) {
        t.j(node, "node");
        TrieNodeBaseIterator[] trieNodeBaseIteratorArr = new TrieNodeBaseIterator[8];
        for (int i10 = 0; i10 < 8; i10++) {
            trieNodeBaseIteratorArr[i10] = new TrieNodeKeysIterator();
        }
        super(node, trieNodeBaseIteratorArr);
    }
}
