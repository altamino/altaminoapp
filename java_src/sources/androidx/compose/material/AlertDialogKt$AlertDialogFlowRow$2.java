package androidx.compose.material;

import androidx.compose.runtime.Composer;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class AlertDialogKt$AlertDialogFlowRow$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ float $crossAxisSpacing;
    final /* synthetic */ float $mainAxisSpacing;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    AlertDialogKt$AlertDialogFlowRow$2(float f, float f6, p<? super Composer, ? super Integer, l0> pVar, int i10) {
        super(2);
        this.$mainAxisSpacing = f;
        this.$crossAxisSpacing = f6;
        this.$content = pVar;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        AlertDialogKt.c(this.$mainAxisSpacing, this.$crossAxisSpacing, this.$content, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
