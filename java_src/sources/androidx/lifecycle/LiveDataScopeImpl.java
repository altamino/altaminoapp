package androidx.lifecycle;

import android.annotation.SuppressLint;
import e8.p;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes9.dex */
public final class LiveDataScopeImpl<T> implements LiveDataScope<T> {

    @NotNull
    private final kotlin.coroutines.g coroutineContext;

    @NotNull
    private CoroutineLiveData<T> target;

    /* JADX INFO: renamed from: androidx.lifecycle.LiveDataScopeImpl$emit$2, reason: invalid class name */
    @kotlin.coroutines.jvm.internal.f(c = "androidx.lifecycle.LiveDataScopeImpl$emit$2", f = "CoroutineLiveData.kt", l = {99}, m = "invokeSuspend")
    static final class AnonymousClass2 extends l implements p<o0, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ T $value;
        int label;
        final /* synthetic */ LiveDataScopeImpl<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(LiveDataScopeImpl<T> liveDataScopeImpl, T t5, kotlin.coroutines.d<? super AnonymousClass2> dVar) {
            super(2, dVar);
            this.this$0 = liveDataScopeImpl;
            this.$value = t5;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return new AnonymousClass2(this.this$0, this.$value, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
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
                CoroutineLiveData<T> coroutineLiveDataA = this.this$0.a();
                this.label = 1;
                if (coroutineLiveDataA.t(this) == objE) {
                    return objE;
                }
            }
            this.this$0.a().p(this.$value);
            return l0.INSTANCE;
        }
    }

    @NotNull
    public final CoroutineLiveData<T> a() {
        return this.target;
    }

    public LiveDataScopeImpl(@NotNull CoroutineLiveData<T> target, @NotNull kotlin.coroutines.g context) {
        t.j(target, "target");
        t.j(context, "context");
        this.target = target;
        this.coroutineContext = context.plus(e1.c().getImmediate());
    }

    @Override // androidx.lifecycle.LiveDataScope
    @SuppressLint({"NullSafeMutableLiveData"})
    @Nullable
    public Object emit(T t5, @NotNull kotlin.coroutines.d<? super l0> dVar) {
        Object objG = kotlinx.coroutines.i.g(this.coroutineContext, new AnonymousClass2(this, t5, null), dVar);
        return objG == kotlin.coroutines.intrinsics.d.e() ? objG : l0.INSTANCE;
    }
}
