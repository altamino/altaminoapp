package androidx.compose.runtime;

import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$realizeMovement$1 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
    final /* synthetic */ int $count;
    final /* synthetic */ int $removeIndex;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposerImpl$realizeMovement$1(int i10, int i11) {
        super(3);
        this.$removeIndex = i10;
        this.$count = i11;
    }

    public final void a(@NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager) {
        t.j(applier, "applier");
        t.j(slotWriter, "<anonymous parameter 1>");
        t.j(rememberManager, "<anonymous parameter 2>");
        applier.b(this.$removeIndex, this.$count);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
        a(applier, slotWriter, rememberManager);
        return l0.INSTANCE;
    }
}
