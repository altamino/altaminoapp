package androidx.compose.runtime;

import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class Updater$reconcile$1 extends v implements p<Object, l0, l0> {
    final /* synthetic */ l<Object, l0> $block;

    public final void a(Object obj, @NotNull l0 it) {
        t.j(it, "it");
        this.$block.invoke(obj);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Object obj, l0 l0Var) {
        a(obj, l0Var);
        return l0.INSTANCE;
    }
}
