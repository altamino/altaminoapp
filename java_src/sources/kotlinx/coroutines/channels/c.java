package kotlinx.coroutines.channels;

import kotlin.reflect.KFunction;
import kotlinx.coroutines.internal.i0;
import kotlinx.coroutines.internal.l0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class c {
    private static final long BUFFER_END_RENDEZVOUS = 0;
    private static final long BUFFER_END_UNLIMITED = Long.MAX_VALUE;
    private static final int CLOSE_STATUS_ACTIVE = 0;
    private static final int CLOSE_STATUS_CANCELLATION_STARTED = 1;
    private static final int CLOSE_STATUS_CANCELLED = 3;
    private static final int CLOSE_STATUS_CLOSED = 2;
    private static final long EB_COMPLETED_COUNTER_MASK = 4611686018427387903L;
    private static final long EB_COMPLETED_PAUSE_EXPAND_BUFFERS_BIT = 4611686018427387904L;
    private static final int RESULT_BUFFERED = 1;
    private static final int RESULT_CLOSED = 4;
    private static final int RESULT_FAILED = 5;
    private static final int RESULT_RENDEZVOUS = 0;
    private static final int RESULT_SUSPEND = 2;
    private static final int RESULT_SUSPEND_NO_WAITER = 3;
    private static final int SENDERS_CLOSE_STATUS_SHIFT = 60;
    private static final long SENDERS_COUNTER_MASK = 1152921504606846975L;

    @NotNull
    private static final i<Object> NULL_SEGMENT = new i<>(-1, null, null, 0);
    public static final int SEGMENT_SIZE = l0.e("kotlinx.coroutines.bufferedChannel.segmentSize", 32, 0, 0, 12, null);
    private static final int EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS = l0.e("kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations", 10000, 0, 0, 12, null);

    @NotNull
    public static final i0 BUFFERED = new i0("BUFFERED");

    @NotNull
    private static final i0 IN_BUFFER = new i0("SHOULD_BUFFER");

    @NotNull
    private static final i0 RESUMING_BY_RCV = new i0("S_RESUMING_BY_RCV");

    @NotNull
    private static final i0 RESUMING_BY_EB = new i0("RESUMING_BY_EB");

    @NotNull
    private static final i0 POISONED = new i0("POISONED");

    @NotNull
    private static final i0 DONE_RCV = new i0("DONE_RCV");

    @NotNull
    private static final i0 INTERRUPTED_SEND = new i0("INTERRUPTED_SEND");

    @NotNull
    private static final i0 INTERRUPTED_RCV = new i0("INTERRUPTED_RCV");

    @NotNull
    private static final i0 CHANNEL_CLOSED = new i0("CHANNEL_CLOSED");

    @NotNull
    private static final i0 SUSPEND = new i0("SUSPEND");

    @NotNull
    private static final i0 SUSPEND_NO_WAITER = new i0("SUSPEND_NO_WAITER");

    @NotNull
    private static final i0 FAILED = new i0("FAILED");

    @NotNull
    private static final i0 NO_RECEIVE_RESULT = new i0("NO_RECEIVE_RESULT");

    @NotNull
    private static final i0 CLOSE_HANDLER_CLOSED = new i0("CLOSE_HANDLER_CLOSED");

    @NotNull
    private static final i0 CLOSE_HANDLER_INVOKED = new i0("CLOSE_HANDLER_INVOKED");

    @NotNull
    private static final i0 NO_CLOSE_CAUSE = new i0("NO_CLOSE_CAUSE");

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* synthetic */ class a<E> extends kotlin.jvm.internal.q implements e8.p<Long, i<E>, i<E>> {
        public static final a INSTANCE = new a();

        a() {
            super(2, c.class, "createSegment", "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;", 1);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ Object invoke(Long l, Object obj) {
            return a(l.longValue(), (i) obj);
        }

        @NotNull
        public final i<E> a(long j6, @NotNull i<E> iVar) {
            return c.x(j6, iVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long A(int i10) {
        if (i10 == 0) {
            return 0L;
        }
        if (i10 != Integer.MAX_VALUE) {
            return i10;
        }
        return Long.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> boolean B(kotlinx.coroutines.o<? super T> oVar, T t5, e8.l<? super Throwable, w7.l0> lVar) {
        Object objR = oVar.r(t5, null, lVar);
        if (objR == null) {
            return false;
        }
        oVar.K(objR);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long v(long j6, boolean z6) {
        return (z6 ? 4611686018427387904L : 0L) + j6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long w(long j6, int i10) {
        return (((long) i10) << 60) + j6;
    }

    @NotNull
    public static final i0 z() {
        return CHANNEL_CLOSED;
    }

    static /* synthetic */ boolean C(kotlinx.coroutines.o oVar, Object obj, e8.l lVar, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            lVar = null;
        }
        return B(oVar, obj, lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E> i<E> x(long j6, i<E> iVar) {
        return new i<>(j6, iVar, iVar.u(), 0);
    }

    @NotNull
    public static final <E> KFunction<i<E>> y() {
        return a.INSTANCE;
    }
}
