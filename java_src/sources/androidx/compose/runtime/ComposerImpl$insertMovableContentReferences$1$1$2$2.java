package androidx.compose.runtime;

import e8.q;
import java.util.List;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$insertMovableContentReferences$1$1$2$2 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
    final /* synthetic */ n0 $effectiveNodeIndex;
    final /* synthetic */ List<q<Applier<?>, SlotWriter, RememberManager, l0>> $offsetChanges;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposerImpl$insertMovableContentReferences$1$1$2$2(n0 n0Var, List<q<Applier<?>, SlotWriter, RememberManager, l0>> list) {
        super(3);
        this.$effectiveNodeIndex = n0Var;
        this.$offsetChanges = list;
    }

    public final void a(@NotNull Applier<?> applier, @NotNull SlotWriter slots, @NotNull RememberManager rememberManager) {
        t.j(applier, "applier");
        t.j(slots, "slots");
        t.j(rememberManager, "rememberManager");
        int i10 = this.$effectiveNodeIndex.element;
        if (i10 > 0) {
            applier = new OffsetApplier(applier, i10);
        }
        List<q<Applier<?>, SlotWriter, RememberManager, l0>> list = this.$offsetChanges;
        int size = list.size();
        for (int i11 = 0; i11 < size; i11++) {
            list.get(i11).invoke(applier, slots, rememberManager);
        }
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
        a(applier, slotWriter, rememberManager);
        return l0.INSTANCE;
    }
}
