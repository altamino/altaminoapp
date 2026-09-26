package androidx.compose.ui.modifier;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.a;
import androidx.compose.ui.b;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.InspectorValueInfo;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
@Stable
final class ModifierLocalConsumerImpl extends InspectorValueInfo implements ModifierLocalConsumer {

    @NotNull
    private final l<ModifierLocalReadScope, l0> consumer;

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return a.a(this, modifier);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return b.a(this, lVar);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ModifierLocalConsumerImpl(@NotNull l<? super ModifierLocalReadScope, l0> consumer, @NotNull l<? super InspectorInfo, l0> debugInspectorInfo) {
        super(debugInspectorInfo);
        t.j(consumer, "consumer");
        t.j(debugInspectorInfo, "debugInspectorInfo");
        this.consumer = consumer;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof ModifierLocalConsumerImpl) && t.e(((ModifierLocalConsumerImpl) obj).consumer, this.consumer);
    }

    public int hashCode() {
        return this.consumer.hashCode();
    }

    @Override // androidx.compose.ui.modifier.ModifierLocalConsumer
    public void z0(@NotNull ModifierLocalReadScope scope) {
        t.j(scope, "scope");
        this.consumer.invoke(scope);
    }
}
