package androidx.compose.runtime;

import e8.q;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.i;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$insertMovableContentReferences$1$1$4 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
    final /* synthetic */ MovableContentStateReference $from;
    final /* synthetic */ MovableContentStateReference $to;
    final /* synthetic */ ComposerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposerImpl$insertMovableContentReferences$1$1$4(ComposerImpl composerImpl, MovableContentStateReference movableContentStateReference, MovableContentStateReference movableContentStateReference2) {
        super(3);
        this.this$0 = composerImpl;
        this.$from = movableContentStateReference;
        this.$to = movableContentStateReference2;
    }

    public final void a(@NotNull Applier<?> applier, @NotNull SlotWriter slots, @NotNull RememberManager rememberManager) {
        t.j(applier, "<anonymous parameter 0>");
        t.j(slots, "slots");
        t.j(rememberManager, "<anonymous parameter 2>");
        MovableContentState movableContentStateL = this.this$0.parentContext.l(this.$from);
        if (movableContentStateL == null) {
            ComposerKt.x("Could not resolve state for movable content");
            throw new i();
        }
        List<Anchor> listR0 = slots.r0(1, movableContentStateL.a(), 1);
        if (true ^ listR0.isEmpty()) {
            CompositionImpl compositionImpl = (CompositionImpl) this.$to.b();
            int size = listR0.size();
            for (int i10 = 0; i10 < size; i10++) {
                Object objQ0 = slots.Q0(listR0.get(i10), 0);
                RecomposeScopeImpl recomposeScopeImpl = objQ0 instanceof RecomposeScopeImpl ? (RecomposeScopeImpl) objQ0 : null;
                if (recomposeScopeImpl != null) {
                    recomposeScopeImpl.g(compositionImpl);
                }
            }
        }
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
        a(applier, slotWriter, rememberManager);
        return l0.INSTANCE;
    }
}
