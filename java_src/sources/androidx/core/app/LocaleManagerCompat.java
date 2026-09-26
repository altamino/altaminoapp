package androidx.core.app;

import android.app.LocaleManager;
import android.content.res.Configuration;
import android.os.LocaleList;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.core.os.LocaleListCompat;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class LocaleManagerCompat {

    @RequiresApi
    static class Api33Impl {
        @DoNotInline
        static LocaleList a(Object obj) {
            return ((LocaleManager) obj).getSystemLocales();
        }

        private Api33Impl() {
        }
    }

    @RequiresApi
    static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static String a(Locale locale) {
            return locale.toLanguageTag();
        }
    }

    @RequiresApi
    static class Api24Impl {
        private Api24Impl() {
        }

        @DoNotInline
        static LocaleListCompat a(Configuration configuration) {
            return LocaleListCompat.c(configuration.getLocales().toLanguageTags());
        }
    }

    private LocaleManagerCompat() {
    }
}
