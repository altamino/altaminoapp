package androidx.work;

import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@f(c = "androidx.work.OperationKt", f = "Operation.kt", l = {39}, m = "await")
final class OperationKt$await$1 extends d {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    OperationKt$await$1(kotlin.coroutines.d<? super OperationKt$await$1> dVar) {
        super(dVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return OperationKt.a(null, this);
    }
}
