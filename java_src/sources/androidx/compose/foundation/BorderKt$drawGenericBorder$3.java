package androidx.compose.foundation;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import e8.l;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class BorderKt$drawGenericBorder$3 extends v implements l<ContentDrawScope, l0> {
    final /* synthetic */ p0<ImageBitmap> $cacheImageBitmap;
    final /* synthetic */ ColorFilter $colorFilter;
    final /* synthetic */ Rect $pathBounds;
    final /* synthetic */ long $pathBoundsSize;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BorderKt$drawGenericBorder$3(Rect rect, p0<ImageBitmap> p0Var, long j6, ColorFilter colorFilter) {
        super(1);
        this.$pathBounds = rect;
        this.$cacheImageBitmap = p0Var;
        this.$pathBoundsSize = j6;
        this.$colorFilter = colorFilter;
    }

    public final void a(@NotNull ContentDrawScope onDrawWithContent) {
        t.j(onDrawWithContent, "$this$onDrawWithContent");
        onDrawWithContent.Z();
        float fJ = this.$pathBounds.j();
        float fM = this.$pathBounds.m();
        p0<ImageBitmap> p0Var = this.$cacheImageBitmap;
        long j6 = this.$pathBoundsSize;
        ColorFilter colorFilter = this.$colorFilter;
        onDrawWithContent.T().d().b(fJ, fM);
        androidx.compose.ui.graphics.drawscope.a.f(onDrawWithContent, p0Var.element, 0L, j6, 0L, 0L, 0.0f, null, colorFilter, 0, 0, 890, null);
        onDrawWithContent.T().d().b(-fJ, -fM);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(ContentDrawScope contentDrawScope) {
        a(contentDrawScope);
        return l0.INSTANCE;
    }
}
