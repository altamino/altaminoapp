package androidx.compose.runtime;

import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$realizeMovement$2 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
    final /* synthetic */ int $count;
    final /* synthetic */ int $from;
    final /* synthetic */ int $to;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposerImpl$realizeMovement$2(int i10, int i11, int i12) {
        super(3);
        this.$from = i10;
        this.$to = i11;
        this.$count = i12;
    }

    public final void a(@NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager) {
        t.j(applier, "applier");
        t.j(slotWriter, "<anonymous parameter 1>");
        t.j(rememberManager, "<anonymous parameter 2>");
        applier.e(this.$from, this.$to, this.$count);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
        a(applier, slotWriter, rememberManager);
        return l0.INSTANCE;
    }
}
