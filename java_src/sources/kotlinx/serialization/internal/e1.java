package kotlinx.serialization.internal;

import java.util.Map;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class e1<K, V> extends v0<K, V, Map.Entry<? extends K, ? extends V>> {

    @NotNull
    private final SerialDescriptor descriptor;

    static final class b extends kotlin.jvm.internal.v implements e8.l<kotlinx.serialization.descriptors.a, w7.l0> {
        final /* synthetic */ KSerializer<K> $keySerializer;
        final /* synthetic */ KSerializer<V> $valueSerializer;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(KSerializer<K> kSerializer, KSerializer<V> kSerializer2) {
            super(1);
            this.$keySerializer = kSerializer;
            this.$valueSerializer = kSerializer2;
        }

        public final void a(@NotNull kotlinx.serialization.descriptors.a buildSerialDescriptor) {
            kotlin.jvm.internal.t.j(buildSerialDescriptor, "$this$buildSerialDescriptor");
            kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "key", this.$keySerializer.getDescriptor(), null, false, 12, null);
            kotlinx.serialization.descriptors.a.b(buildSerialDescriptor, "value", this.$valueSerializer.getDescriptor(), null, false, 12, null);
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ w7.l0 invoke(kotlinx.serialization.descriptors.a aVar) {
            a(aVar);
            return w7.l0.INSTANCE;
        }
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    private static final class a<K, V> implements Map.Entry<K, V>, f8.a {
        private final K key;
        private final V value;

        @Override // java.util.Map.Entry
        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return kotlin.jvm.internal.t.e(getKey(), aVar.getKey()) && kotlin.jvm.internal.t.e(getValue(), aVar.getValue());
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.key;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.value;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return ((getKey() == null ? 0 : getKey().hashCode()) * 31) + (getValue() != null ? getValue().hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v5) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @NotNull
        public String toString() {
            return "MapEntry(key=" + getKey() + ", value=" + getValue() + ')';
        }

        public a(K k, V v5) {
            this.key = k;
            this.value = v5;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e1(@NotNull KSerializer<K> keySerializer, @NotNull KSerializer<V> valueSerializer) {
        super(keySerializer, valueSerializer, null);
        kotlin.jvm.internal.t.j(keySerializer, "keySerializer");
        kotlin.jvm.internal.t.j(valueSerializer, "valueSerializer");
        this.descriptor = kotlinx.serialization.descriptors.h.c("kotlin.collections.Map.Entry", kotlinx.serialization.descriptors.j.c.INSTANCE, new SerialDescriptor[0], new b(keySerializer, valueSerializer));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.v0
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public K a(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        kotlin.jvm.internal.t.j(entry, "<this>");
        return entry.getKey();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.v0
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public V b(@NotNull Map.Entry<? extends K, ? extends V> entry) {
        kotlin.jvm.internal.t.j(entry, "<this>");
        return entry.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.v0
    @NotNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public Map.Entry<K, V> c(K k, V v5) {
        return new a(k, v5);
    }
}
