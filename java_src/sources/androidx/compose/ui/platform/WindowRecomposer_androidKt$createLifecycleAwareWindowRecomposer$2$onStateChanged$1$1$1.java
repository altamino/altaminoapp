package androidx.compose.ui.platform;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1", f = "WindowRecomposer.android.kt", l = {386}, m = "invokeSuspend")
final class WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1 extends kotlin.coroutines.jvm.internal.l implements e8.p<kotlinx.coroutines.o0, kotlin.coroutines.d<? super w7.l0>, Object> {
    final /* synthetic */ kotlinx.coroutines.flow.l0<Float> $durationScaleStateFlow;
    final /* synthetic */ MotionDurationScaleImpl $it;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1(kotlinx.coroutines.flow.l0<Float> l0Var, MotionDurationScaleImpl motionDurationScaleImpl, kotlin.coroutines.d<? super WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1> dVar) {
        super(2, dVar);
        this.$durationScaleStateFlow = l0Var;
        this.$it = motionDurationScaleImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        return new WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1(this.$durationScaleStateFlow, this.$it, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull kotlinx.coroutines.o0 o0Var, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
        return ((WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w7.w.b(obj);
        } else {
            w7.w.b(obj);
            kotlinx.coroutines.flow.l0<Float> l0Var = this.$durationScaleStateFlow;
            final MotionDurationScaleImpl motionDurationScaleImpl = this.$it;
            kotlinx.coroutines.flow.h<Float> hVar = new kotlinx.coroutines.flow.h<Float>() { // from class: androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1.1
                @Nullable
                public final Object e(float f, @NotNull kotlin.coroutines.d<? super w7.l0> dVar) {
                    motionDurationScaleImpl.c(f);
                    return w7.l0.INSTANCE;
                }

                @Override // kotlinx.coroutines.flow.h
                public /* bridge */ /* synthetic */ Object emit(Float f, kotlin.coroutines.d dVar) {
                    return e(f.floatValue(), dVar);
                }
            };
            this.label = 1;
            if (l0Var.collect(hVar, this) == objE) {
                return objE;
            }
        }
        throw new w7.i();
    }
}
