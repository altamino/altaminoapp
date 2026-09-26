package androidx.datastore.preferences.protobuf;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
public class LazyField extends LazyFieldLite {
    private final MessageLite defaultInstance;

    static class LazyEntry<K> implements Map.Entry<K, Object> {
        private Map.Entry<K, LazyField> entry;

        private LazyEntry(Map.Entry<K, LazyField> entry) {
            this.entry = entry;
        }

        public LazyField a() {
            return this.entry.getValue();
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.entry.getKey();
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            LazyField value = this.entry.getValue();
            if (value == null) {
                return null;
            }
            return value.g();
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object obj) {
            if (obj instanceof MessageLite) {
                return this.entry.getValue().e((MessageLite) obj);
            }
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
    }

    static class LazyIterator<K> implements Iterator<Map.Entry<K, Object>> {
        private Iterator<Map.Entry<K, Object>> iterator;

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, Object> next() {
            Map.Entry<K, Object> next = this.iterator.next();
            return next.getValue() instanceof LazyField ? new LazyEntry(next) : next;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.iterator.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.iterator.remove();
        }

        public LazyIterator(Iterator<Map.Entry<K, Object>> it) {
            this.iterator = it;
        }
    }

    public MessageLite g() {
        return d(this.defaultInstance);
    }

    public LazyField(MessageLite messageLite, ExtensionRegistryLite extensionRegistryLite, ByteString byteString) {
        super(extensionRegistryLite, byteString);
        this.defaultInstance = messageLite;
    }

    @Override // androidx.datastore.preferences.protobuf.LazyFieldLite
    public boolean equals(Object obj) {
        return g().equals(obj);
    }

    @Override // androidx.datastore.preferences.protobuf.LazyFieldLite
    public int hashCode() {
        return g().hashCode();
    }

    public String toString() {
        return g().toString();
    }
}
