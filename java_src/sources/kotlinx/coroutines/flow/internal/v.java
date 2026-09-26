package kotlinx.coroutines.flow.internal;

import kotlinx.coroutines.b2;
import kotlinx.coroutines.internal.e0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class v {

    static final class a extends kotlin.jvm.internal.v implements e8.p<Integer, kotlin.coroutines.g.b, Integer> {
        final /* synthetic */ t<?> $this_checkContext;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(t<?> tVar) {
            super(2);
            this.$this_checkContext = tVar;
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ Integer invoke(Integer num, kotlin.coroutines.g.b bVar) {
            return a(num.intValue(), bVar);
        }

        @NotNull
        public final Integer a(int i10, @NotNull kotlin.coroutines.g.b bVar) {
            int i11;
            kotlin.coroutines.g.c<?> key = bVar.getKey();
            kotlin.coroutines.g.b bVar2 = this.$this_checkContext.collectContext.get(key);
            if (key != b2.Key) {
                if (bVar != bVar2) {
                    i11 = Integer.MIN_VALUE;
                } else {
                    i11 = i10 + 1;
                }
                return Integer.valueOf(i11);
            }
            b2 b2Var = (b2) bVar2;
            kotlin.jvm.internal.t.h(bVar, "null cannot be cast to non-null type kotlinx.coroutines.Job");
            b2 b2VarB = v.b((b2) bVar, b2Var);
            if (b2VarB == b2Var) {
                if (b2Var != null) {
                    i10++;
                }
                return Integer.valueOf(i10);
            }
            throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + b2VarB + ", expected child of " + b2Var + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
        }
    }

    public static final void a(@NotNull t<?> tVar, @NotNull kotlin.coroutines.g gVar) {
        if (((Number) gVar.fold(0, new a(tVar))).intValue() == tVar.collectContextSize) {
            return;
        }
        throw new IllegalStateException(("Flow invariant is violated:\n\t\tFlow was collected in " + tVar.collectContext + ",\n\t\tbut emission happened in " + gVar + ".\n\t\tPlease refer to 'flow' documentation or use 'flowOn' instead").toString());
    }

    @Nullable
    public static final b2 b(@Nullable b2 b2Var, @Nullable b2 b2Var2) {
        while (b2Var != null) {
            if (b2Var == b2Var2) {
                return b2Var;
            }
            if (!(b2Var instanceof e0)) {
                return b2Var;
            }
            b2Var = b2Var.getParent();
        }
        return null;
    }
}
