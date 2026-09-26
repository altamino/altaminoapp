package androidx.compose.ui.text.input;

import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.TextRange;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class TextFieldValue$Companion$Saver$1 extends v implements p<SaverScope, TextFieldValue, Object> {
    public static final TextFieldValue$Companion$Saver$1 INSTANCE = new TextFieldValue$Companion$Saver$1();

    TextFieldValue$Companion$Saver$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SaverScope Saver, @NotNull TextFieldValue it) {
        t.j(Saver, "$this$Saver");
        t.j(it, "it");
        return kotlin.collections.v.g(SaversKt.t(it.e(), SaversKt.d(), Saver), SaversKt.t(TextRange.b(it.g()), SaversKt.i(TextRange.Companion), Saver));
    }
}
