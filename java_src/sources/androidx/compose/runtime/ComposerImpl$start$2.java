package androidx.compose.runtime;

import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$start$2 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
    final /* synthetic */ int $currentRelativePosition;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposerImpl$start$2(int i10) {
        super(3);
        this.$currentRelativePosition = i10;
    }

    public final void a(@NotNull Applier<?> applier, @NotNull SlotWriter slots, @NotNull RememberManager rememberManager) {
        t.j(applier, "<anonymous parameter 0>");
        t.j(slots, "slots");
        t.j(rememberManager, "<anonymous parameter 2>");
        slots.p0(this.$currentRelativePosition);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
        a(applier, slotWriter, rememberManager);
        return l0.INSTANCE;
    }
}
