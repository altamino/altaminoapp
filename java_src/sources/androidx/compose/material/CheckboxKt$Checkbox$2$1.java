package androidx.compose.material;

import e8.a;
import e8.l;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class CheckboxKt$Checkbox$2$1 extends v implements a<l0> {
    final /* synthetic */ boolean $checked;
    final /* synthetic */ l<Boolean, l0> $onCheckedChange;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    CheckboxKt$Checkbox$2$1(l<? super Boolean, l0> lVar, boolean z6) {
        super(0);
        this.$onCheckedChange = lVar;
        this.$checked = z6;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$onCheckedChange.invoke(Boolean.valueOf(!this.$checked));
    }
}
