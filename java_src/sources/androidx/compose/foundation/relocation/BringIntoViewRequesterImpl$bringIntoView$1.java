package androidx.compose.foundation.relocation;

import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@f(c = "androidx.compose.foundation.relocation.BringIntoViewRequesterImpl", f = "BringIntoViewRequester.kt", l = {121}, m = "bringIntoView")
final class BringIntoViewRequesterImpl$bringIntoView$1 extends d {
    int I$0;
    int I$1;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ BringIntoViewRequesterImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BringIntoViewRequesterImpl$bringIntoView$1(BringIntoViewRequesterImpl bringIntoViewRequesterImpl, kotlin.coroutines.d<? super BringIntoViewRequesterImpl$bringIntoView$1> dVar) {
        super(dVar);
        this.this$0 = bringIntoViewRequesterImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.a(null, this);
    }
}
