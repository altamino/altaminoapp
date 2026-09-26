package androidx.compose.runtime;

import e8.q;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$recordInsert$2 extends v implements q<Applier<?>, SlotWriter, RememberManager, l0> {
    final /* synthetic */ Anchor $anchor;
    final /* synthetic */ List<q<Applier<?>, SlotWriter, RememberManager, l0>> $fixups;
    final /* synthetic */ SlotTable $insertTable;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposerImpl$recordInsert$2(SlotTable slotTable, Anchor anchor, List<q<Applier<?>, SlotWriter, RememberManager, l0>> list) {
        super(3);
        this.$insertTable = slotTable;
        this.$anchor = anchor;
        this.$fixups = list;
    }

    public final void a(@NotNull Applier<?> applier, @NotNull SlotWriter slots, @NotNull RememberManager rememberManager) {
        t.j(applier, "applier");
        t.j(slots, "slots");
        t.j(rememberManager, "rememberManager");
        SlotTable slotTable = this.$insertTable;
        List<q<Applier<?>, SlotWriter, RememberManager, l0>> list = this.$fixups;
        SlotWriter slotWriterT = slotTable.t();
        try {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                list.get(i10).invoke(applier, slotWriterT, rememberManager);
            }
            l0 l0Var = l0.INSTANCE;
            slotWriterT.F();
            slots.D();
            SlotTable slotTable2 = this.$insertTable;
            slots.o0(slotTable2, this.$anchor.d(slotTable2));
            slots.O();
        } catch (Throwable th) {
            slotWriterT.F();
            throw th;
        }
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(Applier<?> applier, SlotWriter slotWriter, RememberManager rememberManager) {
        a(applier, slotWriter, rememberManager);
        return l0.INSTANCE;
    }
}
