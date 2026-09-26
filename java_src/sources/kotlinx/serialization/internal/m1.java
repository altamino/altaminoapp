package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class m1<K, V> extends v0<K, V, w7.u<? extends K, ? extends V>> {

    @NotNull
    private final SerialDescriptor descriptor;

    static final class a extends kotlin.jvm.internal.v implements e8.l<kotlinx.serialization.descriptors.a, w7.l0> {
        final /* synthetic */ KSerializer<K> $keySerializer;
        final /* synthetic */ KSerializer<V> $valueSerializer;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(KSerializer<K> kSerializer, KSerializer<V> kSerializer2) {
            super(1);
            this.$keySerializer = kSerializer;
            this.$valueSerializer = kSerializer2;
        }

        public final void a(@NotNull kotlinx.serialization.descriptors.a buildClassSerialDescriptor) {
            kotlin.jvm.internal.t.j(buildClassSerialDescriptor, "$this$buildClassSerialDescriptor");
            kotlinx.serialization.descriptors.a.b(buildClassSerialDescriptor, "first", this.$keySerializer.getDescriptor(), null, false, 12, null);
            kotlinx.serialization.descriptors.a.b(buildClassSerialDescriptor, "second", this.$valueSerializer.getDescriptor(), null, false, 12, null);
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m1(@NotNull KSerializer<K> keySerializer, @NotNull KSerializer<V> valueSerializer) {
        super(keySerializer, valueSerializer, null);
        kotlin.jvm.internal.t.j(keySerializer, "keySerializer");
        kotlin.jvm.internal.t.j(valueSerializer, "valueSerializer");
        this.descriptor = kotlinx.serialization.descriptors.h.b("kotlin.Pair", new SerialDescriptor[0], new a(keySerializer, valueSerializer));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.v0
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public K a(@NotNull w7.u<? extends K, ? extends V> uVar) {
        kotlin.jvm.internal.t.j(uVar, "<this>");
        return uVar.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.v0
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public V b(@NotNull w7.u<? extends K, ? extends V> uVar) {
        kotlin.jvm.internal.t.j(uVar, "<this>");
        return uVar.d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.v0
    @NotNull
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public w7.u<K, V> c(K k, V v5) {
        return w7.a0.a(k, v5);
    }
}
