package androidx.compose.ui.text.font;

import android.content.Context;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi
final class ResourceFontHelper {

    @NotNull
    public static final ResourceFontHelper INSTANCE = new ResourceFontHelper();

    @DoNotInline
    @NotNull
    public final android.graphics.Typeface a(@NotNull Context context, @NotNull ResourceFont font) {
        t.j(context, "context");
        t.j(font, "font");
        android.graphics.Typeface font2 = context.getResources().getFont(font.d());
        t.i(font2, "context.resources.getFont(font.resId)");
        return font2;
    }

    private ResourceFontHelper() {
    }
}
