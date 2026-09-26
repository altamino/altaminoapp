package androidx.compose.runtime;

import e8.l;
import java.util.List;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class BroadcastFrameClock$withFrameNanos$2$1 extends v implements l<Throwable, l0> {
    final /* synthetic */ p0<BroadcastFrameClock.FrameAwaiter<R>> $awaiter;
    final /* synthetic */ BroadcastFrameClock this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BroadcastFrameClock$withFrameNanos$2$1(BroadcastFrameClock broadcastFrameClock, p0<BroadcastFrameClock.FrameAwaiter<R>> p0Var) {
        super(1);
        this.this$0 = broadcastFrameClock;
        this.$awaiter = p0Var;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
        invoke2(th);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@Nullable Throwable th) {
        BroadcastFrameClock.FrameAwaiter frameAwaiter;
        Object obj = this.this$0.lock;
        BroadcastFrameClock broadcastFrameClock = this.this$0;
        p0<BroadcastFrameClock.FrameAwaiter<R>> p0Var = this.$awaiter;
        synchronized (obj) {
            try {
                List list = broadcastFrameClock.awaiters;
                Object obj2 = p0Var.element;
                if (obj2 == null) {
                    t.B("awaiter");
                    frameAwaiter = null;
                } else {
                    frameAwaiter = (BroadcastFrameClock.FrameAwaiter) obj2;
                }
                list.remove(frameAwaiter);
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
