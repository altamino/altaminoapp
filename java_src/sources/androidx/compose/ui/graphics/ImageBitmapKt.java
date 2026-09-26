package androidx.compose.ui.graphics;

import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class ImageBitmapKt {
    @NotNull
    public static final ImageBitmap a(int i10, int i11, int i12, boolean z6, @NotNull ColorSpace colorSpace) {
        kotlin.jvm.internal.t.j(colorSpace, "colorSpace");
        return AndroidImageBitmap_androidKt.a(i10, i11, i12, z6, colorSpace);
    }

    public static /* synthetic */ ImageBitmap b(int i10, int i11, int i12, boolean z6, ColorSpace colorSpace, int i13, Object obj) {
        if ((i13 & 4) != 0) {
            i12 = ImageBitmapConfig.Companion.b();
        }
        if ((i13 & 8) != 0) {
            z6 = true;
        }
        if ((i13 & 16) != 0) {
            colorSpace = ColorSpaces.INSTANCE.s();
        }
        return a(i10, i11, i12, z6, colorSpace);
    }
}
