package androidx.compose.ui.window;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.annotation.VisibleForTesting;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@VisibleForTesting
public interface PopupLayoutHelper {
    void a(@NotNull WindowManager windowManager, @NotNull View view, @NotNull ViewGroup.LayoutParams layoutParams);

    void b(@NotNull View view, int i10, int i11);

    void c(@NotNull View view, @NotNull Rect rect);
}
