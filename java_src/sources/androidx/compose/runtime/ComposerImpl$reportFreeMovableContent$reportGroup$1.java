package androidx.compose.runtime;

import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$reportFreeMovableContent$reportGroup$1 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
    final /* synthetic */ Anchor $anchor;
    final /* synthetic */ MovableContentStateReference $reference;
    final /* synthetic */ ComposerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposerImpl$reportFreeMovableContent$reportGroup$1(ComposerImpl composerImpl, MovableContentStateReference movableContentStateReference, Anchor anchor) {
        super(3);
        this.this$0 = composerImpl;
        this.$reference = movableContentStateReference;
        this.$anchor = anchor;
    }

    public final void a(@NotNull Applier<?> applier, @NotNull SlotWriter slots, @NotNull RememberManager rememberManager) {
        t.j(applier, "<anonymous parameter 0>");
        t.j(slots, "slots");
        t.j(rememberManager, "<anonymous parameter 2>");
        SlotTable slotTable = new SlotTable();
        Anchor anchor = this.$anchor;
        SlotWriter slotWriterT = slotTable.t();
        try {
            slotWriterT.D();
            slots.t0(anchor, 1, slotWriterT);
            slotWriterT.O();
            l0 l0Var = l0.INSTANCE;
            slotWriterT.F();
            this.this$0.parentContext.k(this.$reference, new MovableContentState(slotTable));
        } catch (Throwable th) {
            slotWriterT.F();
            throw th;
        }
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
        a(applier, slotWriter, rememberManager);
        return l0.INSTANCE;
    }
}
