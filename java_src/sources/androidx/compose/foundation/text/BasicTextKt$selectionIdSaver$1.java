package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.SelectionRegistrar;
import androidx.compose.foundation.text.selection.SelectionRegistrarKt;
import androidx.compose.runtime.saveable.SaverScope;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
final class BasicTextKt$selectionIdSaver$1 extends v implements p<SaverScope, Long, Long> {
    final /* synthetic */ SelectionRegistrar $selectionRegistrar;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BasicTextKt$selectionIdSaver$1(SelectionRegistrar selectionRegistrar) {
        super(2);
        this.$selectionRegistrar = selectionRegistrar;
    }

    @Nullable
    public final Long a(@NotNull SaverScope Saver, long j6) {
        t.j(Saver, "$this$Saver");
        if (SelectionRegistrarKt.b(this.$selectionRegistrar, j6)) {
            return Long.valueOf(j6);
        }
        return null;
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ Long invoke(SaverScope saverScope, Long l) {
        return a(saverScope, l.longValue());
    }
}
