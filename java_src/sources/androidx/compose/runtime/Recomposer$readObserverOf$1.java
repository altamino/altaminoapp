package androidx.compose.runtime;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class Recomposer$readObserverOf$1 extends v implements l<Object, l0> {
    final /* synthetic */ ControlledComposition $composition;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Recomposer$readObserverOf$1(ControlledComposition controlledComposition) {
        super(1);
        this.$composition = controlledComposition;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Object obj) {
        invoke2(obj);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull Object value) {
        t.j(value, "value");
        this.$composition.j(value);
    }
}
