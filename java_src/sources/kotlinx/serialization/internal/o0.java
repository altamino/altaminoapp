package kotlinx.serialization.internal;

import java.util.HashSet;
import java.util.Set;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class o0<E> extends x<E, Set<? extends E>, HashSet<E>> {

    @NotNull
    private final SerialDescriptor descriptor;

    @Override // kotlinx.serialization.internal.w, kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public void c(@NotNull HashSet<E> hashSet, int i10) {
        kotlin.jvm.internal.t.j(hashSet, "<this>");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    @NotNull
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public Set<E> l(@NotNull HashSet<E> hashSet) {
        kotlin.jvm.internal.t.j(hashSet, "<this>");
        return hashSet;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0(@NotNull KSerializer<E> eSerializer) {
        super(eSerializer);
        kotlin.jvm.internal.t.j(eSerializer, "eSerializer");
        this.descriptor = new n0(eSerializer.getDescriptor());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    @NotNull
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public HashSet<E> a() {
        return new HashSet<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public int b(@NotNull HashSet<E> hashSet) {
        kotlin.jvm.internal.t.j(hashSet, "<this>");
        return hashSet.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.w
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public void n(@NotNull HashSet<E> hashSet, int i10, E e) {
        kotlin.jvm.internal.t.j(hashSet, "<this>");
        hashSet.add(e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.serialization.internal.a
    @NotNull
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public HashSet<E> k(@NotNull Set<? extends E> set) {
        kotlin.jvm.internal.t.j(set, "<this>");
        HashSet<E> hashSet = set instanceof HashSet ? (HashSet) set : null;
        return hashSet == null ? new HashSet<>(set) : hashSet;
    }
}
