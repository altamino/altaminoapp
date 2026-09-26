package androidx.compose.animation.core;

import kotlin.coroutines.jvm.internal.l;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.compose.animation.core.Animatable$snapTo$2", f = "Animatable.kt", l = {}, m = "invokeSuspend")
final class Animatable$snapTo$2 extends l implements e8.l<kotlin.coroutines.d<? super l0>, Object> {
    final /* synthetic */ T $targetValue;
    int label;
    final /* synthetic */ Animatable<T, V> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Animatable$snapTo$2(Animatable<T, V> animatable, T t5, kotlin.coroutines.d<? super Animatable$snapTo$2> dVar) {
        super(1, dVar);
        this.this$0 = animatable;
        this.$targetValue = t5;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@NotNull kotlin.coroutines.d<?> dVar) {
        return new Animatable$snapTo$2(this.this$0, this.$targetValue, dVar);
    }

    @Override // e8.l
    @Nullable
    public final Object invoke(@Nullable kotlin.coroutines.d<? super l0> dVar) {
        return ((Animatable$snapTo$2) create(dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.d.e();
        if (this.label == 0) {
            w.b(obj);
            this.this$0.j();
            Object objH = this.this$0.h(this.$targetValue);
            this.this$0.k().n(objH);
            this.this$0.t(objH);
            return l0.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
