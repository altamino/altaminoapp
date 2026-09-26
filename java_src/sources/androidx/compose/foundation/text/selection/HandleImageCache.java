package androidx.compose.foundation.text.selection;

import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class HandleImageCache {

    @NotNull
    public static final HandleImageCache INSTANCE = new HandleImageCache();

    @Nullable
    private static Canvas canvas;

    @Nullable
    private static CanvasDrawScope canvasDrawScope;

    @Nullable
    private static ImageBitmap imageBitmap;

    @Nullable
    public final Canvas a() {
        return canvas;
    }

    @Nullable
    public final CanvasDrawScope b() {
        return canvasDrawScope;
    }

    @Nullable
    public final ImageBitmap c() {
        return imageBitmap;
    }

    public final void d(@Nullable Canvas canvas2) {
        canvas = canvas2;
    }

    public final void e(@Nullable CanvasDrawScope canvasDrawScope2) {
        canvasDrawScope = canvasDrawScope2;
    }

    public final void f(@Nullable ImageBitmap imageBitmap2) {
        imageBitmap = imageBitmap2;
    }

    private HandleImageCache() {
    }
}
