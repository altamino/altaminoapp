package androidx.compose.material;

import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ListItemKt$ListItem$semanticsModifier$1 extends v implements l<SemanticsPropertyReceiver, l0> {
    public static final ListItemKt$ListItem$semanticsModifier$1 INSTANCE = new ListItemKt$ListItem$semanticsModifier$1();

    ListItemKt$ListItem$semanticsModifier$1() {
        super(1);
    }

    public final void a(@NotNull SemanticsPropertyReceiver semantics) {
        t.j(semantics, "$this$semantics");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        a(semanticsPropertyReceiver);
        return l0.INSTANCE;
    }
}
