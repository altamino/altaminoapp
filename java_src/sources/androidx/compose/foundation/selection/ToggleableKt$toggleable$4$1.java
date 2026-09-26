package androidx.compose.foundation.selection;

import e8.a;
import e8.l;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class ToggleableKt$toggleable$4$1 extends v implements a<l0> {
    final /* synthetic */ l<Boolean, l0> $onValueChange;
    final /* synthetic */ boolean $value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ToggleableKt$toggleable$4$1(l<? super Boolean, l0> lVar, boolean z6) {
        super(0);
        this.$onValueChange = lVar;
        this.$value = z6;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$onValueChange.invoke(Boolean.valueOf(!this.$value));
    }
}
