package androidx.compose.animation.core;

import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: Add missing generic type declarations: [T, V] */
/* JADX INFO: loaded from: classes4.dex */
final class SuspendAnimationKt$animate$3<T, V> extends v implements l<AnimationScope<T, V>, l0> {
    final /* synthetic */ p<T, T, l0> $block;
    final /* synthetic */ TwoWayConverter<T, V> $typeConverter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SuspendAnimationKt$animate$3(p<? super T, ? super T, l0> pVar, TwoWayConverter<T, V> twoWayConverter) {
        super(1);
        this.$block = pVar;
        this.$typeConverter = twoWayConverter;
    }

    public final void a(@NotNull AnimationScope<T, V> animate) {
        t.j(animate, "$this$animate");
        this.$block.invoke(animate.e(), this.$typeConverter.b().invoke(animate.g()));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Object obj) {
        a((AnimationScope) obj);
        return l0.INSTANCE;
    }
}
