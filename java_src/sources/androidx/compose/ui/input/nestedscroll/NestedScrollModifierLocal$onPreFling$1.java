package androidx.compose.ui.input.nestedscroll;

import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@f(c = "androidx.compose.ui.input.nestedscroll.NestedScrollModifierLocal", f = "NestedScrollModifierLocal.kt", l = {88, 89}, m = "onPreFling-QWom1Mo")
final class NestedScrollModifierLocal$onPreFling$1 extends d {
    long J$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ NestedScrollModifierLocal this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NestedScrollModifierLocal$onPreFling$1(NestedScrollModifierLocal nestedScrollModifierLocal, kotlin.coroutines.d<? super NestedScrollModifierLocal$onPreFling$1> dVar) {
        super(dVar);
        this.this$0 = nestedScrollModifierLocal;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.c(0L, this);
    }
}
