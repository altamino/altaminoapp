package androidx.compose.ui.input.pointer;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class SuspendingPointerInputFilter$awaitPointerEventScope$2$2 extends v implements l<Throwable, l0> {
    final /* synthetic */ SuspendingPointerInputFilter.PointerEventHandlerCoroutine<R> $handlerCoroutine;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SuspendingPointerInputFilter$awaitPointerEventScope$2$2(SuspendingPointerInputFilter.PointerEventHandlerCoroutine<R> pointerEventHandlerCoroutine) {
        super(1);
        this.$handlerCoroutine = pointerEventHandlerCoroutine;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Throwable th) {
        invoke2(th);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@Nullable Throwable th) {
        this.$handlerCoroutine.H(th);
    }
}
