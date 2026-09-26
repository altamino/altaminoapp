package androidx.activity.compose;

import e8.a;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class ReportDrawnComposition$observeReporter$1 extends v implements a<l0> {
    final /* synthetic */ a<Boolean> $predicate;
    final /* synthetic */ k0 $reporterPassed;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ReportDrawnComposition$observeReporter$1(k0 k0Var, a<Boolean> aVar) {
        super(0);
        this.$reporterPassed = k0Var;
        this.$predicate = aVar;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$reporterPassed.element = this.$predicate.invoke().booleanValue();
    }
}
