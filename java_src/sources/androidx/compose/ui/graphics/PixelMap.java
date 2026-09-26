package androidx.compose.ui.graphics;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class PixelMap {

    @NotNull
    private final int[] buffer;
    private final int bufferOffset;
    private final int height;
    private final int stride;
    private final int width;

    public PixelMap(@NotNull int[] buffer, int i10, int i11, int i12, int i13) {
        kotlin.jvm.internal.t.j(buffer, "buffer");
        this.buffer = buffer;
        this.width = i10;
        this.height = i11;
        this.bufferOffset = i12;
        this.stride = i13;
    }
}
