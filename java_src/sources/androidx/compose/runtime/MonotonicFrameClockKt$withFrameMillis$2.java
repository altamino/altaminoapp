package androidx.compose.runtime;

import e8.l;
import kotlin.jvm.internal.v;

/* JADX INFO: loaded from: classes8.dex */
public final class MonotonicFrameClockKt$withFrameMillis$2 extends v implements l<Long, Object> {
    final /* synthetic */ l<Long, Object> $onFrame;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public MonotonicFrameClockKt$withFrameMillis$2(l<? super Long, Object> lVar) {
        super(1);
        this.$onFrame = lVar;
    }

    public final Object a(long j6) {
        return this.$onFrame.invoke(Long.valueOf(j6 / 1000000));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Object invoke(Long l) {
        return a(l.longValue());
    }
}
