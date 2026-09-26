package androidx.compose.ui.platform;

import android.view.View;
import androidx.compose.runtime.Recomposer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.compose.ui.platform.WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1", f = "WindowRecomposer.android.kt", l = {233}, m = "invokeSuspend")
final class WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1 extends kotlin.coroutines.jvm.internal.l implements e8.p<kotlinx.coroutines.o0, kotlin.coroutines.d<? super w7.l0>, Object> {
    final /* synthetic */ Recomposer $newRecomposer;
    final /* synthetic */ View $rootView;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1(Recomposer recomposer, View view, kotlin.coroutines.d<? super WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1> dVar) {
        super(2, dVar);
        this.$newRecomposer = recomposer;
        this.$rootView = view;
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        return new WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1(this.$newRecomposer, this.$rootView, dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull kotlinx.coroutines.o0 o0Var, @Nullable kotlin.coroutines.d<? super w7.l0> dVar) {
        return ((WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    w7.w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w7.w.b(obj);
                Recomposer recomposer = this.$newRecomposer;
                this.label = 1;
                if (recomposer.j0(this) == objE) {
                    return objE;
                }
            }
            if (WindowRecomposer_androidKt.f(this.$rootView) == this.$newRecomposer) {
                WindowRecomposer_androidKt.i(this.$rootView, null);
            }
            return w7.l0.INSTANCE;
        } catch (Throwable th) {
            if (WindowRecomposer_androidKt.f(this.$rootView) == this.$newRecomposer) {
                WindowRecomposer_androidKt.i(this.$rootView, null);
            }
            throw th;
        }
    }
}
