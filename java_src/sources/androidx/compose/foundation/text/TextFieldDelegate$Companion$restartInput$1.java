package androidx.compose.foundation.text;

import androidx.compose.ui.text.input.EditCommand;
import androidx.compose.ui.text.input.EditProcessor;
import androidx.compose.ui.text.input.TextFieldValue;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class TextFieldDelegate$Companion$restartInput$1 extends v implements l<List<? extends EditCommand>, l0> {
    final /* synthetic */ EditProcessor $editProcessor;
    final /* synthetic */ l<TextFieldValue, l0> $onValueChange;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TextFieldDelegate$Companion$restartInput$1(EditProcessor editProcessor, l<? super TextFieldValue, l0> lVar) {
        super(1);
        this.$editProcessor = editProcessor;
        this.$onValueChange = lVar;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(List<? extends EditCommand> list) {
        invoke2(list);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull List<? extends EditCommand> it) {
        t.j(it, "it");
        TextFieldDelegate.Companion.f(it, this.$editProcessor, this.$onValueChange);
    }
}
