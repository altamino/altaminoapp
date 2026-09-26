package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.SelectionRegistrar;
import e8.a;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
final class BasicTextKt$BasicText$selectableId$1 extends v implements a<Long> {
    final /* synthetic */ SelectionRegistrar $selectionRegistrar;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BasicTextKt$BasicText$selectableId$1(SelectionRegistrar selectionRegistrar) {
        super(0);
        this.$selectionRegistrar = selectionRegistrar;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Long invoke() {
        SelectionRegistrar selectionRegistrar = this.$selectionRegistrar;
        return Long.valueOf(selectionRegistrar != null ? selectionRegistrar.e() : 0L);
    }
}
