package androidx.compose.ui.text.font;

import android.content.Context;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class FontFamilyResolver_androidKt {
    @NotNull
    public static final FontFamily.Resolver a(@NotNull Context context) {
        t.j(context, "context");
        return new FontFamilyResolverImpl(new AndroidFontLoader(context), AndroidFontResolveInterceptor_androidKt.a(context), null, null, null, 28, null);
    }
}
