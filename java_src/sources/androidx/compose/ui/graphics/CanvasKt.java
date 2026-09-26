package androidx.compose.ui.graphics;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class CanvasKt {
    @NotNull
    public static final Canvas a(@NotNull ImageBitmap image) {
        kotlin.jvm.internal.t.j(image, "image");
        return AndroidCanvas_androidKt.a(image);
    }
}
