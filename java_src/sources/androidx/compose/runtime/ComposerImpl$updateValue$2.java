package androidx.compose.runtime;

import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$updateValue$2 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
    final /* synthetic */ int $groupSlotIndex;
    final /* synthetic */ Object $value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposerImpl$updateValue$2(Object obj, int i10) {
        super(3);
        this.$value = obj;
        this.$groupSlotIndex = i10;
    }

    public final void a(@NotNull Applier<?> applier, @NotNull SlotWriter slots, @NotNull RememberManager rememberManager) {
        RecomposeScopeImpl recomposeScopeImpl;
        CompositionImpl compositionImplL;
        t.j(applier, "<anonymous parameter 0>");
        t.j(slots, "slots");
        t.j(rememberManager, "rememberManager");
        Object obj = this.$value;
        if (obj instanceof RememberObserver) {
            rememberManager.b((RememberObserver) obj);
        }
        Object objK0 = slots.K0(this.$groupSlotIndex, this.$value);
        if (objK0 instanceof RememberObserver) {
            rememberManager.a((RememberObserver) objK0);
        } else {
            if (!(objK0 instanceof RecomposeScopeImpl) || (compositionImplL = (recomposeScopeImpl = (RecomposeScopeImpl) objK0).l()) == null) {
                return;
            }
            recomposeScopeImpl.x();
            compositionImplL.H(true);
        }
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
        a(applier, slotWriter, rememberManager);
        return l0.INSTANCE;
    }
}
