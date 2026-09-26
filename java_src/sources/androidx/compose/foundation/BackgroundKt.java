package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.platform.InspectableValueKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class BackgroundKt {
    @NotNull
    public static final Modifier a(@NotNull Modifier background, long j6, @NotNull Shape shape) {
        t.j(background, "$this$background");
        t.j(shape, "shape");
        return background.B(new Background(Color.h(j6), null, 0.0f, shape, InspectableValueKt.c() ? new BackgroundKt$backgroundbw27NRU$$inlined$debugInspectorInfo$1(j6, shape) : InspectableValueKt.a(), 6, null));
    }

    public static /* synthetic */ Modifier b(Modifier modifier, long j6, Shape shape, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            shape = RectangleShapeKt.a();
        }
        return a(modifier, j6, shape);
    }
}
