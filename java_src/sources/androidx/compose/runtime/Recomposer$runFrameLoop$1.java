package androidx.compose.runtime;

import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@f(c = "androidx.compose.runtime.Recomposer", f = "Recomposer.kt", l = {623, 630}, m = "runFrameLoop")
final class Recomposer$runFrameLoop$1 extends d {
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ Recomposer this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Recomposer$runFrameLoop$1(Recomposer recomposer, kotlin.coroutines.d<? super Recomposer$runFrameLoop$1> dVar) {
        super(dVar);
        this.this$0 = recomposer;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.s0(null, null, this);
    }
}
