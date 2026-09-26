package androidx.compose.ui.text;

import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontKt;
import androidx.compose.ui.text.font.d;
import androidx.compose.ui.text.platform.Synchronization_jvmKt;
import androidx.compose.ui.text.platform.SynchronizedObject;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class DeprecatedBridgeFontResourceLoader implements Font.ResourceLoader {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static Map<FontFamily.Resolver, Font.ResourceLoader> cache = new LinkedHashMap();

    @NotNull
    private static final SynchronizedObject lock = Synchronization_jvmKt.a();

    @NotNull
    private final FontFamily.Resolver fontFamilyResolver;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public /* synthetic */ DeprecatedBridgeFontResourceLoader(FontFamily.Resolver resolver, k kVar) {
        this(resolver);
    }

    private DeprecatedBridgeFontResourceLoader(FontFamily.Resolver resolver) {
        this.fontFamilyResolver = resolver;
    }

    @Override // androidx.compose.ui.text.font.Font.ResourceLoader
    @NotNull
    public Object a(@NotNull Font font) {
        t.j(font, "font");
        return d.a(this.fontFamilyResolver, FontKt.c(font), font.b(), font.c(), 0, 8, null).getValue();
    }
}
