package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import e8.p;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.coroutines.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
@f(c = "androidx.compose.foundation.gestures.ForEachGestureKt$awaitAllPointersUp$2", f = "ForEachGesture.kt", l = {70}, m = "invokeSuspend")
final class ForEachGestureKt$awaitAllPointersUp$2 extends k implements p<AwaitPointerEventScope, d<? super l0>, Object> {
    private /* synthetic */ Object L$0;
    int label;

    ForEachGestureKt$awaitAllPointersUp$2(d<? super ForEachGestureKt$awaitAllPointersUp$2> dVar) {
        super(2, dVar);
    }

    @Override // kotlin.coroutines.jvm.internal.a
    @NotNull
    public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
        ForEachGestureKt$awaitAllPointersUp$2 forEachGestureKt$awaitAllPointersUp$2 = new ForEachGestureKt$awaitAllPointersUp$2(dVar);
        forEachGestureKt$awaitAllPointersUp$2.L$0 = obj;
        return forEachGestureKt$awaitAllPointersUp$2;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull AwaitPointerEventScope awaitPointerEventScope, @Nullable d<? super l0> dVar) {
        return ((ForEachGestureKt$awaitAllPointersUp$2) create(awaitPointerEventScope, dVar)).invokeSuspend(l0.INSTANCE);
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
            AwaitPointerEventScope awaitPointerEventScope = (AwaitPointerEventScope) this.L$0;
            this.label = 1;
            if (ForEachGestureKt.b(awaitPointerEventScope, this) == objE) {
                return objE;
            }
        }
        return l0.INSTANCE;
    }
}
