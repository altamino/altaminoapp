package androidx.compose.foundation.text;

import androidx.compose.ui.text.TextLayoutResult;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
final class BasicTextKt$BasicText$4 extends v implements l<TextLayoutResult, l0> {
    public static final BasicTextKt$BasicText$4 INSTANCE = new BasicTextKt$BasicText$4();

    BasicTextKt$BasicText$4() {
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
