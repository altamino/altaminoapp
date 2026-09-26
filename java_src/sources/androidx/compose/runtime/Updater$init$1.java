package androidx.compose.runtime;

import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes6.dex */
final class Updater$init$1<T> extends v implements p<T, l0, l0> {
    final /* synthetic */ l<T, l0> $block;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    Updater$init$1(l<? super T, l0> lVar) {
        super(2);
        this.$block = lVar;
    }

    public final void a(T t5, @NotNull l0 it) {
        t.j(it, "it");
        this.$block.invoke(t5);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Object obj, l0 l0Var) {
        a(obj, l0Var);
        return l0.INSTANCE;
    }
}
