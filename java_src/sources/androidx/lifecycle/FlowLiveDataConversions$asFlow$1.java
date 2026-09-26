package androidx.lifecycle;

import e8.p;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.channels.r;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.k;
import kotlinx.coroutines.n2;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes6.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1", f = "FlowLiveData.kt", l = {110, 114}, m = "invokeSuspend")
final class FlowLiveDataConversions$asFlow$1 extends l implements p<r<Object>, kotlin.coroutines.d<? super l0>, Object> {
    final /* synthetic */ LiveData<Object> $this_asFlow;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: renamed from: androidx.lifecycle.FlowLiveDataConversions$asFlow$1$1, reason: invalid class name */
    @kotlin.coroutines.jvm.internal.f(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1$1", f = "FlowLiveData.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ Observer<Object> $observer;
        final /* synthetic */ LiveData<Object> $this_asFlow;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(LiveData<Object> liveData, Observer<Object> observer, kotlin.coroutines.d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$this_asFlow = liveData;
            this.$observer = observer;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return new AnonymousClass1(this.$this_asFlow, this.$observer, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.d.e();
            if (this.label == 0) {
                w.b(obj);
                this.$this_asFlow.j(this.$observer);
                return l0.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: androidx.lifecycle.FlowLiveDataConversions$asFlow$1$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements e8.a<l0> {
        final /* synthetic */ Observer<Object> $observer;
        final /* synthetic */ LiveData<Object> $this_asFlow;

        /* JADX INFO: renamed from: androidx.lifecycle.FlowLiveDataConversions$asFlow$1$2$1, reason: invalid class name */
        @kotlin.coroutines.jvm.internal.f(c = "androidx.lifecycle.FlowLiveDataConversions$asFlow$1$2$1", f = "FlowLiveData.kt", l = {}, m = "invokeSuspend")
        static final class AnonymousClass1 extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
            final /* synthetic */ Observer<Object> $observer;
            final /* synthetic */ LiveData<Object> $this_asFlow;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(LiveData<Object> liveData, Observer<Object> observer, kotlin.coroutines.d<? super AnonymousClass1> dVar) {
                super(2, dVar);
                this.$this_asFlow = liveData;
                this.$observer = observer;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                return new AnonymousClass1(this.$this_asFlow, this.$observer, dVar);
            }

            @Override // e8.p
            @Nullable
            public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
                return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                kotlin.coroutines.intrinsics.d.e();
                if (this.label == 0) {
                    w.b(obj);
                    this.$this_asFlow.n(this.$observer);
                    return l0.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(LiveData<Object> liveData, Observer<Object> observer) {
            super(0);
            this.$this_asFlow = liveData;
            this.$observer = observer;
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() {
            invoke2();
            return l0.INSTANCE;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            k.d(t1.INSTANCE, e1.c().getImmediate(), null, new AnonymousClass1(this.$this_asFlow, this.$observer, null), 2, null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowLiveDataConversions$asFlow$1(LiveData<Object> liveData, kotlin.coroutines.d<? super FlowLiveDataConversions$asFlow$1> dVar) {
        super(2, dVar);
        this.$this_asFlow = liveData;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        FlowLiveDataConversions$asFlow$1 flowLiveDataConversions$asFlow$1 = new FlowLiveDataConversions$asFlow$1(this.$this_asFlow, dVar);
        flowLiveDataConversions$asFlow$1.L$0 = obj;
        return flowLiveDataConversions$asFlow$1;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull r<Object> rVar, @Nullable kotlin.coroutines.d<? super l0> dVar) {
        return ((FlowLiveDataConversions$asFlow$1) create(rVar, dVar)).invokeSuspend(l0.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(r rVar, Object obj) {
        rVar.p(obj);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Observer observer;
        r rVar;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                observer = (Observer) this.L$1;
                rVar = (r) this.L$0;
                w.b(obj);
            }
            return l0.INSTANCE;
        }
        w.b(obj);
        final r rVar2 = (r) this.L$0;
        observer = new Observer() { // from class: androidx.lifecycle.e
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj2) {
                FlowLiveDataConversions$asFlow$1.g(rVar2, obj2);
            }
        };
        n2 immediate = e1.c().getImmediate();
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_asFlow, observer, null);
        this.L$0 = rVar2;
        this.L$1 = observer;
        this.label = 1;
        if (kotlinx.coroutines.i.g(immediate, anonymousClass1, this) == objE) {
            return objE;
        }
        rVar = rVar2;
        AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.$this_asFlow, observer);
        this.L$0 = null;
        this.L$1 = null;
        this.label = 2;
        if (kotlinx.coroutines.channels.p.a(rVar, anonymousClass2, this) == objE) {
            return objE;
        }
        return l0.INSTANCE;
    }
}
