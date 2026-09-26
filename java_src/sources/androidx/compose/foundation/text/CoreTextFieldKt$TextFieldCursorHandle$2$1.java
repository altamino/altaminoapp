package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.SelectionHandleInfo;
import androidx.compose.foundation.text.selection.SelectionHandlesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class CoreTextFieldKt$TextFieldCursorHandle$2$1 extends v implements l<SemanticsPropertyReceiver, l0> {
    final /* synthetic */ long $position;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CoreTextFieldKt$TextFieldCursorHandle$2$1(long j6) {
        super(1);
        this.$position = j6;
    }

    public final void a(@NotNull SemanticsPropertyReceiver semantics) {
        t.j(semantics, "$this$semantics");
        semantics.a(SelectionHandlesKt.d(), new SelectionHandleInfo(Handle.Cursor, this.$position, null));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        a(semanticsPropertyReceiver);
        return l0.INSTANCE;
    }
}
