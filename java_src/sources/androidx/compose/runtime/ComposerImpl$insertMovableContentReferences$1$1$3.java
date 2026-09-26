package androidx.compose.runtime;

import e8.q;
import java.util.List;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$insertMovableContentReferences$1$1$3 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
    final /* synthetic */ n0 $effectiveNodeIndex;
    final /* synthetic */ List<Object> $nodesToInsert;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposerImpl$insertMovableContentReferences$1$1$3(n0 n0Var, List<? extends Object> list) {
        super(3);
        this.$effectiveNodeIndex = n0Var;
        this.$nodesToInsert = list;
    }

    public final void a(@NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager) {
        t.j(applier, "applier");
        t.j(slotWriter, "<anonymous parameter 1>");
        t.j(rememberManager, "<anonymous parameter 2>");
        int i10 = this.$effectiveNodeIndex.element;
        List<Object> list = this.$nodesToInsert;
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            Object obj = list.get(i11);
            int i12 = i10 + i11;
            applier.g(i12, obj);
            applier.f(i12, obj);
        }
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
        a(applier, slotWriter, rememberManager);
        return l0.INSTANCE;
    }
}
