package androidx.compose.ui.focus;

/* JADX INFO: loaded from: classes8.dex */
public final /* synthetic */ class a {
    public static /* synthetic */ void a(FocusManager focusManager, boolean z6, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clearFocus");
        }
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        focusManager.b(z6);
    }
}
