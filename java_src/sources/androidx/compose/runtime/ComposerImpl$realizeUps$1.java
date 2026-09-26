package androidx.compose.runtime;

import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$realizeUps$1 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
    final /* synthetic */ int $count;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposerImpl$realizeUps$1(int i10) {
        super(3);
        this.$count = i10;
    }

    public final void a(@NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager) {
        t.j(applier, "applier");
        t.j(slotWriter, "<anonymous parameter 1>");
        t.j(rememberManager, "<anonymous parameter 2>");
        int i10 = this.$count;
        for (int i11 = 0; i11 < i10; i11++) {
            applier.i();
        }
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
        a(applier, slotWriter, rememberManager);
        return l0.INSTANCE;
    }
}
