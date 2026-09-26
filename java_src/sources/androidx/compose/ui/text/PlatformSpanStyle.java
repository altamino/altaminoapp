package androidx.compose.ui.text;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@ExperimentalTextApi
public final class PlatformSpanStyle {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final PlatformSpanStyle Default = new PlatformSpanStyle();

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final PlatformSpanStyle a() {
            return PlatformSpanStyle.Default;
        }
    }

    @NotNull
    public final PlatformSpanStyle b(@Nullable PlatformSpanStyle platformSpanStyle) {
        return this;
    }

    public boolean equals(@Nullable Object obj) {
        return this == obj || (obj instanceof PlatformSpanStyle);
    }

    @NotNull
    public String toString() {
        return "PlatformSpanStyle()";
    }

    public int hashCode() {
        return super.hashCode();
    }
}
