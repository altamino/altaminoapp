package androidx.datastore.core;

import com.narvii.util.ws.WsMessage;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.b;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.flow.g;
import kotlinx.coroutines.flow.h;
import kotlinx.coroutines.flow.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.s;
import w7.w;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@f(c = "androidx.datastore.core.SingleProcessDataStore$data$1", f = "SingleProcessDataStore.kt", l = {117}, m = "invokeSuspend")
final class SingleProcessDataStore$data$1<T> extends l implements p<h<? super T>, d<? super l0>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ SingleProcessDataStore<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SingleProcessDataStore$data$1(SingleProcessDataStore<T> singleProcessDataStore, d<? super SingleProcessDataStore$data$1> dVar) {
        super(2, dVar);
        this.this$0 = singleProcessDataStore;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        SingleProcessDataStore$data$1 singleProcessDataStore$data$1 = new SingleProcessDataStore$data$1(this.this$0, dVar);
        singleProcessDataStore$data$1.L$0 = obj;
        return singleProcessDataStore$data$1;
    }

    /* JADX INFO: renamed from: androidx.datastore.core.SingleProcessDataStore$data$1$1, reason: invalid class name */
    @f(c = "androidx.datastore.core.SingleProcessDataStore$data$1$1", f = "SingleProcessDataStore.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<State<T>, d<? super Boolean>, Object> {
        final /* synthetic */ State<T> $currentDownStreamFlowState;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(State<T> state, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$currentDownStreamFlowState = state;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$currentDownStreamFlowState, dVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // e8.p
        @Nullable
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public final Object invoke(@NotNull State<T> state, @Nullable d<? super Boolean> dVar) {
            return ((AnonymousClass1) create(state, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.d.e();
            if (this.label == 0) {
                w.b(obj);
                State<T> state = (State) this.L$0;
                State<T> state2 = this.$currentDownStreamFlowState;
                boolean z6 = false;
                if (!(state2 instanceof Data) && !(state2 instanceof Final) && state == state2) {
                    z6 = true;
                }
                return b.a(z6);
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull h<? super T> hVar, @Nullable d<? super l0> dVar) {
        return ((SingleProcessDataStore$data$1) create(hVar, dVar)).invokeSuspend(l0.INSTANCE);
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
            h hVar = (h) this.L$0;
            State state = (State) ((SingleProcessDataStore) this.this$0).downstreamFlow.getValue();
            if (!(state instanceof Data)) {
                ((SingleProcessDataStore) this.this$0).actor.e(new SingleProcessDataStore.Message.Read(state));
            }
            final g gVarP = i.p(((SingleProcessDataStore) this.this$0).downstreamFlow, new AnonymousClass1(state, null));
            g<T> gVar = new g<T>() { // from class: androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1

                /* JADX INFO: renamed from: androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2, reason: invalid class name */
                public static final class AnonymousClass2 implements h<State<T>> {
                    final /* synthetic */ h $this_unsafeFlow$inlined;

                    /* JADX INFO: renamed from: androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
                    @f(c = "androidx.datastore.core.SingleProcessDataStore$data$1$invokeSuspend$$inlined$map$1$2", f = "SingleProcessDataStore.kt", l = {WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE}, m = "emit")
                    public static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.d {
                        Object L$0;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(d dVar) {
                            super(dVar);
                        }

                        @Override // kotlin.coroutines.jvm.internal.a
                        @Nullable
                        public final Object invokeSuspend(@NotNull Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(h hVar) {
                        this.$this_unsafeFlow$inlined = hVar;
                    }

                    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // kotlinx.coroutines.flow.h
                    @Nullable
                    public Object emit(Object obj, @NotNull d dVar) throws Throwable {
                        AnonymousClass1 anonymousClass1;
                        if (dVar instanceof AnonymousClass1) {
                            anonymousClass1 = (AnonymousClass1) dVar;
                            int i10 = anonymousClass1.label;
                            if ((i10 & Integer.MIN_VALUE) != 0) {
                                anonymousClass1.label = i10 - Integer.MIN_VALUE;
                            } else {
                                anonymousClass1 = new AnonymousClass1(dVar);
                            }
                        } else {
                            anonymousClass1 = new AnonymousClass1(dVar);
                        }
                        Object obj2 = anonymousClass1.result;
                        Object objE = kotlin.coroutines.intrinsics.d.e();
                        int i11 = anonymousClass1.label;
                        if (i11 == 0) {
                            w.b(obj2);
                            h hVar = this.$this_unsafeFlow$inlined;
                            State state = (State) obj;
                            if (state instanceof ReadException) {
                                throw ((ReadException) state).a();
                            }
                            if (state instanceof Final) {
                                throw ((Final) state).a();
                            }
                            if (!(state instanceof Data)) {
                                if (state instanceof UnInitialized) {
                                    throw new IllegalStateException("This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542".toString());
                                }
                                throw new s();
                            }
                            Object objB = ((Data) state).b();
                            anonymousClass1.label = 1;
                            if (hVar.emit(objB, anonymousClass1) == objE) {
                                return objE;
                            }
                        } else {
                            if (i11 != 1) {
                                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                            }
                            w.b(obj2);
                        }
                        return l0.INSTANCE;
                    }
                }

                @Override // kotlinx.coroutines.flow.g
                @Nullable
                public Object collect(@NotNull h hVar2, @NotNull d dVar) {
                    Object objCollect = gVarP.collect(new AnonymousClass2(hVar2), dVar);
                    return objCollect == kotlin.coroutines.intrinsics.d.e() ? objCollect : l0.INSTANCE;
                }
            };
            this.label = 1;
            if (i.r(hVar, gVar, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
