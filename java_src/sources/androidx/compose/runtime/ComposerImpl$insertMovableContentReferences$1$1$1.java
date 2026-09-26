package androidx.compose.runtime;

import e8.q;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$insertMovableContentReferences$1$1$1 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
    final /* synthetic */ Anchor $anchor;
    final /* synthetic */ n0 $effectiveNodeIndex;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposerImpl$insertMovableContentReferences$1$1$1(n0 n0Var, Anchor anchor) {
        super(3);
        this.$effectiveNodeIndex = n0Var;
        this.$anchor = anchor;
    }

    public final void a(@NotNull Applier<?> applier, @NotNull SlotWriter slots, @NotNull RememberManager rememberManager) {
        t.j(applier, "applier");
        t.j(slots, "slots");
        t.j(rememberManager, "<anonymous parameter 2>");
        this.$effectiveNodeIndex.element = ComposerImpl.I0(slots, this.$anchor, applier);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
        a(applier, slotWriter, rememberManager);
        return l0.INSTANCE;
    }
}
