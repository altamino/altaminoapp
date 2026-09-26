package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.ui.input.pointer.PointerInputScope;
import kotlin.coroutines.d;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class LongPressTextDragObserverKt {
    @Nullable
    public static final Object c(@NotNull PointerInputScope pointerInputScope, @NotNull TextDragObserver textDragObserver, @NotNull d<? super l0> dVar) {
        Object objF = p0.f(new LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2(pointerInputScope, textDragObserver, null), dVar);
        return objF == kotlin.coroutines.intrinsics.d.e() ? objF : l0.INSTANCE;
    }

    @Nullable
    public static final Object d(@NotNull PointerInputScope pointerInputScope, @NotNull TextDragObserver textDragObserver, @NotNull d<? super l0> dVar) {
        Object objM = DragGestureDetectorKt.m(pointerInputScope, new LongPressTextDragObserverKt$detectDragGesturesAfterLongPressWithObserver$2(textDragObserver), new LongPressTextDragObserverKt$detectDragGesturesAfterLongPressWithObserver$3(textDragObserver), new LongPressTextDragObserverKt$detectDragGesturesAfterLongPressWithObserver$4(textDragObserver), new LongPressTextDragObserverKt$detectDragGesturesAfterLongPressWithObserver$5(textDragObserver), dVar);
        return objM == kotlin.coroutines.intrinsics.d.e() ? objM : l0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object e(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, d<? super l0> dVar) {
        Object objL = DragGestureDetectorKt.l(pointerInputScope, new LongPressTextDragObserverKt$detectDragGesturesWithObserver$2(textDragObserver), new LongPressTextDragObserverKt$detectDragGesturesWithObserver$3(textDragObserver), new LongPressTextDragObserverKt$detectDragGesturesWithObserver$4(textDragObserver), new LongPressTextDragObserverKt$detectDragGesturesWithObserver$5(textDragObserver), dVar);
        return objL == kotlin.coroutines.intrinsics.d.e() ? objL : l0.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object f(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, d<? super l0> dVar) {
        Object objD = ForEachGestureKt.d(pointerInputScope, new LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2(textDragObserver, null), dVar);
        return objD == kotlin.coroutines.intrinsics.d.e() ? objD : l0.INSTANCE;
    }
}
