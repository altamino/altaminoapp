package androidx.lifecycle.testing;

import androidx.lifecycle.Lifecycle;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.lifecycle.testing.TestLifecycleOwner$handleLifecycleEvent$1", f = "TestLifecycleOwner.kt", l = {}, m = "invokeSuspend")
final class TestLifecycleOwner$handleLifecycleEvent$1 extends l implements p<o0, d<? super l0>, Object> {
    final /* synthetic */ Lifecycle.Event $event;
    int label;
    final /* synthetic */ TestLifecycleOwner this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TestLifecycleOwner$handleLifecycleEvent$1(TestLifecycleOwner testLifecycleOwner, Lifecycle.Event event, d<? super TestLifecycleOwner$handleLifecycleEvent$1> dVar) {
        super(2, dVar);
        this.this$0 = testLifecycleOwner;
        this.$event = event;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        return new TestLifecycleOwner$handleLifecycleEvent$1(this.this$0, this.$event, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable d<? super l0> dVar) {
        return ((TestLifecycleOwner$handleLifecycleEvent$1) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.d.e();
        if (this.label == 0) {
            w.b(obj);
            this.this$0.lifecycleRegistry.i(this.$event);
            return l0.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
