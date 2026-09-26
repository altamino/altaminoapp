package androidx.compose.ui.graphics;

import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
final class CanvasZHelper {

    @NotNull
    public static final CanvasZHelper INSTANCE = new CanvasZHelper();

    @DoNotInline
    public final void a(@NotNull android.graphics.Canvas canvas, boolean z6) {
        kotlin.jvm.internal.t.j(canvas, "canvas");
        if (z6) {
            canvas.enableZ();
        } else {
            canvas.disableZ();
        }
    }

    private CanvasZHelper() {
    }
}
