package androidx.core.os;

import android.content.res.Configuration;
import android.os.Build;
import android.os.LocaleList;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes5.dex */
public final class ConfigurationCompat {

    @RequiresApi
    static class Api24Impl {
        private Api24Impl() {
        }

        @DoNotInline
        static LocaleList a(Configuration configuration) {
            return configuration.getLocales();
        }
    }

    @NonNull
    public static LocaleListCompat a(@NonNull Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? LocaleListCompat.f(Api24Impl.a(configuration)) : LocaleListCompat.a(configuration.locale);
    }

    private ConfigurationCompat() {
    }
}
