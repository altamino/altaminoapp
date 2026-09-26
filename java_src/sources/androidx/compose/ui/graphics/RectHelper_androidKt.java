package androidx.compose.ui.graphics;

import android.graphics.Rect;
import android.graphics.RectF;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class RectHelper_androidKt {
    @NotNull
    public static final Rect a(@NotNull androidx.compose.ui.geometry.Rect rect) {
        kotlin.jvm.internal.t.j(rect, "<this>");
        return new Rect((int) rect.j(), (int) rect.m(), (int) rect.k(), (int) rect.e());
    }

    @NotNull
    public static final RectF b(@NotNull androidx.compose.ui.geometry.Rect rect) {
        kotlin.jvm.internal.t.j(rect, "<this>");
        return new RectF(rect.j(), rect.m(), rect.k(), rect.e());
    }

    @NotNull
    public static final androidx.compose.ui.geometry.Rect c(@NotNull Rect rect) {
        kotlin.jvm.internal.t.j(rect, "<this>");
        return new androidx.compose.ui.geometry.Rect(rect.left, rect.top, rect.right, rect.bottom);
    }
}
