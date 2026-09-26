package androidx.compose.ui.text.style;

import androidx.compose.ui.util.MathHelpersKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class TextGeometricTransformKt {
    @NotNull
    public static final TextGeometricTransform a(@NotNull TextGeometricTransform start, @NotNull TextGeometricTransform stop, float f) {
        t.j(start, "start");
        t.j(stop, "stop");
        return new TextGeometricTransform(MathHelpersKt.a(start.b(), stop.b(), f), MathHelpersKt.a(start.c(), stop.c(), f));
    }
}
