package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes8.dex */
@f(c = "androidx.compose.foundation.gestures.ScrollExtensionsKt$animateScrollBy$2", f = "ScrollExtensions.kt", l = {41}, m = "invokeSuspend")
final class ScrollExtensionsKt$animateScrollBy$2 extends l implements p<ScrollScope, d<? super l0>, Object> {
    final /* synthetic */ AnimationSpec<Float> $animationSpec;
    final /* synthetic */ m0 $previousValue;
    final /* synthetic */ float $value;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.ScrollExtensionsKt$animateScrollBy$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements p<Float, Float, l0> {
        final /* synthetic */ ScrollScope $$this$scroll;
        final /* synthetic */ m0 $previousValue;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(m0 m0Var, ScrollScope scrollScope) {
            super(2);
            this.$previousValue = m0Var;
            this.$$this$scroll = scrollScope;
        }

        public final void a(float f, float f6) {
            m0 m0Var = this.$previousValue;
            float f7 = m0Var.element;
            m0Var.element = f7 + this.$$this$scroll.a(f - f7);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Float f, Float f6) {
            a(f.floatValue(), f6.floatValue());
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollExtensionsKt$animateScrollBy$2(float f, AnimationSpec<Float> animationSpec, m0 m0Var, d<? super ScrollExtensionsKt$animateScrollBy$2> dVar) {
        super(2, dVar);
        this.$value = f;
        this.$animationSpec = animationSpec;
        this.$previousValue = m0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        ScrollExtensionsKt$animateScrollBy$2 scrollExtensionsKt$animateScrollBy$2 = new ScrollExtensionsKt$animateScrollBy$2(this.$value, this.$animationSpec, this.$previousValue, dVar);
        scrollExtensionsKt$animateScrollBy$2.L$0 = obj;
        return scrollExtensionsKt$animateScrollBy$2;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull ScrollScope scrollScope, @Nullable d<? super l0> dVar) {
        return ((ScrollExtensionsKt$animateScrollBy$2) create(scrollScope, dVar)).invokeSuspend(l0.INSTANCE);
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
            ScrollScope scrollScope = (ScrollScope) this.L$0;
            float f = this.$value;
            AnimationSpec<Float> animationSpec = this.$animationSpec;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$previousValue, scrollScope);
            this.label = 1;
            if (SuspendAnimationKt.e(0.0f, f, 0.0f, animationSpec, anonymousClass1, this, 4, null) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
