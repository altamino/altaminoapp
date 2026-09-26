package androidx.compose.ui.platform;

import android.content.Context;
import android.view.View;
import androidx.compose.runtime.Recomposer;
import androidx.lifecycle.LifecycleOwner;
import kotlinx.coroutines.b2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.compose.ui.platform.WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1", f = "WindowRecomposer.android.kt", l = {391}, m = "invokeSuspend")
final class WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1 extends kotlin.coroutines.jvm.internal.l implements e8.p<kotlinx.coroutines.o0, kotlin.coroutines.d<? super w7.l0>, Object> {
    final /* synthetic */ LifecycleOwner $lifecycleOwner;
    final /* synthetic */ Recomposer $recomposer;
    final /* synthetic */ WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2 $self;
    final /* synthetic */ kotlin.jvm.internal.p0<MotionDurationScaleImpl> $systemDurationScaleSettingConsumer;
    final /* synthetic */ View $this_createLifecycleAwareWindowRecomposer;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1(kotlin.jvm.internal.p0<MotionDurationScaleImpl> p0Var, Recomposer recomposer, LifecycleOwner lifecycleOwner, WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2 windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2, View view, kotlin.coroutines.d<? super WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1> dVar) {
        super(2, dVar);
        this.$systemDurationScaleSettingConsumer = p0Var;
        this.$recomposer = recomposer;
        this.$lifecycleOwner = lifecycleOwner;
        this.$self = windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2;
        this.$this_createLifecycleAwareWindowRecomposer = view;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1 windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1 = new WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1(this.$systemDurationScaleSettingConsumer, this.$recomposer, this.$lifecycleOwner, this.$self, this.$this_createLifecycleAwareWindowRecomposer, dVar);
        windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1.L$0 = obj;
        return windowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1;
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull kotlinx.coroutines.o0 o0Var, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
        return ((WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0071  */
    /* JADX WARN: Code duplicated, block: B:31:0x0088  */
    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
        b2 b2Var;
        b2 b2VarD;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                b2Var = (b2) this.L$0;
                try {
                    w7.w.b(obj);
                    if (b2Var != null) {
                        b2.a.a(b2Var, null, 1, null);
                    }
                    this.$lifecycleOwner.getLifecycle().d(this.$self);
                    return w7.l0.INSTANCE;
                } catch (Throwable th) {
                    th = th;
                    if (b2Var != null) {
                        b2.a.a(b2Var, null, 1, null);
                    }
                    this.$lifecycleOwner.getLifecycle().d(this.$self);
                    throw th;
                }
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        w7.w.b(obj);
        kotlinx.coroutines.o0 o0Var = (kotlinx.coroutines.o0) this.L$0;
        try {
            MotionDurationScaleImpl motionDurationScaleImpl = this.$systemDurationScaleSettingConsumer.element;
            if (motionDurationScaleImpl != null) {
                Context applicationContext = this.$this_createLifecycleAwareWindowRecomposer.getContext().getApplicationContext();
                kotlin.jvm.internal.t.i(applicationContext, "context.applicationContext");
                kotlinx.coroutines.flow.l0 l0VarE = WindowRecomposer_androidKt.e(applicationContext);
                motionDurationScaleImpl.c(((Number) l0VarE.getValue()).floatValue());
                b2VarD = kotlinx.coroutines.k.d(o0Var, null, null, new WindowRecomposer_androidKt$createLifecycleAwareWindowRecomposer$2$onStateChanged$1$1$1(l0VarE, motionDurationScaleImpl, null), 3, null);
            } else {
                b2VarD = null;
            }
            try {
                Recomposer recomposer = this.$recomposer;
                this.L$0 = b2VarD;
                this.label = 1;
                if (recomposer.t0(this) == objE) {
                    return objE;
                }
                b2Var = b2VarD;
                if (b2Var != null) {
                    b2.a.a(b2Var, null, 1, null);
                }
                this.$lifecycleOwner.getLifecycle().d(this.$self);
                return w7.l0.INSTANCE;
            } catch (Throwable th2) {
                b2Var = b2VarD;
                th = th2;
                if (b2Var != null) {
                    b2.a.a(b2Var, null, 1, null);
                }
                this.$lifecycleOwner.getLifecycle().d(this.$self);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            b2Var = null;
        }
    }
}
