package kotlinx.serialization;

import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.reflect.KClass;
import kotlin.reflect.KType;
import kotlinx.serialization.internal.c2;
import kotlinx.serialization.internal.o1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class l {

    @NotNull
    private static final c2<? extends Object> SERIALIZERS_CACHE = kotlinx.serialization.internal.o.a(c.INSTANCE);

    @NotNull
    private static final c2<Object> SERIALIZERS_CACHE_NULLABLE = kotlinx.serialization.internal.o.a(d.INSTANCE);

    @NotNull
    private static final o1<? extends Object> PARAMETRIZED_SERIALIZERS_CACHE = kotlinx.serialization.internal.o.b(a.INSTANCE);

    @NotNull
    private static final o1<Object> PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE = kotlinx.serialization.internal.o.b(b.INSTANCE);

    static final class a extends v implements e8.p<KClass<Object>, List<? extends KType>, KSerializer<? extends Object>> {
        public static final a INSTANCE = new a();

        a() {
            super(2);
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final KSerializer<? extends Object> invoke(@NotNull KClass<Object> clazz, @NotNull List<? extends KType> types) {
            t.j(clazz, "clazz");
            t.j(types, "types");
            List<KSerializer<Object>> listE = m.e(kotlinx.serialization.modules.d.a(), types, true);
            t.g(listE);
            return m.a(clazz, types, listE);
        }
    }

    static final class b extends v implements e8.p<KClass<Object>, List<? extends KType>, KSerializer<Object>> {
        public static final b INSTANCE = new b();

        b() {
            super(2);
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final KSerializer<Object> invoke(@NotNull KClass<Object> clazz, @NotNull List<? extends KType> types) {
            KSerializer<Object> kSerializerS;
            t.j(clazz, "clazz");
            t.j(types, "types");
            List<KSerializer<Object>> listE = m.e(kotlinx.serialization.modules.d.a(), types, true);
            t.g(listE);
            KSerializer<? extends Object> kSerializerA = m.a(clazz, types, listE);
            if (kSerializerA == null || (kSerializerS = m8.a.s(kSerializerA)) == null) {
                return null;
            }
            return kSerializerS;
        }
    }

    static final class c extends v implements e8.l<KClass<?>, KSerializer<? extends Object>> {
        public static final c INSTANCE = new c();

        c() {
            super(1);
        }

        @Override // e8.l
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final KSerializer<? extends Object> invoke(@NotNull KClass<?> it) {
            t.j(it, "it");
            return m.c(it);
        }
    }

    static final class d extends v implements e8.l<KClass<?>, KSerializer<Object>> {
        public static final d INSTANCE = new d();

        d() {
            super(1);
        }

        @Override // e8.l
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final KSerializer<Object> invoke(@NotNull KClass<?> it) {
            KSerializer<Object> kSerializerS;
            t.j(it, "it");
            KSerializer kSerializerC = m.c(it);
            if (kSerializerC == null || (kSerializerS = m8.a.s(kSerializerC)) == null) {
                return null;
            }
            return kSerializerS;
        }
    }

    @Nullable
    public static final KSerializer<Object> a(@NotNull KClass<Object> clazz, boolean z6) {
        t.j(clazz, "clazz");
        if (z6) {
            return SERIALIZERS_CACHE_NULLABLE.a(clazz);
        }
        KSerializer<? extends Object> kSerializerA = SERIALIZERS_CACHE.a(clazz);
        if (kSerializerA != null) {
            return kSerializerA;
        }
        return null;
    }

    @NotNull
    public static final Object b(@NotNull KClass<Object> clazz, @NotNull List<? extends KType> types, boolean z6) {
        t.j(clazz, "clazz");
        t.j(types, "types");
        return !z6 ? PARAMETRIZED_SERIALIZERS_CACHE.a(clazz, types) : PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE.a(clazz, types);
    }
}
