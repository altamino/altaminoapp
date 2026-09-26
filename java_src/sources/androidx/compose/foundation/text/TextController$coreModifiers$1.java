package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.SelectionRegistrar;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class TextController$coreModifiers$1 extends v implements l<LayoutCoordinates, l0> {
    final /* synthetic */ TextController this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TextController$coreModifiers$1(TextController textController) {
        super(1);
        this.this$0 = textController;
    }

    public final void a(@NotNull LayoutCoordinates it) {
        SelectionRegistrar selectionRegistrar;
        t.j(it, "it");
        this.this$0.k().k(it);
        if (SelectionRegistrarKt.b(this.this$0.selectionRegistrar, this.this$0.k().g())) {
            long jF = LayoutCoordinatesKt.f(it);
            if (!Offset.j(jF, this.this$0.k().e()) && (selectionRegistrar = this.this$0.selectionRegistrar) != null) {
                selectionRegistrar.b(this.this$0.k().g());
            }
            this.this$0.k().n(jF);
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(LayoutCoordinates layoutCoordinates) {
        a(layoutCoordinates);
        return l0.INSTANCE;
    }
}
