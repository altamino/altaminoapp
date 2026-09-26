package androidx.compose.runtime;

import e8.q;
import java.util.List;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ComposerImpl$insertMovableContentReferences$1$1$2$1 extends v implements e8.a<l0> {
    final /* synthetic */ List<q<Applier<?>, SlotWriter, RememberManager, l0>> $offsetChanges;
    final /* synthetic */ SlotReader $reader;
    final /* synthetic */ MovableContentStateReference $to;
    final /* synthetic */ ComposerImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ComposerImpl$insertMovableContentReferences$1$1$2$1(ComposerImpl composerImpl, List<q<Applier<?>, SlotWriter, RememberManager, l0>> list, SlotReader slotReader, MovableContentStateReference movableContentStateReference) {
        super(0);
        this.this$0 = composerImpl;
        this.$offsetChanges = list;
        this.$reader = slotReader;
        this.$to = movableContentStateReference;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ComposerImpl composerImpl = this.this$0;
        List<q<Applier<?>, SlotWriter, RememberManager, l0>> list = this.$offsetChanges;
        SlotReader slotReader = this.$reader;
        MovableContentStateReference movableContentStateReference = this.$to;
        List list2 = composerImpl.changes;
        try {
            composerImpl.changes = list;
            SlotReader slotReader2 = composerImpl.reader;
            int[] iArr = composerImpl.nodeCountOverrides;
            composerImpl.nodeCountOverrides = null;
            try {
                composerImpl.reader = slotReader;
                composerImpl.L0(movableContentStateReference.c(), movableContentStateReference.e(), movableContentStateReference.f(), true);
                l0 l0Var = l0.INSTANCE;
                composerImpl.reader = slotReader2;
                composerImpl.nodeCountOverrides = iArr;
                composerImpl.changes = list2;
            } catch (Throwable th) {
                composerImpl.reader = slotReader2;
                composerImpl.nodeCountOverrides = iArr;
                throw th;
            }
        } catch (Throwable th2) {
            composerImpl.changes = list2;
            throw th2;
        }
    }
}
