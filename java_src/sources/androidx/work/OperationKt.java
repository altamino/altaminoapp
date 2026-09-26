package androidx.work;

import com.google.common.util.concurrent.k;
import java.util.concurrent.ExecutionException;
import kotlin.coroutines.d;
import kotlin.coroutines.intrinsics.c;
import kotlin.coroutines.jvm.internal.h;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.p;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.w;

/* JADX INFO: loaded from: classes7.dex */
public final class OperationKt {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public static final Object a(@NotNull Operation operation, @NotNull d<? super Operation.State.SUCCESS> dVar) throws Throwable {
        OperationKt$await$1 operationKt$await$1;
        Object obj;
        if (dVar instanceof OperationKt$await$1) {
            operationKt$await$1 = (OperationKt$await$1) dVar;
            int i10 = operationKt$await$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                operationKt$await$1.label = i10 - Integer.MIN_VALUE;
            } else {
                operationKt$await$1 = new OperationKt$await$1(dVar);
            }
        } else {
            operationKt$await$1 = new OperationKt$await$1(dVar);
        }
        Object objU = operationKt$await$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = operationKt$await$1.label;
        if (i11 == 0) {
            w.b(objU);
            k<Operation.State.SUCCESS> result = operation.a();
            t.i(result, "result");
            if (result.isDone()) {
                try {
                    obj = result.get();
                } catch (ExecutionException e) {
                    Throwable cause = e.getCause();
                    if (cause == null) {
                        throw e;
                    }
                    throw cause;
                }
            } else {
                operationKt$await$1.L$0 = result;
                operationKt$await$1.label = 1;
                p pVar = new p(c.c(operationKt$await$1), 1);
                pVar.x();
                result.addListener(new ListenableFutureKt$await$2$1(pVar, result), DirectExecutor.INSTANCE);
                pVar.S(new ListenableFutureKt$await$2$2(result));
                objU = pVar.u();
                if (objU == kotlin.coroutines.intrinsics.d.e()) {
                    h.c(operationKt$await$1);
                }
                if (objU == objE) {
                    return objE;
                }
            }
            t.i(obj, "result.await()");
            return obj;
        }
        if (i11 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        w.b(objU);
        obj = objU;
        t.i(obj, "result.await()");
        return obj;
    }
}
