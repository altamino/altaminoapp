package androidx.activity.compose;

import androidx.compose.runtime.Composer;
import e8.a;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class ReportDrawnKt$ReportDrawnWhen$fullyDrawnReporter$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ a<Boolean> $predicate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ReportDrawnKt$ReportDrawnWhen$fullyDrawnReporter$1(a<Boolean> aVar, int i10) {
        super(2);
        this.$predicate = aVar;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        ReportDrawnKt.c(this.$predicate, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
