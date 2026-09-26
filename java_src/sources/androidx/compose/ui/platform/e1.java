package androidx.compose.ui.platform;

import androidx.compose.ui.geometry.Rect;

/* JADX INFO: loaded from: classes7.dex */
public final /* synthetic */ class e1 {
    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void a(TextToolbar textToolbar, Rect rect, e8.a aVar, e8.a aVar2, e8.a aVar3, e8.a aVar4, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showMenu");
        }
        textToolbar.a(rect, (i10 & 2) != 0 ? null : aVar, (i10 & 4) != 0 ? null : aVar2, (i10 & 8) != 0 ? null : aVar3, (i10 & 16) != 0 ? null : aVar4);
    }
}
