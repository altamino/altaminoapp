package androidx.compose.ui.text;

import androidx.compose.foundation.c;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
@ExperimentalTextApi
public final class PlatformParagraphStyle {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final PlatformParagraphStyle Default = new PlatformParagraphStyle();
    private final boolean includeFontPadding;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final PlatformParagraphStyle a() {
            return PlatformParagraphStyle.Default;
        }
    }

    public PlatformParagraphStyle(boolean z6) {
        this.includeFontPadding = z6;
    }

    public final boolean b() {
        return this.includeFontPadding;
    }

    @NotNull
    public final PlatformParagraphStyle c(@Nullable PlatformParagraphStyle platformParagraphStyle) {
        return platformParagraphStyle == null ? this : platformParagraphStyle;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof PlatformParagraphStyle) && this.includeFontPadding == ((PlatformParagraphStyle) obj).includeFontPadding;
    }

    public /* synthetic */ PlatformParagraphStyle(boolean z6, int i10, k kVar) {
        this((i10 & 1) != 0 ? true : z6);
    }

    public int hashCode() {
        return c.a(this.includeFontPadding);
    }

    @NotNull
    public String toString() {
        return "PlatformParagraphStyle(includeFontPadding=" + this.includeFontPadding + ')';
    }

    public PlatformParagraphStyle() {
        this(true);
    }
}
