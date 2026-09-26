package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.ObserverHandle;
import androidx.compose.runtime.snapshots.Snapshot;
import e8.p;
import e8.q;
import java.util.List;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes2.dex */
@f(c = "androidx.compose.runtime.Recomposer$recompositionRunner$2", f = "Recomposer.kt", l = {744}, m = "invokeSuspend")
final class Recomposer$recompositionRunner$2 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ q<o0, MonotonicFrameClock, d<? super l0>, Object> $block;
    final /* synthetic */ MonotonicFrameClock $parentFrameClock;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ Recomposer this$0;

    /* JADX INFO: renamed from: androidx.compose.runtime.Recomposer$recompositionRunner$2$2, reason: invalid class name */
    @f(c = "androidx.compose.runtime.Recomposer$recompositionRunner$2$2", f = "Recomposer.kt", l = {745}, m = "invokeSuspend")
    static final class AnonymousClass2 extends l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ q<o0, MonotonicFrameClock, d<? super l0>, Object> $block;
        final /* synthetic */ MonotonicFrameClock $parentFrameClock;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(q<? super o0, ? super MonotonicFrameClock, ? super d<? super l0>, ? extends Object> qVar, MonotonicFrameClock monotonicFrameClock, d<? super AnonymousClass2> dVar) {
            super(2, dVar);
            this.$block = qVar;
            this.$parentFrameClock = monotonicFrameClock;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$block, this.$parentFrameClock, dVar);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w.b(obj);
                o0 o0Var = (o0) this.L$0;
                q<o0, MonotonicFrameClock, d<? super l0>, Object> qVar = this.$block;
                MonotonicFrameClock monotonicFrameClock = this.$parentFrameClock;
                this.label = 1;
                if (qVar.invoke(o0Var, monotonicFrameClock, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    Recomposer$recompositionRunner$2(Recomposer recomposer, q<? super o0, ? super MonotonicFrameClock, ? super d<? super l0>, ? extends Object> qVar, MonotonicFrameClock monotonicFrameClock, d<? super Recomposer$recompositionRunner$2> dVar) {
        super(2, dVar);
        this.this$0 = recomposer;
        this.$block = qVar;
        this.$parentFrameClock = monotonicFrameClock;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        Recomposer$recompositionRunner$2 recomposer$recompositionRunner$2 = new Recomposer$recompositionRunner$2(this.this$0, this.$block, this.$parentFrameClock, dVar);
        recomposer$recompositionRunner$2.L$0 = obj;
        return recomposer$recompositionRunner$2;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((Recomposer$recompositionRunner$2) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x009d A[Catch: all -> 0x00a1, TryCatch #0 {all -> 0x00a1, blocks: (B:28:0x0097, B:30:0x009d, B:33:0x00a3), top: B:56:0x0097 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00d0 A[Catch: all -> 0x00d4, TryCatch #1 {all -> 0x00d4, blocks: (B:45:0x00ca, B:47:0x00d0, B:50:0x00d6), top: B:58:0x00ca }] */
    /* JADX WARN: Code duplicated, block: B:56:0x0097 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x00ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
        b2 b2VarL;
        ObserverHandle observerHandle;
        Throwable th;
        Object obj2;
        Recomposer recomposer;
        Object obj3;
        Recomposer recomposer2;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                observerHandle = (ObserverHandle) this.L$1;
                b2VarL = (b2) this.L$0;
                try {
                    w.b(obj);
                    observerHandle.t();
                    obj3 = this.this$0.stateLock;
                    recomposer2 = this.this$0;
                    synchronized (obj3) {
                        try {
                            if (recomposer2.runnerJob == b2VarL) {
                                recomposer2.runnerJob = null;
                            }
                            recomposer2.b0();
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    Recomposer.Companion.d(this.this$0.recomposerInfo);
                    return l0.INSTANCE;
                } catch (Throwable th3) {
                    th = th3;
                    observerHandle.t();
                    obj2 = this.this$0.stateLock;
                    recomposer = this.this$0;
                    synchronized (obj2) {
                        try {
                            if (recomposer.runnerJob == b2VarL) {
                                recomposer.runnerJob = null;
                            }
                            recomposer.b0();
                            Recomposer.Companion.d(this.this$0.recomposerInfo);
                            throw th;
                        } catch (Throwable th4) {
                            throw th4;
                        }
                    }
                }
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        w.b(obj);
        b2VarL = f2.l(((o0) this.L$0).getCoroutineContext());
        this.this$0.r0(b2VarL);
        ObserverHandle observerHandleE = Snapshot.Companion.e(new Recomposer$recompositionRunner$2$unregisterApplyObserver$1(this.this$0));
        Recomposer.Companion.c(this.this$0.recomposerInfo);
        try {
            Object obj4 = this.this$0.stateLock;
            Recomposer recomposer3 = this.this$0;
            synchronized (obj4) {
                try {
                    List list = recomposer3.knownCompositions;
                    int size = list.size();
                    for (int i11 = 0; i11 < size; i11++) {
                        ((ControlledComposition) list.get(i11)).o();
                    }
                    l0 l0Var = l0.INSTANCE;
                } catch (Throwable th5) {
                    throw th5;
                }
            }
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$block, this.$parentFrameClock, null);
            this.L$0 = b2VarL;
            this.L$1 = observerHandleE;
            this.label = 1;
            if (p0.f(anonymousClass2, this) == objE) {
                return objE;
            }
            observerHandle = observerHandleE;
            observerHandle.t();
            obj3 = this.this$0.stateLock;
            recomposer2 = this.this$0;
            synchronized (obj3) {
                if (recomposer2.runnerJob == b2VarL) {
                    recomposer2.runnerJob = null;
                }
                recomposer2.b0();
                Recomposer.Companion.d(this.this$0.recomposerInfo);
                return l0.INSTANCE;
            }
        } catch (Throwable th6) {
            observerHandle = observerHandleE;
            th = th6;
            observerHandle.t();
            obj2 = this.this$0.stateLock;
            recomposer = this.this$0;
            synchronized (obj2) {
                if (recomposer.runnerJob == b2VarL) {
                    recomposer.runnerJob = null;
                }
                recomposer.b0();
            }
            Recomposer.Companion.d(this.this$0.recomposerInfo);
            throw th;
        }
    }
}
