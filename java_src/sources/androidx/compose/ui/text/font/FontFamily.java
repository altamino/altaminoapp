package androidx.compose.ui.text.font;

import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.State;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Immutable
public abstract class FontFamily {
    private final boolean canLoadSynchronously;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final SystemFontFamily Default = new DefaultFontFamily();

    @NotNull
    private static final GenericFontFamily SansSerif = new GenericFontFamily("sans-serif", "FontFamily.SansSerif");

    @NotNull
    private static final GenericFontFamily Serif = new GenericFontFamily("serif", "FontFamily.Serif");

    @NotNull
    private static final GenericFontFamily Monospace = new GenericFontFamily("monospace", "FontFamily.Monospace");

    @NotNull
    private static final GenericFontFamily Cursive = new GenericFontFamily("cursive", "FontFamily.Cursive");

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final GenericFontFamily a() {
            return FontFamily.Cursive;
        }

        @NotNull
        public final SystemFontFamily b() {
            return FontFamily.Default;
        }

        @NotNull
        public final GenericFontFamily c() {
            return FontFamily.Monospace;
        }

        @NotNull
        public final GenericFontFamily d() {
            return FontFamily.SansSerif;
        }

        @NotNull
        public final GenericFontFamily e() {
            return FontFamily.Serif;
        }
    }

    public interface Resolver {
        @NotNull
        State<Object> a(@Nullable FontFamily fontFamily, @NotNull FontWeight fontWeight, int i10, int i11);
    }

    public /* synthetic */ FontFamily(boolean z6, k kVar) {
        this(z6);
    }

    private FontFamily(boolean z6) {
        this.canLoadSynchronously = z6;
    }
}
