package androidx.compose.material;

import androidx.compose.ui.text.TextLayoutResult;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class TextKt$Text$1 extends v implements l<TextLayoutResult, l0> {
    public static final TextKt$Text$1 INSTANCE = new TextKt$Text$1();

    TextKt$Text$1() {
        super(1);
    }

    public final void a(@NotNull TextLayoutResult it) {
        t.j(it, "it");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(TextLayoutResult textLayoutResult) {
        a(textLayoutResult);
        return l0.INSTANCE;
    }
}
