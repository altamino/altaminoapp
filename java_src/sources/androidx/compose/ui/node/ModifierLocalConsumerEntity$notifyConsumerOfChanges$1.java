package androidx.compose.ui.node;

import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class ModifierLocalConsumerEntity$notifyConsumerOfChanges$1 extends v implements e8.a<l0> {
    final /* synthetic */ ModifierLocalConsumerEntity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ModifierLocalConsumerEntity$notifyConsumerOfChanges$1(ModifierLocalConsumerEntity modifierLocalConsumerEntity) {
        super(0);
        this.this$0 = modifierLocalConsumerEntity;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.this$0.e().z0(this.this$0);
    }
}
