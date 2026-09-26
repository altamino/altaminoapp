package androidx.compose.runtime;

import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$createNode$2 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
    final /* synthetic */ e8.a<T> $factory;
    final /* synthetic */ Anchor $groupAnchor;
    final /* synthetic */ int $insertIndex;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ComposerImpl$createNode$2(e8.a<? extends T> aVar, Anchor anchor, int i10) {
        super(3);
        this.$factory = aVar;
        this.$groupAnchor = anchor;
        this.$insertIndex = i10;
    }

    public final void a(@NotNull Applier<?> applier, @NotNull SlotWriter slots, @NotNull RememberManager rememberManager) {
        t.j(applier, "applier");
        t.j(slots, "slots");
        t.j(rememberManager, "<anonymous parameter 2>");
        Object objInvoke = this.$factory.invoke();
        slots.d1(this.$groupAnchor, objInvoke);
        applier.f(this.$insertIndex, objInvoke);
        applier.h(objInvoke);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
        a(applier, slotWriter, rememberManager);
        return l0.INSTANCE;
    }
}
