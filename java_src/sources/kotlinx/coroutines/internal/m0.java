package kotlinx.coroutines.internal;

import kotlinx.coroutines.z2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class m0 {

    @NotNull
    public static final i0 NO_THREAD_ELEMENTS = new i0("NO_THREAD_ELEMENTS");

    @NotNull
    private static final e8.p<Object, kotlin.coroutines.g.b, Object> countAll = a.INSTANCE;

    @NotNull
    private static final e8.p<z2<?>, kotlin.coroutines.g.b, z2<?>> findOne = b.INSTANCE;

    @NotNull
    private static final e8.p<s0, kotlin.coroutines.g.b, s0> updateState = c.INSTANCE;

    static final class a extends kotlin.jvm.internal.v implements e8.p<Object, kotlin.coroutines.g.b, Object> {
        public static final a INSTANCE = new a();

        a() {
            super(2);
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@Nullable Object obj, @NotNull kotlin.coroutines.g.b bVar) {
            if (!(bVar instanceof z2)) {
                return obj;
            }
            Integer num = obj instanceof Integer ? (Integer) obj : null;
            int iIntValue = num != null ? num.intValue() : 1;
            return iIntValue == 0 ? bVar : Integer.valueOf(iIntValue + 1);
        }
    }

    static final class b extends kotlin.jvm.internal.v implements e8.p<z2<?>, kotlin.coroutines.g.b, z2<?>> {
        public static final b INSTANCE = new b();

        b() {
            super(2);
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final z2<?> invoke(@Nullable z2<?> z2Var, @NotNull kotlin.coroutines.g.b bVar) {
            if (z2Var != null) {
                return z2Var;
            }
            if (bVar instanceof z2) {
                return (z2) bVar;
            }
            return null;
        }
    }

    static final class c extends kotlin.jvm.internal.v implements e8.p<s0, kotlin.coroutines.g.b, s0> {
        public static final c INSTANCE = new c();

        c() {
            super(2);
        }

        @Override // e8.p
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final s0 invoke(@NotNull s0 s0Var, @NotNull kotlin.coroutines.g.b bVar) {
            if (bVar instanceof z2) {
                z2<?> z2Var = (z2) bVar;
                s0Var.a(z2Var, z2Var.E0(s0Var.context));
            }
            return s0Var;
        }
    }

    @NotNull
    public static final Object b(@NotNull kotlin.coroutines.g gVar) {
        Object objFold = gVar.fold(0, countAll);
        kotlin.jvm.internal.t.g(objFold);
        return objFold;
    }

    public static final void a(@NotNull kotlin.coroutines.g gVar, @Nullable Object obj) {
        if (obj == NO_THREAD_ELEMENTS) {
            return;
        }
        if (obj instanceof s0) {
            ((s0) obj).b(gVar);
            return;
        }
        Object objFold = gVar.fold(null, findOne);
        kotlin.jvm.internal.t.h(objFold, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        ((z2) objFold).n(gVar, obj);
    }

    @Nullable
    public static final Object c(@NotNull kotlin.coroutines.g gVar, @Nullable Object obj) {
        if (obj == null) {
            obj = b(gVar);
        }
        if (obj == 0) {
            return NO_THREAD_ELEMENTS;
        }
        if (obj instanceof Integer) {
            return gVar.fold(new s0(gVar, ((Number) obj).intValue()), updateState);
        }
        kotlin.jvm.internal.t.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        return ((z2) obj).E0(gVar);
    }
}
