package androidx.compose.runtime.snapshots;

import f8.e;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
final class StateMapMutableEntriesIterator<K, V> extends StateMapMutableIterator<K, V> implements Iterator<Map.Entry<K, V>>, f8.a {

    /* JADX INFO: renamed from: androidx.compose.runtime.snapshots.StateMapMutableEntriesIterator$next$1, reason: invalid class name */
    public static final class AnonymousClass1 implements Map.Entry<K, V>, e.a {
        private final K key;
        final /* synthetic */ StateMapMutableEntriesIterator<K, V> this$0;
        private V value;

        public void a(V v5) {
            this.value = v5;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.key;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.value;
        }

        AnonymousClass1(StateMapMutableEntriesIterator<K, V> stateMapMutableEntriesIterator) {
            this.this$0 = stateMapMutableEntriesIterator;
            Map.Entry<K, V> entryE = stateMapMutableEntriesIterator.e();
            t.g(entryE);
            this.key = entryE.getKey();
            Map.Entry<K, V> entryE2 = stateMapMutableEntriesIterator.e();
            t.g(entryE2);
            this.value = entryE2.getValue();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Map.Entry
        public V setValue(V v5) {
            StateMapMutableEntriesIterator<K, V> stateMapMutableEntriesIterator = this.this$0;
            if (stateMapMutableEntriesIterator.f().h() != ((StateMapMutableIterator) stateMapMutableEntriesIterator).modification) {
                throw new ConcurrentModificationException();
            }
            V v6 = (V) getValue();
            stateMapMutableEntriesIterator.f().put(getKey(), v5);
            a(v5);
            return v6;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StateMapMutableEntriesIterator(@NotNull SnapshotStateMap<K, V> map, @NotNull Iterator<? extends Map.Entry<? extends K, ? extends V>> iterator) {
        super(map, iterator);
        t.j(map, "map");
        t.j(iterator, "iterator");
    }

    @Override // java.util.Iterator
    @NotNull
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public Map.Entry<K, V> next() {
        c();
        if (e() != null) {
            return new AnonymousClass1(this);
        }
        throw new IllegalStateException();
    }
}
