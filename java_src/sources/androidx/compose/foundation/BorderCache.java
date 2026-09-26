package androidx.compose.foundation;

import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class BorderCache {

    @Nullable
    private Path borderPath;

    @Nullable
    private Canvas canvas;

    @Nullable
    private CanvasDrawScope canvasDrawScope;

    @Nullable
    private ImageBitmap imageBitmap;

    public BorderCache() {
        this(null, null, null, null, 15, null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BorderCache)) {
            return false;
        }
        BorderCache borderCache = (BorderCache) obj;
        return t.e(this.imageBitmap, borderCache.imageBitmap) && t.e(this.canvas, borderCache.canvas) && t.e(this.canvasDrawScope, borderCache.canvasDrawScope) && t.e(this.borderPath, borderCache.borderPath);
    }

    public int hashCode() {
        ImageBitmap imageBitmap = this.imageBitmap;
        int iHashCode = (imageBitmap == null ? 0 : imageBitmap.hashCode()) * 31;
        Canvas canvas = this.canvas;
        int iHashCode2 = (iHashCode + (canvas == null ? 0 : canvas.hashCode())) * 31;
        CanvasDrawScope canvasDrawScope = this.canvasDrawScope;
        int iHashCode3 = (iHashCode2 + (canvasDrawScope == null ? 0 : canvasDrawScope.hashCode())) * 31;
        Path path = this.borderPath;
        return iHashCode3 + (path != null ? path.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "BorderCache(imageBitmap=" + this.imageBitmap + ", canvas=" + this.canvas + ", canvasDrawScope=" + this.canvasDrawScope + ", borderPath=" + this.borderPath + ')';
    }

    public BorderCache(@Nullable ImageBitmap imageBitmap, @Nullable Canvas canvas, @Nullable CanvasDrawScope canvasDrawScope, @Nullable Path path) {
        this.imageBitmap = imageBitmap;
        this.canvas = canvas;
        this.canvasDrawScope = canvasDrawScope;
        this.borderPath = path;
    }

    @NotNull
    public final Path g() {
        Path path = this.borderPath;
        if (path != null) {
            return path;
        }
        Path pathA = AndroidPath_androidKt.a();
        this.borderPath = pathA;
        return pathA;
    }

    public /* synthetic */ BorderCache(ImageBitmap imageBitmap, Canvas canvas, CanvasDrawScope canvasDrawScope, Path path, int i10, k kVar) {
        this((i10 & 1) != 0 ? null : imageBitmap, (i10 & 2) != 0 ? null : canvas, (i10 & 4) != 0 ? null : canvasDrawScope, (i10 & 8) != 0 ? null : path);
    }
}
