package androidx.lifecycle;

import e8.p;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.channels.r;
import kotlinx.coroutines.channels.u;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes8.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.lifecycle.FlowExtKt$flowWithLifecycle$1", f = "FlowExt.kt", l = {91}, m = "invokeSuspend")
final class FlowExtKt$flowWithLifecycle$1 extends l implements p<r<Object>, kotlin.coroutines.d<? super l0>, Object> {
    final /* synthetic */ Lifecycle $lifecycle;
    final /* synthetic */ Lifecycle.State $minActiveState;
    final /* synthetic */ kotlinx.coroutines.flow.g<Object> $this_flowWithLifecycle;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.lifecycle.FlowExtKt$flowWithLifecycle$1$1, reason: invalid class name */
    @kotlin.coroutines.jvm.internal.f(c = "androidx.lifecycle.FlowExtKt$flowWithLifecycle$1$1", f = "FlowExt.kt", l = {92}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ r<Object> $$this$callbackFlow;
        final /* synthetic */ kotlinx.coroutines.flow.g<Object> $this_flowWithLifecycle;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(kotlinx.coroutines.flow.g<Object> gVar, r<Object> rVar, kotlin.coroutines.d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$this_flowWithLifecycle = gVar;
            this.$$this$callbackFlow = rVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return new AnonymousClass1(this.$this_flowWithLifecycle, this.$$this$callbackFlow, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((AnonymousClass1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
                kotlinx.coroutines.flow.g<Object> gVar = this.$this_flowWithLifecycle;
                final r<Object> rVar = this.$$this$callbackFlow;
                kotlinx.coroutines.flow.h<? super Object> hVar = new kotlinx.coroutines.flow.h() { // from class: androidx.lifecycle.FlowExtKt.flowWithLifecycle.1.1.1
                    @Override // kotlinx.coroutines.flow.h
                    @Nullable
                    public final Object emit(T t5, @NotNull kotlin.coroutines.d<? super l0> dVar) {
                        Object objW = rVar.w(t5, dVar);
                        return objW == kotlin.coroutines.intrinsics.d.e() ? objW : l0.INSTANCE;
                    }
                };
                this.label = 1;
                if (gVar.collect(hVar, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowExtKt$flowWithLifecycle$1(Lifecycle lifecycle, Lifecycle.State state, kotlinx.coroutines.flow.g<Object> gVar, kotlin.coroutines.d<? super FlowExtKt$flowWithLifecycle$1> dVar) {
        super(2, dVar);
        this.$lifecycle = lifecycle;
        this.$minActiveState = state;
        this.$this_flowWithLifecycle = gVar;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        FlowExtKt$flowWithLifecycle$1 flowExtKt$flowWithLifecycle$1 = new FlowExtKt$flowWithLifecycle$1(this.$lifecycle, this.$minActiveState, this.$this_flowWithLifecycle, dVar);
        flowExtKt$flowWithLifecycle$1.L$0 = obj;
        return flowExtKt$flowWithLifecycle$1;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull r<Object> rVar, @Nullable kotlin.coroutines.d<? super l0> dVar) {
        return ((FlowExtKt$flowWithLifecycle$1) create(rVar, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        r rVar;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                rVar = (r) this.L$0;
                w.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            w.b(obj);
            r rVar2 = (r) this.L$0;
            Lifecycle lifecycle = this.$lifecycle;
            Lifecycle.State state = this.$minActiveState;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$this_flowWithLifecycle, rVar2, null);
            this.L$0 = rVar2;
            this.label = 1;
            if (RepeatOnLifecycleKt.a(lifecycle, state, anonymousClass1, this) == objE) {
                return objE;
            }
            rVar = rVar2;
        }
        u.a.a(rVar, null, 1, null);
        return l0.INSTANCE;
    }
}
