package androidx.compose.runtime;

import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$startReaderGroup$1 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
    final /* synthetic */ Object $data;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposerImpl$startReaderGroup$1(Object obj) {
        super(3);
        this.$data = obj;
    }

    public final void a(@NotNull Applier<?> applier, @NotNull SlotWriter slots, @NotNull RememberManager rememberManager) {
        t.j(applier, "<anonymous parameter 0>");
        t.j(slots, "slots");
        t.j(rememberManager, "<anonymous parameter 2>");
        slots.Z0(this.$data);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
        a(applier, slotWriter, rememberManager);
        return l0.INSTANCE;
    }
}
