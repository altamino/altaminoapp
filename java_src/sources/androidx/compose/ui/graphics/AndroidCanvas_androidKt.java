package androidx.compose.ui.graphics;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class AndroidCanvas_androidKt {

    @NotNull
    private static final android.graphics.Canvas EmptyCanvas = new android.graphics.Canvas();

    @NotNull
    public static final Canvas a(@NotNull ImageBitmap image) {
        kotlin.jvm.internal.t.j(image, "image");
        AndroidCanvas androidCanvas = new AndroidCanvas();
        androidCanvas.z(new android.graphics.Canvas(AndroidImageBitmap_androidKt.b(image)));
        return androidCanvas;
    }

    @NotNull
    public static final android.graphics.Canvas c(@NotNull Canvas canvas) {
        kotlin.jvm.internal.t.j(canvas, "<this>");
        return ((AndroidCanvas) canvas).y();
    }
}
