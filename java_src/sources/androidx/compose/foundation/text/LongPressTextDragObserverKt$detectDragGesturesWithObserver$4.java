package androidx.compose.foundation.text;

import e8.a;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class LongPressTextDragObserverKt$detectDragGesturesWithObserver$4 extends v implements a<l0> {
    final /* synthetic */ TextDragObserver $observer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongPressTextDragObserverKt$detectDragGesturesWithObserver$4(TextDragObserver textDragObserver) {
        super(0);
        this.$observer = textDragObserver;
    }

    @Override // e8.a
    public /* bridge */ /* synthetic */ l0 invoke() {
        invoke2();
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        this.$observer.onCancel();
    }
}
