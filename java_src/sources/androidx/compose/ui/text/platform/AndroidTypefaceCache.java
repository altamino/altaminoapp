package androidx.compose.ui.text.platform;

import android.content.Context;
import android.graphics.Typeface;
import android.os.Build;
import android.util.TypedValue;
import androidx.collection.LruCache;
import androidx.compose.ui.text.font.AndroidFont;
import androidx.compose.ui.text.font.AndroidPreloadedFont;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.ResourceFont;
import androidx.core.content.res.ResourcesCompat;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidTypefaceCache {

    @NotNull
    public static final AndroidTypefaceCache INSTANCE = new AndroidTypefaceCache();

    @NotNull
    private static final LruCache<String, Typeface> cache = new LruCache<>(16);

    @Nullable
    public final String a(@NotNull Context context, @NotNull Font font) {
        t.j(context, "context");
        t.j(font, "font");
        if (!(font instanceof ResourceFont)) {
            if (font instanceof AndroidPreloadedFont) {
                return ((AndroidPreloadedFont) font).e();
            }
            throw new IllegalArgumentException("Unknown font type: " + font);
        }
        TypedValue typedValue = new TypedValue();
        context.getResources().getValue(((ResourceFont) font).d(), typedValue, true);
        StringBuilder sb = new StringBuilder();
        sb.append("res:");
        CharSequence charSequence = typedValue.string;
        String string = charSequence != null ? charSequence.toString() : null;
        t.g(string);
        sb.append(string);
        return sb.toString();
    }

    @NotNull
    public final Typeface b(@NotNull Context context, @NotNull Font font) {
        Typeface typefaceA;
        Typeface it;
        t.j(context, "context");
        t.j(font, "font");
        String strA = a(context, font);
        if (strA != null && (it = cache.get(strA)) != null) {
            t.i(it, "it");
            return it;
        }
        if (font instanceof ResourceFont) {
            if (Build.VERSION.SDK_INT >= 26) {
                typefaceA = AndroidResourceFontLoaderHelper.INSTANCE.a(context, ((ResourceFont) font).d());
            } else {
                typefaceA = ResourcesCompat.g(context, ((ResourceFont) font).d());
                t.g(typefaceA);
                t.i(typefaceA, "{\n                    Re…esId)!!\n                }");
            }
        } else {
            if (!(font instanceof AndroidFont)) {
                throw new IllegalArgumentException("Unknown font type: " + font);
            }
            AndroidFont androidFont = (AndroidFont) font;
            typefaceA = androidFont.d().a(context, androidFont);
        }
        if (typefaceA != null) {
            if (strA != null) {
                cache.put(strA, typefaceA);
            }
            return typefaceA;
        }
        throw new IllegalArgumentException("Unable to load font " + font);
    }

    private AndroidTypefaceCache() {
    }
}
