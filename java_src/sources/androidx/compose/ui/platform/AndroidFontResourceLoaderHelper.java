package androidx.compose.ui.platform;

import android.content.Context;
import android.graphics.Typeface;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
final class AndroidFontResourceLoaderHelper {

    @NotNull
    public static final AndroidFontResourceLoaderHelper INSTANCE = new AndroidFontResourceLoaderHelper();

    @DoNotInline
    @RequiresApi
    @NotNull
    public final Typeface a(@NotNull Context context, int i10) {
        kotlin.jvm.internal.t.j(context, "context");
        Typeface font = context.getResources().getFont(i10);
        kotlin.jvm.internal.t.i(font, "context.resources.getFont(resourceId)");
        return font;
    }

    private AndroidFontResourceLoaderHelper() {
    }
}
