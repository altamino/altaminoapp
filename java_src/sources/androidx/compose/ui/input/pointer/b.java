package androidx.compose.ui.input.pointer;

/* JADX INFO: loaded from: classes9.dex */
public final /* synthetic */ class b {
    public static /* synthetic */ Object a(AwaitPointerEventScope awaitPointerEventScope, PointerEventPass pointerEventPass, kotlin.coroutines.d dVar, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: awaitPointerEvent");
        }
        if ((i10 & 1) != 0) {
            pointerEventPass = PointerEventPass.Main;
        }
        return awaitPointerEventScope.u0(pointerEventPass, dVar);
    }
}
