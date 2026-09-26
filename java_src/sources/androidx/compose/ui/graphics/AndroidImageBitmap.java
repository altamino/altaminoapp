package androidx.compose.ui.graphics;

import android.graphics.Bitmap;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class AndroidImageBitmap implements ImageBitmap {

    @NotNull
    private final Bitmap bitmap;

    @NotNull
    public final Bitmap c() {
        return this.bitmap;
    }

    public AndroidImageBitmap(@NotNull Bitmap bitmap) {
        kotlin.jvm.internal.t.j(bitmap, "bitmap");
        this.bitmap = bitmap;
    }

    @Override // androidx.compose.ui.graphics.ImageBitmap
    public void a() {
        this.bitmap.prepareToDraw();
    }

    @Override // androidx.compose.ui.graphics.ImageBitmap
    public int b() {
        Bitmap.Config config = this.bitmap.getConfig();
        kotlin.jvm.internal.t.i(config, "bitmap.config");
        return AndroidImageBitmap_androidKt.e(config);
    }

    @Override // androidx.compose.ui.graphics.ImageBitmap
    public int getHeight() {
        return this.bitmap.getHeight();
    }

    @Override // androidx.compose.ui.graphics.ImageBitmap
    public int getWidth() {
        return this.bitmap.getWidth();
    }
}
