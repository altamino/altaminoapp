package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$TextIndentSaver$1 extends v implements p<SaverScope, TextIndent, Object> {
    public static final SaversKt$TextIndentSaver$1 INSTANCE = new SaversKt$TextIndentSaver$1();

    SaversKt$TextIndentSaver$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SaverScope Saver, @NotNull TextIndent it) {
        t.j(Saver, "$this$Saver");
        t.j(it, "it");
        TextUnit textUnitB = TextUnit.b(it.b());
        TextUnit.Companion companion = TextUnit.Companion;
        return kotlin.collections.v.g(SaversKt.t(textUnitB, SaversKt.q(companion), Saver), SaversKt.t(TextUnit.b(it.c()), SaversKt.q(companion), Saver));
    }
}
