package androidx.compose.ui.text.intl;

import androidx.compose.runtime.Immutable;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
@Immutable
public final class Locale {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final PlatformLocale platformLocale;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Locale a() {
            return new Locale(PlatformLocaleKt.a().a().get(0));
        }
    }

    public Locale(@NotNull PlatformLocale platformLocale) {
        t.j(platformLocale, "platformLocale");
        this.platformLocale = platformLocale;
    }

    @NotNull
    public final PlatformLocale a() {
        return this.platformLocale;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null || !(obj instanceof Locale)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return t.e(b(), ((Locale) obj).b());
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Locale(@NotNull String languageTag) {
        this(PlatformLocaleKt.a().b(languageTag));
        t.j(languageTag, "languageTag");
    }

    @NotNull
    public final String b() {
        return this.platformLocale.a();
    }

    public int hashCode() {
        return b().hashCode();
    }

    @NotNull
    public String toString() {
        return b();
    }
}
