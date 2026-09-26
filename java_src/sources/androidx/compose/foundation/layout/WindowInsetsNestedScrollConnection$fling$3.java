package androidx.compose.foundation.layout;

import android.view.WindowInsetsAnimationController;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationVector1D;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection$fling$3", f = "WindowInsetsConnection.android.kt", l = {}, m = "invokeSuspend")
final class WindowInsetsNestedScrollConnection$fling$3 extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super l0>, Object> {
    final /* synthetic */ WindowInsetsAnimationController $animationController;
    final /* synthetic */ int $current;
    final /* synthetic */ float $flingAmount;
    final /* synthetic */ int $target;
    final /* synthetic */ boolean $targetShown;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ WindowInsetsNestedScrollConnection this$0;

    /* JADX INFO: renamed from: androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection$fling$3$1, reason: invalid class name */
    @kotlin.coroutines.jvm.internal.f(c = "androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection$fling$3$1", f = "WindowInsetsConnection.android.kt", l = {358}, m = "invokeSuspend")
    static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super l0>, Object> {
        final /* synthetic */ WindowInsetsAnimationController $animationController;
        final /* synthetic */ int $current;
        final /* synthetic */ float $flingAmount;
        final /* synthetic */ int $target;
        final /* synthetic */ boolean $targetShown;
        int label;
        final /* synthetic */ WindowInsetsNestedScrollConnection this$0;

        /* JADX INFO: renamed from: androidx.compose.foundation.layout.WindowInsetsNestedScrollConnection$fling$3$1$1, reason: invalid class name and collision with other inner class name */
        static final class C00391 extends v implements e8.l<Animatable<Float, AnimationVector1D>, l0> {
            final /* synthetic */ WindowInsetsNestedScrollConnection this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00391(WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection) {
                super(1);
                this.this$0 = windowInsetsNestedScrollConnection;
            }

            public final void a(@NotNull Animatable<Float, AnimationVector1D> animateTo) {
                t.j(animateTo, "$this$animateTo");
                this.this$0.l(animateTo.n().floatValue());
            }

            @Override // e8.l
            public /* bridge */ /* synthetic */ l0 invoke(Animatable<Float, AnimationVector1D> animatable) {
                a(animatable);
                return l0.INSTANCE;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i10, int i11, float f, WindowInsetsAnimationController windowInsetsAnimationController, boolean z6, WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection, kotlin.coroutines.d<? super AnonymousClass1> dVar) {
            super(2, dVar);
            this.$current = i10;
            this.$target = i11;
            this.$flingAmount = f;
            this.$animationController = windowInsetsAnimationController;
            this.$targetShown = z6;
            this.this$0 = windowInsetsNestedScrollConnection;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return new AnonymousClass1(this.$current, this.$target, this.$flingAmount, this.$animationController, this.$targetShown, this.this$0, dVar);
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
                Animatable animatableB = AnimatableKt.b(this.$current, 0.0f, 2, null);
                Float fC = kotlin.coroutines.jvm.internal.b.c(this.$target);
                Float fC2 = kotlin.coroutines.jvm.internal.b.c(this.$flingAmount);
                C00391 c00391 = new C00391(this.this$0);
                this.label = 1;
                if (Animatable.f(animatableB, fC, null, fC2, c00391, this, 2, null) == objE) {
                    return objE;
                }
            }
            this.$animationController.finish(this.$targetShown);
            this.this$0.animationController = null;
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WindowInsetsNestedScrollConnection$fling$3(WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection, int i10, int i11, float f, WindowInsetsAnimationController windowInsetsAnimationController, boolean z6, kotlin.coroutines.d<? super WindowInsetsNestedScrollConnection$fling$3> dVar) {
        super(2, dVar);
        this.this$0 = windowInsetsNestedScrollConnection;
        this.$current = i10;
        this.$target = i11;
        this.$flingAmount = f;
        this.$animationController = windowInsetsAnimationController;
        this.$targetShown = z6;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        WindowInsetsNestedScrollConnection$fling$3 windowInsetsNestedScrollConnection$fling$3 = new WindowInsetsNestedScrollConnection$fling$3(this.this$0, this.$current, this.$target, this.$flingAmount, this.$animationController, this.$targetShown, dVar);
        windowInsetsNestedScrollConnection$fling$3.L$0 = obj;
        return windowInsetsNestedScrollConnection$fling$3;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
        return ((WindowInsetsNestedScrollConnection$fling$3) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.d.e();
        if (this.label == 0) {
            w.b(obj);
            o0 o0Var = (o0) this.L$0;
            WindowInsetsNestedScrollConnection windowInsetsNestedScrollConnection = this.this$0;
            windowInsetsNestedScrollConnection.animationJob = kotlinx.coroutines.k.d(o0Var, null, null, new AnonymousClass1(this.$current, this.$target, this.$flingAmount, this.$animationController, this.$targetShown, windowInsetsNestedScrollConnection, null), 3, null);
            return l0.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
