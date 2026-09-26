package androidx.databinding;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.RepeatOnLifecycleKt;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.flow.g;
import kotlinx.coroutines.flow.h;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
@f(c = "androidx.databinding.ViewDataBindingKtx$StateFlowListener$startCollection$1", f = "ViewDataBindingKtx.kt", l = {95}, m = "invokeSuspend")
final class ViewDataBindingKtx$StateFlowListener$startCollection$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ g<Object> $flow;
    final /* synthetic */ LifecycleOwner $owner;
    int label;
    final /* synthetic */ ViewDataBindingKtx.StateFlowListener this$0;

    /* JADX INFO: renamed from: androidx.databinding.ViewDataBindingKtx$StateFlowListener$startCollection$1$1, reason: invalid class name */
    @f(c = "androidx.databinding.ViewDataBindingKtx$StateFlowListener$startCollection$1$1", f = "ViewDataBindingKtx.kt", l = {96}, m = "invokeSuspend")
    static final class AnonymousClass1 extends l implements p<o0, d<? super l0>, Object> {
        final /* synthetic */ g<Object> $flow;
        int label;
        final /* synthetic */ ViewDataBindingKtx.StateFlowListener this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(g<? extends Object> gVar, ViewDataBindingKtx.StateFlowListener stateFlowListener, d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$flow = gVar;
            this.this$0 = stateFlowListener;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            return new AnonymousClass1(this.$flow, this.this$0, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
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
                g<Object> gVar = this.$flow;
                final ViewDataBindingKtx.StateFlowListener stateFlowListener = this.this$0;
                h<? super Object> hVar = new h() { // from class: androidx.databinding.ViewDataBindingKtx.StateFlowListener.startCollection.1.1.1
                    @Override // kotlinx.coroutines.flow.h
                    @Nullable
                    public final Object emit(@Nullable Object obj2, @NotNull d<? super l0> dVar) {
                        ViewDataBinding viewDataBindingA = stateFlowListener.listener.a();
                        if (viewDataBindingA != null) {
                            viewDataBindingA.handleFieldChange(stateFlowListener.listener.mLocalFieldId, stateFlowListener.listener.b(), 0);
                        }
                        return l0.INSTANCE;
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
    ViewDataBindingKtx$StateFlowListener$startCollection$1(LifecycleOwner lifecycleOwner, g<? extends Object> gVar, ViewDataBindingKtx.StateFlowListener stateFlowListener, d<? super ViewDataBindingKtx$StateFlowListener$startCollection$1> dVar) {
        super(2, dVar);
        this.$owner = lifecycleOwner;
        this.$flow = gVar;
        this.this$0 = stateFlowListener;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new ViewDataBindingKtx$StateFlowListener$startCollection$1(this.$owner, this.$flow, this.this$0, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((ViewDataBindingKtx$StateFlowListener$startCollection$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
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
            Lifecycle lifecycle = this.$owner.getLifecycle();
            Lifecycle.State state = Lifecycle.State.STARTED;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$flow, this.this$0, null);
            this.label = 1;
            if (RepeatOnLifecycleKt.a(lifecycle, state, anonymousClass1, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
