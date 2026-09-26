package androidx.compose.runtime;

import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$insertMovableContentReferences$1$2 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
    public static final ComposerImpl$insertMovableContentReferences$1$2 INSTANCE = new ComposerImpl$insertMovableContentReferences$1$2();

    ComposerImpl$insertMovableContentReferences$1$2() {
        super(3);
    }

    public final void a(@NotNull Applier<?> applier, @NotNull SlotWriter slots, @NotNull RememberManager rememberManager) {
        t.j(applier, "applier");
        t.j(slots, "slots");
        t.j(rememberManager, "<anonymous parameter 2>");
        ComposerImpl.J0(slots, applier, 0);
        slots.N();
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
        a(applier, slotWriter, rememberManager);
        return l0.INSTANCE;
    }
}
