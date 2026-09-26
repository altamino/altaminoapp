package kotlinx.serialization.internal;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class m0<K, V> extends g1<K, V, Map<K, ? extends V>, HashMap<K, V>> {

    @NotNull
    private final SerialDescriptor descriptor;

    @Override // kotlinx.serialization.internal.g1, kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public void c(@NotNull HashMap<K, V> map, int i10) {
        kotlin.jvm.internal.t.j(map, "<this>");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    @NotNull
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public Map<K, V> l(@NotNull HashMap<K, V> map) {
        kotlin.jvm.internal.t.j(map, "<this>");
        return map;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m0(@NotNull KSerializer<K> kSerializer, @NotNull KSerializer<V> vSerializer) {
        super(kSerializer, vSerializer, null);
        kotlin.jvm.internal.t.j(kSerializer, "kSerializer");
        kotlin.jvm.internal.t.j(vSerializer, "vSerializer");
        this.descriptor = new l0(kSerializer.getDescriptor(), vSerializer.getDescriptor());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    @NotNull
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public HashMap<K, V> a() {
        return new HashMap<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public int b(@NotNull HashMap<K, V> map) {
        kotlin.jvm.internal.t.j(map, "<this>");
        return map.size() * 2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    @NotNull
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public Iterator<Map.Entry<K, V>> d(@NotNull Map<K, ? extends V> map) {
        kotlin.jvm.internal.t.j(map, "<this>");
        return map.entrySet().iterator();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public int e(@NotNull Map<K, ? extends V> map) {
        kotlin.jvm.internal.t.j(map, "<this>");
        return map.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    @NotNull
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public HashMap<K, V> k(@NotNull Map<K, ? extends V> map) {
        kotlin.jvm.internal.t.j(map, "<this>");
        HashMap<K, V> map2 = map instanceof HashMap ? (HashMap) map : null;
        return map2 == null ? new HashMap<>(map) : map2;
    }
}
