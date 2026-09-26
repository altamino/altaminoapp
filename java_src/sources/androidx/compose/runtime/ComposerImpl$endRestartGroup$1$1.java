package androidx.compose.runtime;

import e8.l;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$endRestartGroup$1$1 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
    final /* synthetic */ l<Composition, l0> $it;
    final /* synthetic */ ComposerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ComposerImpl$endRestartGroup$1$1(l<? super Composition, l0> lVar, ComposerImpl composerImpl) {
        super(3);
        this.$it = lVar;
        this.this$0 = composerImpl;
    }

    public final void a(@NotNull Applier<?> applier, @NotNull SlotWriter slotWriter, @NotNull RememberManager rememberManager) {
        t.j(applier, "<anonymous parameter 0>");
        t.j(slotWriter, "<anonymous parameter 1>");
        t.j(rememberManager, "<anonymous parameter 2>");
        this.$it.invoke(this.this$0.C0());
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
        a(applier, slotWriter, rememberManager);
        return l0.INSTANCE;
    }
}
