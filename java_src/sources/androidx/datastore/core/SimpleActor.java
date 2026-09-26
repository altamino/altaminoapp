package androidx.datastore.core;

import e8.l;
import e8.p;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.channels.g;
import kotlinx.coroutines.channels.h;
import kotlinx.coroutines.channels.n;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class SimpleActor<T> {

    @NotNull
    private final p<T, d<? super l0>, Object> consumeMessage;

    @NotNull
    private final kotlinx.coroutines.channels.d<T> messageQueue;

    @NotNull
    private final AtomicInteger remainingMessages;

    @NotNull
    private final o0 scope;

    /* JADX INFO: renamed from: androidx.datastore.core.SimpleActor$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<Throwable, l0> {
        final /* synthetic */ l<Throwable, l0> $onComplete;
        final /* synthetic */ p<T, Throwable, l0> $onUndeliveredElement;
        final /* synthetic */ SimpleActor<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(l<? super Throwable, l0> lVar, SimpleActor<T> simpleActor, p<? super T, ? super Throwable, l0> pVar) {
            super(1);
            this.$onComplete = lVar;
            this.this$0 = simpleActor;
            this.$onUndeliveredElement = pVar;
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
            invoke2(th);
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(@Nullable Throwable th) {
            l0 l0Var;
            this.$onComplete.invoke(th);
            ((SimpleActor) this.this$0).messageQueue.c(th);
            do {
                Object objF = h.f(((SimpleActor) this.this$0).messageQueue.q());
                if (objF == null) {
                    l0Var = null;
                } else {
                    this.$onUndeliveredElement.invoke((T) objF, th);
                    l0Var = l0.INSTANCE;
                }
            } while (l0Var != null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleActor(@NotNull o0 scope, @NotNull l<? super Throwable, l0> onComplete, @NotNull p<? super T, ? super Throwable, l0> onUndeliveredElement, @NotNull p<? super T, ? super d<? super l0>, ? extends Object> consumeMessage) {
        t.j(scope, "scope");
        t.j(onComplete, "onComplete");
        t.j(onUndeliveredElement, "onUndeliveredElement");
        t.j(consumeMessage, "consumeMessage");
        this.scope = scope;
        this.consumeMessage = consumeMessage;
        this.messageQueue = g.b(Integer.MAX_VALUE, null, null, 6, null);
        this.remainingMessages = new AtomicInteger(0);
        b2 b2Var = (b2) scope.getCoroutineContext().get(b2.Key);
        if (b2Var == null) {
            return;
        }
        b2Var.U(new AnonymousClass1(onComplete, this, onUndeliveredElement));
    }

    public final void e(T t5) {
        Object objP = this.messageQueue.p(t5);
        if (objP instanceof h.a) {
            Throwable thE = h.e(objP);
            if (thE != null) {
                throw thE;
            }
            throw new n("Channel was closed normally");
        }
        if (!h.i(objP)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (this.remainingMessages.getAndIncrement() == 0) {
            k.d(this.scope, null, null, new SimpleActor$offer$2(this, null), 3, null);
        }
    }
}
