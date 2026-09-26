package androidx.compose.material;

import androidx.compose.ui.focus.FocusRequester;
import e8.a;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class ExposedDropdownMenuKt$ExposedDropdownMenuBox$4 extends v implements a<l0> {
    final /* synthetic */ boolean $expanded;
    final /* synthetic */ FocusRequester $focusRequester;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ExposedDropdownMenuKt$ExposedDropdownMenuBox$4(boolean z6, FocusRequester focusRequester) {
        super(0);
        this.$expanded = z6;
        this.$focusRequester = focusRequester;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        if (this.$expanded) {
            this.$focusRequester.c();
        }
    }
}
