package androidx.activity;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.activity.FullyDrawnReporterKt", f = "FullyDrawnReporter.kt", l = {185}, m = "reportWhenComplete")
final class FullyDrawnReporterKt$reportWhenComplete$1 extends kotlin.coroutines.jvm.internal.d {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    FullyDrawnReporterKt$reportWhenComplete$1(kotlin.coroutines.d<? super FullyDrawnReporterKt$reportWhenComplete$1> dVar) {
        super(dVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return FullyDrawnReporterKt.a(null, null, this);
    }
}
