package androidx.activity.compose;

import androidx.activity.FullyDrawnReporter;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
@f(c = "androidx.activity.compose.ReportDrawnKt$ReportDrawnAfter$1", f = "ReportDrawn.kt", l = {182}, m = "invokeSuspend")
final class ReportDrawnKt$ReportDrawnAfter$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ e8.l<d<? super l0>, Object> $block;
    final /* synthetic */ FullyDrawnReporter $fullyDrawnReporter;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ReportDrawnKt$ReportDrawnAfter$1(FullyDrawnReporter fullyDrawnReporter, e8.l<? super d<? super l0>, ? extends Object> lVar, d<? super ReportDrawnKt$ReportDrawnAfter$1> dVar) {
        super(2, dVar);
        this.$fullyDrawnReporter = fullyDrawnReporter;
        this.$block = lVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new ReportDrawnKt$ReportDrawnAfter$1(this.$fullyDrawnReporter, this.$block, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((ReportDrawnKt$ReportDrawnAfter$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
        FullyDrawnReporter fullyDrawnReporter;
        Throwable th;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                fullyDrawnReporter = (FullyDrawnReporter) this.L$0;
                try {
                    w.b(obj);
                    fullyDrawnReporter.g();
                } catch (Throwable th2) {
                    th = th2;
                    fullyDrawnReporter.g();
                    throw th;
                }
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            w.b(obj);
            FullyDrawnReporter fullyDrawnReporter2 = this.$fullyDrawnReporter;
            e8.l<d<? super l0>, Object> lVar = this.$block;
            fullyDrawnReporter2.c();
            if (!fullyDrawnReporter2.e()) {
                try {
                    this.L$0 = fullyDrawnReporter2;
                    this.label = 1;
                    if (lVar.invoke(this) == objE) {
                        return objE;
                    }
                    fullyDrawnReporter = fullyDrawnReporter2;
                    fullyDrawnReporter.g();
                } catch (Throwable th3) {
                    fullyDrawnReporter = fullyDrawnReporter2;
                    th = th3;
                    fullyDrawnReporter.g();
                    throw th;
                }
            }
        }
        return l0.INSTANCE;
    }
}
