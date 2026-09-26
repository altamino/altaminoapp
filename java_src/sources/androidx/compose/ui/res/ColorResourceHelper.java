package androidx.compose.ui.res;

import android.content.Context;
import androidx.annotation.ColorRes;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
final class ColorResourceHelper {

    @NotNull
    public static final ColorResourceHelper INSTANCE = new ColorResourceHelper();

    @DoNotInline
    public final long a(@NotNull Context context, @ColorRes int i10) {
        t.j(context, "context");
        return ColorKt.b(context.getResources().getColor(i10, context.getTheme()));
    }

    private ColorResourceHelper() {
    }
}
