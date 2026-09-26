package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class j0 {

    @NotNull
    private static final String DEBUG_THREAD_NAME_SEPARATOR = " @";

    static final class a extends kotlin.jvm.internal.v implements e8.p<kotlin.coroutines.g, kotlin.coroutines.g.b, kotlin.coroutines.g> {
        public static final a INSTANCE = new a();

        a() {
            super(2);
        }

        @Override // e8.p
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final kotlin.coroutines.g invoke(@NotNull kotlin.coroutines.g gVar, @NotNull kotlin.coroutines.g.b bVar) {
            return bVar instanceof h0 ? gVar.plus(((h0) bVar).l()) : gVar.plus(bVar);
        }
    }

    static final class b extends kotlin.jvm.internal.v implements e8.p<kotlin.coroutines.g, kotlin.coroutines.g.b, kotlin.coroutines.g> {
        final /* synthetic */ boolean $isNewCoroutine;
        final /* synthetic */ kotlin.jvm.internal.p0<kotlin.coroutines.g> $leftoverContext;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(kotlin.jvm.internal.p0<kotlin.coroutines.g> p0Var, boolean z6) {
            super(2);
            this.$leftoverContext = p0Var;
            this.$isNewCoroutine = z6;
        }

        /* JADX WARN: Type inference failed for: r2v2, types: [T, kotlin.coroutines.g] */
        @Override // e8.p
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final kotlin.coroutines.g invoke(@NotNull kotlin.coroutines.g gVar, @NotNull kotlin.coroutines.g.b bVar) {
            if (!(bVar instanceof h0)) {
                return gVar.plus(bVar);
            }
            kotlin.coroutines.g.b bVar2 = this.$leftoverContext.element.get(bVar.getKey());
            if (bVar2 != null) {
                kotlin.jvm.internal.p0<kotlin.coroutines.g> p0Var = this.$leftoverContext;
                p0Var.element = p0Var.element.minusKey(bVar.getKey());
                return gVar.plus(((h0) bVar).g(bVar2));
            }
            h0 h0VarL = (h0) bVar;
            if (this.$isNewCoroutine) {
                h0VarL = h0VarL.l();
            }
            return gVar.plus(h0VarL);
        }
    }

    static final class c extends kotlin.jvm.internal.v implements e8.p<Boolean, kotlin.coroutines.g.b, Boolean> {
        public static final c INSTANCE = new c();

        c() {
            super(2);
        }

        @NotNull
        public final Boolean a(boolean z6, @NotNull kotlin.coroutines.g.b bVar) {
            return Boolean.valueOf(z6 || (bVar instanceof h0));
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool, kotlin.coroutines.g.b bVar) {
            return a(bool.booleanValue(), bVar);
        }
    }

    @Nullable
    public static final String b(@NotNull kotlin.coroutines.g gVar) {
        return null;
    }

    private static final boolean c(kotlin.coroutines.g gVar) {
        return ((Boolean) gVar.fold(Boolean.FALSE, c.INSTANCE)).booleanValue();
    }

    @Nullable
    public static final h3<?> f(@NotNull kotlin.coroutines.jvm.internal.e eVar) {
        while (!(eVar instanceof a1) && (eVar = eVar.getCallerFrame()) != null) {
            if (eVar instanceof h3) {
                return (h3) eVar;
            }
        }
        return null;
    }

    @Nullable
    public static final h3<?> g(@NotNull kotlin.coroutines.d<?> dVar, @NotNull kotlin.coroutines.g gVar, @Nullable Object obj) {
        if (!(dVar instanceof kotlin.coroutines.jvm.internal.e) || gVar.get(i3.INSTANCE) == null) {
            return null;
        }
        h3<?> h3VarF = f((kotlin.coroutines.jvm.internal.e) dVar);
        if (h3VarF != null) {
            h3VarF.b1(gVar, obj);
        }
        return h3VarF;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.Object] */
    private static final kotlin.coroutines.g a(kotlin.coroutines.g gVar, kotlin.coroutines.g gVar2, boolean z6) {
        boolean zC = c(gVar);
        boolean zC2 = c(gVar2);
        if (!zC && !zC2) {
            return gVar.plus(gVar2);
        }
        kotlin.jvm.internal.p0 p0Var = new kotlin.jvm.internal.p0();
        p0Var.element = gVar2;
        kotlin.coroutines.h hVar = kotlin.coroutines.h.INSTANCE;
        kotlin.coroutines.g gVar3 = (kotlin.coroutines.g) gVar.fold(hVar, new b(p0Var, z6));
        if (zC2) {
            p0Var.element = ((kotlin.coroutines.g) p0Var.element).fold(hVar, a.INSTANCE);
        }
        return gVar3.plus((kotlin.coroutines.g) p0Var.element);
    }

    @NotNull
    public static final kotlin.coroutines.g d(@NotNull kotlin.coroutines.g gVar, @NotNull kotlin.coroutines.g gVar2) {
        if (!c(gVar2)) {
            return gVar.plus(gVar2);
        }
        return a(gVar, gVar2, false);
    }

    @NotNull
    public static final kotlin.coroutines.g e(@NotNull o0 o0Var, @NotNull kotlin.coroutines.g gVar) {
        kotlin.coroutines.g gVarA = a(o0Var.getCoroutineContext(), gVar, true);
        if (gVarA != e1.a() && gVarA.get(kotlin.coroutines.e.Key) == null) {
            return gVarA.plus(e1.a());
        }
        return gVarA;
    }
}
