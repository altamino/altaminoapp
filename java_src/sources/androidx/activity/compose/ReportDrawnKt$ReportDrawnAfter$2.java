package androidx.activity.compose;

import androidx.compose.runtime.Composer;
import e8.l;
import e8.p;
import kotlin.coroutines.d;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ReportDrawnKt$ReportDrawnAfter$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ l<d<? super l0>, Object> $block;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ReportDrawnKt$ReportDrawnAfter$2(l<? super d<? super l0>, ? extends Object> lVar, int i10) {
        super(2);
        this.$block = lVar;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        ReportDrawnKt.b(this.$block, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
