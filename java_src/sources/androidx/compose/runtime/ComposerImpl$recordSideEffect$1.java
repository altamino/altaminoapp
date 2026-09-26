package androidx.compose.runtime;

import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$recordSideEffect$1 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
    final /* synthetic */ e8.a<l0> $effect;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposerImpl$recordSideEffect$1(e8.a<l0> aVar) {
        super(3);
        this.$effect = aVar;
    }

    public final void a(@NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager) {
        t.j(applier, "<anonymous parameter 0>");
        t.j(slotWriter, "<anonymous parameter 1>");
        t.j(rememberManager, "rememberManager");
        rememberManager.c(this.$effect);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
        a(applier, slotWriter, rememberManager);
        return l0.INSTANCE;
    }
}
