package kotlinx.serialization;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.w;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlinx.serialization.internal.m0;
import kotlinx.serialization.internal.o0;
import kotlinx.serialization.internal.p1;
import kotlinx.serialization.internal.q1;
import kotlinx.serialization.internal.x0;
import kotlinx.serialization.internal.y1;
import kotlinx.serialization.internal.z0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;
import w7.v;
import w7.z;

/* JADX INFO: loaded from: classes8.dex */
final /* synthetic */ class n {
    private static final KSerializer<? extends Object> a(KClass<Object> kClass, List<? extends KType> list, List<? extends KSerializer<Object>> list2) {
        if (t.e(kClass, q0.b(Collection.class)) || t.e(kClass, q0.b(List.class)) || t.e(kClass, q0.b(List.class)) || t.e(kClass, q0.b(ArrayList.class))) {
            return new kotlinx.serialization.internal.f(list2.get(0));
        }
        if (t.e(kClass, q0.b(HashSet.class))) {
            return new o0(list2.get(0));
        }
        if (t.e(kClass, q0.b(Set.class)) || t.e(kClass, q0.b(Set.class)) || t.e(kClass, q0.b(LinkedHashSet.class))) {
            return new z0(list2.get(0));
        }
        if (t.e(kClass, q0.b(HashMap.class))) {
            return new m0(list2.get(0), list2.get(1));
        }
        if (t.e(kClass, q0.b(Map.class)) || t.e(kClass, q0.b(Map.class)) || t.e(kClass, q0.b(LinkedHashMap.class))) {
            return new x0(list2.get(0), list2.get(1));
        }
        if (t.e(kClass, q0.b(Map.Entry.class))) {
            return m8.a.j(list2.get(0), list2.get(1));
        }
        if (t.e(kClass, q0.b(u.class))) {
            return m8.a.l(list2.get(0), list2.get(1));
        }
        if (t.e(kClass, q0.b(z.class))) {
            return m8.a.n(list2.get(0), list2.get(1), list2.get(2));
        }
        if (!p1.l(kClass)) {
            return null;
        }
        KClassifier classifier = list.get(0).getClassifier();
        t.h(classifier, "null cannot be cast to non-null type kotlin.reflect.KClass<kotlin.Any>");
        return m8.a.a((KClass) classifier, list2.get(0));
    }

    private static final KSerializer<? extends Object> b(KClass<Object> kClass, List<? extends KSerializer<Object>> list) {
        Object[] array = list.toArray(new KSerializer[0]);
        t.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        KSerializer[] kSerializerArr = (KSerializer[]) array;
        return p1.d(kClass, (KSerializer[]) Arrays.copyOf(kSerializerArr, kSerializerArr.length));
    }

    private static final <T> KSerializer<T> c(KSerializer<T> kSerializer, boolean z6) {
        if (z6) {
            return m8.a.s(kSerializer);
        }
        t.h(kSerializer, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.SerializersKt__SerializersKt.nullable?>");
        return kSerializer;
    }

    @Nullable
    public static final KSerializer<? extends Object> d(@NotNull KClass<Object> kClass, @NotNull List<? extends KType> types, @NotNull List<? extends KSerializer<Object>> serializers) {
        t.j(kClass, "<this>");
        t.j(types, "types");
        t.j(serializers, "serializers");
        KSerializer<? extends Object> kSerializerA = a(kClass, types, serializers);
        return kSerializerA == null ? b(kClass, serializers) : kSerializerA;
    }

    @NotNull
    public static final KSerializer<Object> e(@NotNull kotlinx.serialization.modules.c cVar, @NotNull KType type) {
        t.j(cVar, "<this>");
        t.j(type, "type");
        KSerializer<Object> kSerializerF = f(cVar, type, true);
        if (kSerializerF != null) {
            return kSerializerF;
        }
        p1.m(q1.c(type));
        throw new w7.i();
    }

    @Nullable
    public static final <T> KSerializer<T> g(@NotNull KClass<T> kClass) {
        t.j(kClass, "<this>");
        KSerializer<T> kSerializerB = p1.b(kClass);
        return kSerializerB == null ? y1.b(kClass) : kSerializerB;
    }

    @Nullable
    public static final KSerializer<Object> h(@NotNull kotlinx.serialization.modules.c cVar, @NotNull KType type) {
        t.j(cVar, "<this>");
        t.j(type, "type");
        return f(cVar, type, false);
    }

    @Nullable
    public static final List<KSerializer<Object>> i(@NotNull kotlinx.serialization.modules.c cVar, @NotNull List<? extends KType> typeArguments, boolean z6) {
        ArrayList arrayList;
        t.j(cVar, "<this>");
        t.j(typeArguments, "typeArguments");
        if (z6) {
            List<? extends KType> list = typeArguments;
            arrayList = new ArrayList(w.x(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(m.b(cVar, (KType) it.next()));
            }
        } else {
            List<? extends KType> list2 = typeArguments;
            arrayList = new ArrayList(w.x(list2, 10));
            Iterator<T> it2 = list2.iterator();
            while (it2.hasNext()) {
                KSerializer<Object> kSerializerD = m.d(cVar, (KType) it2.next());
                if (kSerializerD == null) {
                    return null;
                }
                arrayList.add(kSerializerD);
            }
        }
        return arrayList;
    }

    private static final KSerializer<Object> f(kotlinx.serialization.modules.c cVar, KType kType, boolean z6) {
        KSerializer<Object> kSerializerA;
        KSerializer<? extends Object> kSerializerB;
        KClass<Object> kClassC = q1.c(kType);
        boolean zIsMarkedNullable = kType.isMarkedNullable();
        List<KTypeProjection> arguments = kType.getArguments();
        ArrayList arrayList = new ArrayList(w.x(arguments, 10));
        Iterator<T> it = arguments.iterator();
        while (it.hasNext()) {
            KType type = ((KTypeProjection) it.next()).getType();
            if (type != null) {
                arrayList.add(type);
            } else {
                throw new IllegalArgumentException(("Star projections in type arguments are not allowed, but had " + kType).toString());
            }
        }
        if (arrayList.isEmpty()) {
            kSerializerA = l.a(kClassC, zIsMarkedNullable);
        } else {
            Object objB = l.b(kClassC, arrayList, zIsMarkedNullable);
            if (z6) {
                if (v.g(objB)) {
                    objB = null;
                }
                kSerializerA = (KSerializer) objB;
            } else {
                if (v.e(objB) != null) {
                    return null;
                }
                kSerializerA = (KSerializer) objB;
            }
        }
        if (kSerializerA != null) {
            return kSerializerA;
        }
        if (arrayList.isEmpty()) {
            kSerializerB = kotlinx.serialization.modules.c.c(cVar, kClassC, null, 2, null);
        } else {
            List<KSerializer<Object>> listE = m.e(cVar, arrayList, z6);
            if (listE == null) {
                return null;
            }
            KSerializer<? extends Object> kSerializerA2 = m.a(kClassC, arrayList, listE);
            if (kSerializerA2 == null) {
                kSerializerB = cVar.b(kClassC, listE);
            } else {
                kSerializerB = kSerializerA2;
            }
        }
        if (kSerializerB == null) {
            return null;
        }
        return c(kSerializerB, zIsMarkedNullable);
    }
}
