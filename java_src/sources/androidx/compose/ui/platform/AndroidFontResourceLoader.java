package androidx.compose.ui.platform;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Build;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.ResourceFont;
import androidx.core.content.res.ResourcesCompat;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class AndroidFontResourceLoader implements Font.ResourceLoader {

    @NotNull
    private final Context context;

    public AndroidFontResourceLoader(@NotNull Context context) {
        kotlin.jvm.internal.t.j(context, "context");
        this.context = context;
    }

    @Override // androidx.compose.ui.text.font.Font.ResourceLoader
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public Typeface a(@NotNull Font font) {
        kotlin.jvm.internal.t.j(font, "font");
        if (!(font instanceof ResourceFont)) {
            throw new IllegalArgumentException("Unknown font type: " + font);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            return AndroidFontResourceLoaderHelper.INSTANCE.a(this.context, ((ResourceFont) font).d());
        }
        Typeface typefaceG = ResourcesCompat.g(this.context, ((ResourceFont) font).d());
        kotlin.jvm.internal.t.g(typefaceG);
        kotlin.jvm.internal.t.i(typefaceG, "{\n                    Re…esId)!!\n                }");
        return typefaceG;
    }
}
