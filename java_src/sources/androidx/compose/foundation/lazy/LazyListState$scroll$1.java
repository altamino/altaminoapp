package androidx.compose.foundation.lazy;

import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.apache.commons.compress.compressors.bzip2.BZip2Constants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.foundation.lazy.LazyListState", f = "LazyListState.kt", l = {257, BZip2Constants.MAX_ALPHA_SIZE}, m = "scroll")
final class LazyListState$scroll$1 extends d {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ LazyListState this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LazyListState$scroll$1(LazyListState lazyListState, kotlin.coroutines.d<? super LazyListState$scroll$1> dVar) {
        super(dVar);
        this.this$0 = lazyListState;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.b(null, null, this);
    }
}
