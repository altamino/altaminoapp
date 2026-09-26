package androidx.compose.ui.node;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class ModifierLocalConsumerEntity$Companion$onReadValuesChanged$1 extends v implements l<ModifierLocalConsumerEntity, l0> {
    public static final ModifierLocalConsumerEntity$Companion$onReadValuesChanged$1 INSTANCE = new ModifierLocalConsumerEntity$Companion$onReadValuesChanged$1();

    ModifierLocalConsumerEntity$Companion$onReadValuesChanged$1() {
        super(1);
    }

    public final void a(@NotNull ModifierLocalConsumerEntity node) {
        t.j(node, "node");
        node.i();
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(ModifierLocalConsumerEntity modifierLocalConsumerEntity) {
        a(modifierLocalConsumerEntity);
        return l0.INSTANCE;
    }
}
