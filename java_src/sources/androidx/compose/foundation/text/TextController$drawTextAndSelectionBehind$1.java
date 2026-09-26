package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.foundation.text.selection.SelectionRegistrar;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.a;
import androidx.compose.ui.text.TextLayoutResult;
import e8.l;
import java.util.Map;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class TextController$drawTextAndSelectionBehind$1 extends v implements l<DrawScope, l0> {
    final /* synthetic */ TextController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextController$drawTextAndSelectionBehind$1(TextController textController) {
        super(1);
        this.this$0 = textController;
    }

    public final void a(@NotNull DrawScope drawBehind) {
        Map<Long, Selection> mapF;
        t.j(drawBehind, "$this$drawBehind");
        TextLayoutResult textLayoutResultC = this.this$0.k().c();
        if (textLayoutResultC != null) {
            TextController textController = this.this$0;
            textController.k().a();
            SelectionRegistrar selectionRegistrar = textController.selectionRegistrar;
            Selection selection = (selectionRegistrar == null || (mapF = selectionRegistrar.f()) == null) ? null : mapF.get(Long.valueOf(textController.k().g()));
            if (selection != null) {
                int iB = !selection.d() ? selection.e().b() : selection.c().b();
                int iB2 = !selection.d() ? selection.c().b() : selection.e().b();
                if (iB != iB2) {
                    a.k(drawBehind, textLayoutResultC.v().w(iB, iB2), textController.k().h(), 0.0f, null, null, 0, 60, null);
                }
            }
            TextDelegate.Companion.a(drawBehind.T().a(), textLayoutResultC);
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(DrawScope drawScope) {
        a(drawScope);
        return l0.INSTANCE;
    }
}
