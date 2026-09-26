package androidx.compose.runtime;

import kotlin.coroutines.jvm.internal.d;
import kotlin.coroutines.jvm.internal.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@f(c = "androidx.compose.runtime.PausableMonotonicFrameClock", f = "PausableMonotonicFrameClock.kt", l = {62, 63}, m = "withFrameNanos")
final class PausableMonotonicFrameClock$withFrameNanos$1<R> extends d {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ PausableMonotonicFrameClock this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PausableMonotonicFrameClock$withFrameNanos$1(PausableMonotonicFrameClock pausableMonotonicFrameClock, kotlin.coroutines.d<? super PausableMonotonicFrameClock$withFrameNanos$1> dVar) {
        super(dVar);
        this.this$0 = pausableMonotonicFrameClock;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.k(null, this);
    }
}
