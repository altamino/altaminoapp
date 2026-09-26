package androidx.compose.material;

import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class TextFieldImplKt$CommonDecorationBox$3$decorationBoxModifier$1$1 extends v implements l<SemanticsPropertyReceiver, l0> {
    final /* synthetic */ String $defaultErrorMessage;
    final /* synthetic */ boolean $isError;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextFieldImplKt$CommonDecorationBox$3$decorationBoxModifier$1$1(boolean z6, String str) {
        super(1);
        this.$isError = z6;
        this.$defaultErrorMessage = str;
    }

    public final void a(@NotNull SemanticsPropertyReceiver semantics) {
        t.j(semantics, "$this$semantics");
        if (this.$isError) {
            SemanticsPropertiesKt.k(semantics, this.$defaultErrorMessage);
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        a(semanticsPropertyReceiver);
        return l0.INSTANCE;
    }
}
