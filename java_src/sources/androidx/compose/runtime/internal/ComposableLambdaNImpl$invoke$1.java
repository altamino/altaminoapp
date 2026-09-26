package androidx.compose.runtime.internal;

import androidx.compose.runtime.Composer;
import e8.p;
import j8.o;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.t0;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class ComposableLambdaNImpl$invoke$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ Object[] $args;
    final /* synthetic */ int $realParams;
    final /* synthetic */ ComposableLambdaNImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposableLambdaNImpl$invoke$1(Object[] objArr, int i10, ComposableLambdaNImpl composableLambdaNImpl) {
        super(2);
        this.$args = objArr;
        this.$realParams = i10;
        this.this$0 = composableLambdaNImpl;
    }

    public final void a(@NotNull Composer nc, int i10) {
        t.j(nc, "nc");
        Object[] array = kotlin.collections.p.n0(this.$args, o.v(0, this.$realParams)).toArray(new Object[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        Object obj = this.$args[this.$realParams + 1];
        if (obj == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Int");
        }
        int iIntValue = ((Integer) obj).intValue();
        Object[] objArr = this.$args;
        Object[] array2 = kotlin.collections.p.n0(objArr, o.v(this.$realParams + 2, objArr.length)).toArray(new Object[0]);
        if (array2 == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        ComposableLambdaNImpl composableLambdaNImpl = this.this$0;
        t0 t0Var = new t0(4);
        t0Var.b(array);
        t0Var.a(nc);
        t0Var.a(Integer.valueOf(iIntValue | 1));
        t0Var.b(array2);
        composableLambdaNImpl.y0(t0Var.d(new Object[t0Var.c()]));
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
