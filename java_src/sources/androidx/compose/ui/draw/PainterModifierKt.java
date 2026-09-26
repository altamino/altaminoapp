package androidx.compose.ui.draw;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class PainterModifierKt {
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull Painter painter, boolean z6, @NotNull Alignment alignment, @NotNull ContentScale contentScale, float f, @Nullable ColorFilter colorFilter) {
        t.j(modifier, "<this>");
        t.j(painter, "painter");
        t.j(alignment, "alignment");
        t.j(contentScale, "contentScale");
        return modifier.B(new PainterModifier(painter, z6, alignment, contentScale, f, colorFilter, InspectableValueKt.c() ? new PainterModifierKt$paint$$inlined$debugInspectorInfo$1(painter, z6, alignment, contentScale, f, colorFilter) : InspectableValueKt.a()));
    }

    public static /* synthetic */ Modifier b(Modifier modifier, Painter painter, boolean z6, Alignment alignment, ContentScale contentScale, float f, ColorFilter colorFilter, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = true;
        }
        boolean z10 = z6;
        if ((i10 & 4) != 0) {
            alignment = Alignment.Companion.e();
        }
        Alignment alignment2 = alignment;
        if ((i10 & 8) != 0) {
            contentScale = ContentScale.Companion.c();
        }
        ContentScale contentScale2 = contentScale;
        if ((i10 & 16) != 0) {
            f = 1.0f;
        }
        float f6 = f;
        if ((i10 & 32) != 0) {
            colorFilter = null;
        }
        return a(modifier, painter, z10, alignment2, contentScale2, f6, colorFilter);
    }
}
