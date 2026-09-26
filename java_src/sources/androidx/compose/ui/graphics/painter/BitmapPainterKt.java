package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.graphics.FilterQuality;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSizeKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class BitmapPainterKt {
    @NotNull
    public static final BitmapPainter a(@NotNull ImageBitmap image, long j6, long j10, int i10) {
        t.j(image, "image");
        BitmapPainter bitmapPainter = new BitmapPainter(image, j6, j10, null);
        bitmapPainter.n(i10);
        return bitmapPainter;
    }

    public static /* synthetic */ BitmapPainter b(ImageBitmap imageBitmap, long j6, long j10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            j6 = IntOffset.Companion.a();
        }
        long j11 = j6;
        if ((i11 & 4) != 0) {
            j10 = IntSizeKt.a(imageBitmap.getWidth(), imageBitmap.getHeight());
        }
        long j12 = j10;
        if ((i11 & 8) != 0) {
            i10 = FilterQuality.Companion.a();
        }
        return a(imageBitmap, j11, j12, i10);
    }
}
