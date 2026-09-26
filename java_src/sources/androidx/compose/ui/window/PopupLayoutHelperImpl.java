package androidx.compose.ui.window;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
class PopupLayoutHelperImpl implements PopupLayoutHelper {
    @Override // androidx.compose.ui.window.PopupLayoutHelper
    public void b(@NotNull View composeView, int i10, int i11) {
        t.j(composeView, "composeView");
    }

    @Override // androidx.compose.ui.window.PopupLayoutHelper
    public void a(@NotNull WindowManager windowManager, @NotNull View popupView, @NotNull ViewGroup.LayoutParams params) {
        t.j(windowManager, "windowManager");
        t.j(popupView, "popupView");
        t.j(params, "params");
        windowManager.updateViewLayout(popupView, params);
    }

    @Override // androidx.compose.ui.window.PopupLayoutHelper
    public void c(@NotNull View composeView, @NotNull Rect outRect) {
        t.j(composeView, "composeView");
        t.j(outRect, "outRect");
        composeView.getWindowVisibleDisplayFrame(outRect);
    }
}
