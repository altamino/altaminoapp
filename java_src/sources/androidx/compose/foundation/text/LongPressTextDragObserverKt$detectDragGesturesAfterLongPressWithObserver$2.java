package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Offset;
import e8.l;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class LongPressTextDragObserverKt$detectDragGesturesAfterLongPressWithObserver$2 extends v implements l<Offset, l0> {
    final /* synthetic */ TextDragObserver $observer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongPressTextDragObserverKt$detectDragGesturesAfterLongPressWithObserver$2(TextDragObserver textDragObserver) {
        super(1);
        this.$observer = textDragObserver;
    }

    public final void a(long j6) {
        this.$observer.c(j6);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Offset offset) {
        a(offset.u());
        return l0.INSTANCE;
    }
}
