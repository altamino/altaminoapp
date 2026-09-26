package androidx.activity;

import e8.l;
import kotlin.jvm.internal.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes6.dex */
public final class FullyDrawnReporterKt {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object, w7.l0] */
    @Nullable
    public static final Object a(@NotNull FullyDrawnReporter fullyDrawnReporter, @NotNull l<? super kotlin.coroutines.d<? super l0>, ? extends Object> lVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        FullyDrawnReporterKt$reportWhenComplete$1 fullyDrawnReporterKt$reportWhenComplete$1;
        FullyDrawnReporter fullyDrawnReporter2;
        if (dVar instanceof FullyDrawnReporterKt$reportWhenComplete$1) {
            fullyDrawnReporterKt$reportWhenComplete$1 = (FullyDrawnReporterKt$reportWhenComplete$1) dVar;
            int i10 = fullyDrawnReporterKt$reportWhenComplete$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                fullyDrawnReporterKt$reportWhenComplete$1.label = i10 - Integer.MIN_VALUE;
            } else {
                fullyDrawnReporterKt$reportWhenComplete$1 = new FullyDrawnReporterKt$reportWhenComplete$1(dVar);
            }
        } else {
            fullyDrawnReporterKt$reportWhenComplete$1 = new FullyDrawnReporterKt$reportWhenComplete$1(dVar);
        }
        Object obj = fullyDrawnReporterKt$reportWhenComplete$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = fullyDrawnReporterKt$reportWhenComplete$1.label;
        try {
            if (i11 == 0) {
                w.b(obj);
                fullyDrawnReporter.c();
                if (fullyDrawnReporter.e()) {
                    return l0.INSTANCE;
                }
                fullyDrawnReporterKt$reportWhenComplete$1.L$0 = fullyDrawnReporter;
                fullyDrawnReporterKt$reportWhenComplete$1.label = 1;
                if (lVar.invoke(fullyDrawnReporterKt$reportWhenComplete$1) == objE) {
                    fullyDrawnReporter2 = fullyDrawnReporter;
                    return objE;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                FullyDrawnReporter fullyDrawnReporter3 = (FullyDrawnReporter) fullyDrawnReporterKt$reportWhenComplete$1.L$0;
                w.b(obj);
                fullyDrawnReporter2 = fullyDrawnReporter3;
            }
            fullyDrawnReporter2 = fullyDrawnReporter;
            r.b(1);
            fullyDrawnReporter2.g();
            r.a(1);
            fullyDrawnReporter = l0.INSTANCE;
            return fullyDrawnReporter;
        } catch (Throwable th) {
            r.b(1);
            fullyDrawnReporter.g();
            r.a(1);
            throw th;
        }
    }
}
