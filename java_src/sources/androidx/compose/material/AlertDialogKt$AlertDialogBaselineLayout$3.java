package androidx.compose.material;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.runtime.Composer;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class AlertDialogKt$AlertDialogBaselineLayout$3 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ p<Composer, Integer, l0> $text;
    final /* synthetic */ ColumnScope $this_AlertDialogBaselineLayout;
    final /* synthetic */ p<Composer, Integer, l0> $title;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AlertDialogKt$AlertDialogBaselineLayout$3(ColumnScope columnScope, p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, int i10) {
        super(2);
        this.$this_AlertDialogBaselineLayout = columnScope;
        this.$title = pVar;
        this.$text = pVar2;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        AlertDialogKt.a(this.$this_AlertDialogBaselineLayout, this.$title, this.$text, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
