package androidx.compose.animation.core;

import e8.l;
import kotlin.jvm.internal.v;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes4.dex */
final class SuspendAnimationKt$callWithFrameNanos$2<R> extends v implements l<Long, R> {
    final /* synthetic */ l<Long, R> $onFrame;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SuspendAnimationKt$callWithFrameNanos$2(l<? super Long, ? extends R> lVar) {
        super(1);
        this.$onFrame = lVar;
    }

    public final R a(long j6) {
        return this.$onFrame.invoke(Long.valueOf(j6));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Object invoke(Long l) {
        return a(l.longValue());
    }
}
