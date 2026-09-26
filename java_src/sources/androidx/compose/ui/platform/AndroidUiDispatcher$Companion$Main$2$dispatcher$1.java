package androidx.compose.ui.platform;

import android.view.Choreographer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@kotlin.coroutines.jvm.internal.f(c = "androidx.compose.ui.platform.AndroidUiDispatcher$Companion$Main$2$dispatcher$1", f = "AndroidUiDispatcher.android.kt", l = {}, m = "invokeSuspend")
final class AndroidUiDispatcher$Companion$Main$2$dispatcher$1 extends kotlin.coroutines.jvm.internal.l implements e8.p<kotlinx.coroutines.o0, kotlin.coroutines.d<? super Choreographer>, Object> {
    int label;

    AndroidUiDispatcher$Companion$Main$2$dispatcher$1(kotlin.coroutines.d<? super AndroidUiDispatcher$Companion$Main$2$dispatcher$1> dVar) {
        super(2, dVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
        return new AndroidUiDispatcher$Companion$Main$2$dispatcher$1(dVar);
    }

    @Override // e8.p
    @Nullable
    public final Object invoke(@NotNull kotlinx.coroutines.o0 o0Var, @Nullable kotlin.coroutines.d<? super Choreographer> dVar) {
        return ((AndroidUiDispatcher$Companion$Main$2$dispatcher$1) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.d.e();
        if (this.label == 0) {
            w7.w.b(obj);
            return Choreographer.getInstance();
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
