package androidx.compose.runtime;

import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class ComposerKt$resetSlotsInstance$1 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
    public static final ComposerKt$resetSlotsInstance$1 INSTANCE = new ComposerKt$resetSlotsInstance$1();

    ComposerKt$resetSlotsInstance$1() {
        super(3);
    }

    public final void a(@NotNull Applier<?> applier, @NotNull SlotWriter slots, @NotNull RememberManager rememberManager) {
        t.j(applier, "<anonymous parameter 0>");
        t.j(slots, "slots");
        t.j(rememberManager, "<anonymous parameter 2>");
        slots.H0();
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
        a(applier, slotWriter, rememberManager);
        return l0.INSTANCE;
    }
}
