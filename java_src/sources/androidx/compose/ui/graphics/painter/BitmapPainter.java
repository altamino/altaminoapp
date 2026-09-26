package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.FilterQuality;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.a;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import g8.c;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class BitmapPainter extends Painter {
    private float alpha;

    @Nullable
    private ColorFilter colorFilter;
    private int filterQuality;

    @NotNull
    private final ImageBitmap image;
    private final long size;
    private final long srcOffset;
    private final long srcSize;

    public /* synthetic */ BitmapPainter(ImageBitmap imageBitmap, long j6, long j10, k kVar) {
        this(imageBitmap, j6, j10);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean a(float f) {
        this.alpha = f;
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean e(@Nullable ColorFilter colorFilter) {
        this.colorFilter = colorFilter;
        return true;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BitmapPainter)) {
            return false;
        }
        BitmapPainter bitmapPainter = (BitmapPainter) obj;
        return t.e(this.image, bitmapPainter.image) && IntOffset.i(this.srcOffset, bitmapPainter.srcOffset) && IntSize.e(this.srcSize, bitmapPainter.srcSize) && FilterQuality.e(this.filterQuality, bitmapPainter.filterQuality);
    }

    public final void n(int i10) {
        this.filterQuality = i10;
    }

    public /* synthetic */ BitmapPainter(ImageBitmap imageBitmap, long j6, long j10, int i10, k kVar) {
        this(imageBitmap, (i10 & 2) != 0 ? IntOffset.Companion.a() : j6, (i10 & 4) != 0 ? IntSizeKt.a(imageBitmap.getWidth(), imageBitmap.getHeight()) : j10, null);
    }

    public int hashCode() {
        return (((((this.image.hashCode() * 31) + IntOffset.l(this.srcOffset)) * 31) + IntSize.h(this.srcSize)) * 31) + FilterQuality.f(this.filterQuality);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public long k() {
        return IntSizeKt.b(this.size);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected void m(@NotNull DrawScope drawScope) {
        t.j(drawScope, "<this>");
        a.f(drawScope, this.image, this.srcOffset, this.srcSize, 0L, IntSizeKt.a(c.c(Size.i(drawScope.c())), c.c(Size.g(drawScope.c()))), this.alpha, null, this.colorFilter, 0, this.filterQuality, 328, null);
    }

    @NotNull
    public String toString() {
        return "BitmapPainter(image=" + this.image + ", srcOffset=" + ((Object) IntOffset.m(this.srcOffset)) + ", srcSize=" + ((Object) IntSize.i(this.srcSize)) + ", filterQuality=" + ((Object) FilterQuality.g(this.filterQuality)) + ')';
    }

    private final long o(long j6, long j10) {
        if (IntOffset.j(j6) >= 0 && IntOffset.k(j6) >= 0 && IntSize.g(j10) >= 0 && IntSize.f(j10) >= 0 && IntSize.g(j10) <= this.image.getWidth() && IntSize.f(j10) <= this.image.getHeight()) {
            return j10;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }

    private BitmapPainter(ImageBitmap imageBitmap, long j6, long j10) {
        this.image = imageBitmap;
        this.srcOffset = j6;
        this.srcSize = j10;
        this.filterQuality = FilterQuality.Companion.a();
        this.size = o(j6, j10);
        this.alpha = 1.0f;
    }
}
