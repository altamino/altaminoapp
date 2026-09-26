package m8;

import java.util.List;
import java.util.Map;
import k8.b;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.e;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.s;
import kotlin.jvm.internal.s0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.u0;
import kotlin.jvm.internal.w;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.c1;
import kotlinx.serialization.internal.d1;
import kotlinx.serialization.internal.e1;
import kotlinx.serialization.internal.e2;
import kotlinx.serialization.internal.f;
import kotlinx.serialization.internal.f2;
import kotlinx.serialization.internal.g2;
import kotlinx.serialization.internal.h;
import kotlinx.serialization.internal.i;
import kotlinx.serialization.internal.j2;
import kotlinx.serialization.internal.k;
import kotlinx.serialization.internal.k1;
import kotlinx.serialization.internal.l;
import kotlinx.serialization.internal.m1;
import kotlinx.serialization.internal.m2;
import kotlinx.serialization.internal.n2;
import kotlinx.serialization.internal.p2;
import kotlinx.serialization.internal.q;
import kotlinx.serialization.internal.q2;
import kotlinx.serialization.internal.r;
import kotlinx.serialization.internal.s2;
import kotlinx.serialization.internal.t0;
import kotlinx.serialization.internal.t2;
import kotlinx.serialization.internal.v2;
import kotlinx.serialization.internal.w2;
import kotlinx.serialization.internal.x0;
import kotlinx.serialization.internal.x2;
import kotlinx.serialization.internal.z1;
import org.jetbrains.annotations.NotNull;
import w7.b0;
import w7.c0;
import w7.d0;
import w7.e0;
import w7.f0;
import w7.g0;
import w7.i0;
import w7.j0;
import w7.l0;
import w7.u;
import w7.z;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    @NotNull
    public static final KSerializer<Long> A(@NotNull w wVar) {
        t.j(wVar, "<this>");
        return d1.INSTANCE;
    }

    @NotNull
    public static final KSerializer<Short> B(@NotNull s0 s0Var) {
        t.j(s0Var, "<this>");
        return f2.INSTANCE;
    }

    @NotNull
    public static final KSerializer<String> C(@NotNull u0 u0Var) {
        t.j(u0Var, "<this>");
        return g2.INSTANCE;
    }

    @NotNull
    public static final KSerializer<b0> D(@NotNull b0.a aVar) {
        t.j(aVar, "<this>");
        return n2.INSTANCE;
    }

    @NotNull
    public static final KSerializer<d0> E(@NotNull d0.a aVar) {
        t.j(aVar, "<this>");
        return q2.INSTANCE;
    }

    @NotNull
    public static final KSerializer<f0> F(@NotNull f0.a aVar) {
        t.j(aVar, "<this>");
        return t2.INSTANCE;
    }

    @NotNull
    public static final KSerializer<i0> G(@NotNull i0.a aVar) {
        t.j(aVar, "<this>");
        return w2.INSTANCE;
    }

    @NotNull
    public static final KSerializer<l0> H(@NotNull l0 l0Var) {
        t.j(l0Var, "<this>");
        return x2.INSTANCE;
    }

    @NotNull
    public static final <T, E extends T> KSerializer<E[]> a(@NotNull KClass<T> kClass, @NotNull KSerializer<E> elementSerializer) {
        t.j(kClass, "kClass");
        t.j(elementSerializer, "elementSerializer");
        return new z1(kClass, elementSerializer);
    }

    @NotNull
    public static final KSerializer<boolean[]> b() {
        return h.INSTANCE;
    }

    @NotNull
    public static final KSerializer<byte[]> c() {
        return k.INSTANCE;
    }

    @NotNull
    public static final KSerializer<char[]> d() {
        return q.INSTANCE;
    }

    @NotNull
    public static final KSerializer<double[]> e() {
        return kotlinx.serialization.internal.b0.INSTANCE;
    }

    @NotNull
    public static final KSerializer<float[]> f() {
        return kotlinx.serialization.internal.i0.INSTANCE;
    }

    @NotNull
    public static final KSerializer<int[]> g() {
        return kotlinx.serialization.internal.s0.INSTANCE;
    }

    @NotNull
    public static final <T> KSerializer<List<T>> h(@NotNull KSerializer<T> elementSerializer) {
        t.j(elementSerializer, "elementSerializer");
        return new f(elementSerializer);
    }

    @NotNull
    public static final KSerializer<long[]> i() {
        return c1.INSTANCE;
    }

    @NotNull
    public static final <K, V> KSerializer<Map.Entry<K, V>> j(@NotNull KSerializer<K> keySerializer, @NotNull KSerializer<V> valueSerializer) {
        t.j(keySerializer, "keySerializer");
        t.j(valueSerializer, "valueSerializer");
        return new e1(keySerializer, valueSerializer);
    }

    @NotNull
    public static final <K, V> KSerializer<Map<K, V>> k(@NotNull KSerializer<K> keySerializer, @NotNull KSerializer<V> valueSerializer) {
        t.j(keySerializer, "keySerializer");
        t.j(valueSerializer, "valueSerializer");
        return new x0(keySerializer, valueSerializer);
    }

    @NotNull
    public static final <K, V> KSerializer<u<K, V>> l(@NotNull KSerializer<K> keySerializer, @NotNull KSerializer<V> valueSerializer) {
        t.j(keySerializer, "keySerializer");
        t.j(valueSerializer, "valueSerializer");
        return new m1(keySerializer, valueSerializer);
    }

    @NotNull
    public static final KSerializer<short[]> m() {
        return e2.INSTANCE;
    }

    @NotNull
    public static final <A, B, C> KSerializer<z<A, B, C>> n(@NotNull KSerializer<A> aSerializer, @NotNull KSerializer<B> bSerializer, @NotNull KSerializer<C> cSerializer) {
        t.j(aSerializer, "aSerializer");
        t.j(bSerializer, "bSerializer");
        t.j(cSerializer, "cSerializer");
        return new j2(aSerializer, bSerializer, cSerializer);
    }

    @NotNull
    public static final KSerializer<c0> o() {
        return m2.INSTANCE;
    }

    @NotNull
    public static final KSerializer<e0> p() {
        return p2.INSTANCE;
    }

    @NotNull
    public static final KSerializer<g0> q() {
        return s2.INSTANCE;
    }

    @NotNull
    public static final KSerializer<j0> r() {
        return v2.INSTANCE;
    }

    @NotNull
    public static final <T> KSerializer<T> s(@NotNull KSerializer<T> kSerializer) {
        t.j(kSerializer, "<this>");
        return kSerializer.getDescriptor().b() ? kSerializer : new k1(kSerializer);
    }

    @NotNull
    public static final KSerializer<b> t(@NotNull b.a aVar) {
        t.j(aVar, "<this>");
        return kotlinx.serialization.internal.d0.INSTANCE;
    }

    @NotNull
    public static final KSerializer<Boolean> u(@NotNull d dVar) {
        t.j(dVar, "<this>");
        return i.INSTANCE;
    }

    @NotNull
    public static final KSerializer<Byte> v(@NotNull e eVar) {
        t.j(eVar, "<this>");
        return l.INSTANCE;
    }

    @NotNull
    public static final KSerializer<Character> w(@NotNull g gVar) {
        t.j(gVar, "<this>");
        return r.INSTANCE;
    }

    @NotNull
    public static final KSerializer<Double> x(@NotNull kotlin.jvm.internal.l lVar) {
        t.j(lVar, "<this>");
        return kotlinx.serialization.internal.c0.INSTANCE;
    }

    @NotNull
    public static final KSerializer<Float> y(@NotNull m mVar) {
        t.j(mVar, "<this>");
        return kotlinx.serialization.internal.j0.INSTANCE;
    }

    @NotNull
    public static final KSerializer<Integer> z(@NotNull s sVar) {
        t.j(sVar, "<this>");
        return t0.INSTANCE;
    }
}
