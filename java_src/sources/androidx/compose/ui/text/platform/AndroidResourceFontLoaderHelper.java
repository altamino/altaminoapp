package androidx.compose.ui.text.platform;

import android.content.Context;
import android.graphics.Typeface;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
final class AndroidResourceFontLoaderHelper {

    @NotNull
    public static final AndroidResourceFontLoaderHelper INSTANCE = new AndroidResourceFontLoaderHelper();

    @DoNotInline
    @RequiresApi
    @NotNull
    public final Typeface a(@NotNull Context context, int i10) {
        t.j(context, "context");
        Typeface font = context.getResources().getFont(i10);
        t.i(font, "context.resources.getFont(resourceId)");
        return font;
    }

    private AndroidResourceFontLoaderHelper() {
    }
}
