package androidx.compose.material;

import e8.a;
import e8.l;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class ExposedDropdownMenuKt$ExposedDropdownMenuBox$2$1 extends v implements a<l0> {
    final /* synthetic */ boolean $expanded;
    final /* synthetic */ l<Boolean, l0> $onExpandedChange;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ExposedDropdownMenuKt$ExposedDropdownMenuBox$2$1(l<? super Boolean, l0> lVar, boolean z6) {
        super(0);
        this.$onExpandedChange = lVar;
        this.$expanded = z6;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$onExpandedChange.invoke(Boolean.valueOf(!this.$expanded));
    }
}
