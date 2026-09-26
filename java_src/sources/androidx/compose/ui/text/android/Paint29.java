package androidx.compose.ui.text.android;

import android.graphics.Paint;
import android.graphics.Rect;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
final class Paint29 {

    @NotNull
    public static final Paint29 INSTANCE = new Paint29();

    @DoNotInline
    public static final void a(@NotNull Paint paint, @NotNull CharSequence text, int i10, int i11, @NotNull Rect rect) {
        t.j(paint, "paint");
        t.j(text, "text");
        t.j(rect, "rect");
        paint.getTextBounds(text, i10, i11, rect);
    }

    private Paint29() {
    }
}
