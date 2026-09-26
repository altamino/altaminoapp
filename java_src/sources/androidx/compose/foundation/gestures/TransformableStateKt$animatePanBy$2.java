package androidx.compose.foundation.gestures;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.ui.geometry.Offset;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.o0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes6.dex */
@f(c = "androidx.compose.foundation.gestures.TransformableStateKt$animatePanBy$2", f = "TransformableState.kt", l = {182}, m = "invokeSuspend")
final class TransformableStateKt$animatePanBy$2 extends l implements p<TransformScope, d<? super l0>, Object> {
    final /* synthetic */ AnimationSpec<Offset> $animationSpec;
    final /* synthetic */ long $offset;
    final /* synthetic */ o0 $previous;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.TransformableStateKt$animatePanBy$2$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements e8.l<AnimationScope<Offset, AnimationVector2D>, l0> {
        final /* synthetic */ TransformScope $$this$transform;
        final /* synthetic */ o0 $previous;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(o0 o0Var, TransformScope transformScope) {
            super(1);
            this.$previous = o0Var;
            this.$$this$transform = transformScope;
        }

        public final void a(@NotNull AnimationScope<Offset, AnimationVector2D> animateTo) {
            t.j(animateTo, "$this$animateTo");
            c.a(this.$$this$transform, 0.0f, Offset.q(animateTo.e().u(), this.$previous.element), 0.0f, 5, null);
            this.$previous.element = animateTo.e().u();
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ l0 invoke(AnimationScope<Offset, AnimationVector2D> animationScope) {
            a(animationScope);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TransformableStateKt$animatePanBy$2(o0 o0Var, long j6, AnimationSpec<Offset> animationSpec, d<? super TransformableStateKt$animatePanBy$2> dVar) {
        super(2, dVar);
        this.$previous = o0Var;
        this.$offset = j6;
        this.$animationSpec = animationSpec;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        TransformableStateKt$animatePanBy$2 transformableStateKt$animatePanBy$2 = new TransformableStateKt$animatePanBy$2(this.$previous, this.$offset, this.$animationSpec, dVar);
        transformableStateKt$animatePanBy$2.L$0 = obj;
        return transformableStateKt$animatePanBy$2;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull TransformScope transformScope, @Nullable d<? super l0> dVar) {
        return ((TransformableStateKt$animatePanBy$2) create(transformScope, dVar)).invokeSuspend(l0.INSTANCE);
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
            TransformScope transformScope = (TransformScope) this.L$0;
            AnimationState animationState = new AnimationState(VectorConvertersKt.b(Offset.Companion), Offset.d(this.$previous.element), null, 0L, 0L, false, 60, null);
            Offset offsetD = Offset.d(this.$offset);
            AnimationSpec<Offset> animationSpec = this.$animationSpec;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$previous, transformScope);
            this.label = 1;
            if (SuspendAnimationKt.k(animationState, offsetD, animationSpec, false, anonymousClass1, this, 4, null) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
