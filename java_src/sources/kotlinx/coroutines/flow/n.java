package kotlinx.coroutines.flow;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final /* synthetic */ class n {

    @NotNull
    private static final e8.l<Object, Object> defaultKeySelector = b.INSTANCE;

    @NotNull
    private static final e8.p<Object, Object, Boolean> defaultAreEquivalent = a.INSTANCE;

    static final class b extends kotlin.jvm.internal.v implements e8.l<Object, Object> {
        public static final b INSTANCE = new b();

        b() {
            super(1);
        }

        @Override // e8.l
        @Nullable
        public final Object invoke(@Nullable Object obj) {
            return obj;
        }
    }

    static final class a extends kotlin.jvm.internal.v implements e8.p<Object, Object, Boolean> {
        public static final a INSTANCE = new a();

        a() {
            super(2);
        }

        @Override // e8.p
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean invoke(@Nullable Object obj, @Nullable Object obj2) {
            return Boolean.valueOf(kotlin.jvm.internal.t.e(obj, obj2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> g<T> a(@NotNull g<? extends T> gVar) {
        return gVar instanceof l0 ? gVar : b(gVar, defaultKeySelector, defaultAreEquivalent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final <T> g<T> b(g<? extends T> gVar, e8.l<? super T, ? extends Object> lVar, e8.p<Object, Object, Boolean> pVar) {
        if (gVar instanceof f) {
            f fVar = (f) gVar;
            if (fVar.keySelector == lVar && fVar.areEquivalent == pVar) {
                return gVar;
            }
        }
        return new f(gVar, lVar, pVar);
    }
}
