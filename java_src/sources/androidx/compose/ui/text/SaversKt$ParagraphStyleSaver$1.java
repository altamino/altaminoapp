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
final class SaversKt$ParagraphStyleSaver$1 extends v implements p<SaverScope, ParagraphStyle, Object> {
    public static final SaversKt$ParagraphStyleSaver$1 INSTANCE = new SaversKt$ParagraphStyleSaver$1();

    SaversKt$ParagraphStyleSaver$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SaverScope Saver, @NotNull ParagraphStyle it) {
        t.j(Saver, "$this$Saver");
        t.j(it, "it");
        return kotlin.collections.v.g(SaversKt.s(it.f()), SaversKt.s(it.g()), SaversKt.t(TextUnit.b(it.c()), SaversKt.q(TextUnit.Companion), Saver), SaversKt.t(it.h(), SaversKt.p(TextIndent.Companion), Saver));
    }
}
