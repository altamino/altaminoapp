package androidx.compose.material.internal;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.window.PopupPositionProvider;
import e8.a;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$7 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ a<l0> $onDismissRequest;
    final /* synthetic */ PopupPositionProvider $popupPositionProvider;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$7(a<l0> aVar, PopupPositionProvider popupPositionProvider, p<? super Composer, ? super Integer, l0> pVar, int i10, int i11) {
        super(2);
        this.$onDismissRequest = aVar;
        this.$popupPositionProvider = popupPositionProvider;
        this.$content = pVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        ExposedDropdownMenuPopupKt.a(this.$onDismissRequest, this.$popupPositionProvider, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
