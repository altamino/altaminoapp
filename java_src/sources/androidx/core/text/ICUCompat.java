package androidx.core.text;

import android.icu.util.ULocale;
import android.os.Build;
import android.util.Log;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

/* JADX INFO: loaded from: classes9.dex */
public final class ICUCompat {
    private static final String TAG = "ICUCompat";
    private static Method sAddLikelySubtagsMethod;
    private static Method sGetScriptMethod;

    @RequiresApi
    static class Api24Impl {
        @DoNotInline
        static ULocale a(Object obj) {
            return ULocale.addLikelySubtags((ULocale) obj);
        }

        @DoNotInline
        static String c(Object obj) {
            return ((ULocale) obj).getScript();
        }

        private Api24Impl() {
        }

        @DoNotInline
        static ULocale b(Locale locale) {
            return ULocale.forLocale(locale);
        }
    }

    @RequiresApi
    static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static String a(Locale locale) {
            return locale.getScript();
        }
    }

    static {
        if (Build.VERSION.SDK_INT < 24) {
            try {
                sAddLikelySubtagsMethod = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
            } catch (Exception e) {
                throw new IllegalStateException(e);
            }
        }
    }

    @Nullable
    public static String a(@NonNull Locale locale) {
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.c(Api24Impl.a(Api24Impl.b(locale)));
        }
        try {
            return Api21Impl.a((Locale) sAddLikelySubtagsMethod.invoke(null, locale));
        } catch (IllegalAccessException e) {
            Log.w(TAG, e);
            return Api21Impl.a(locale);
        } catch (InvocationTargetException e2) {
            Log.w(TAG, e2);
            return Api21Impl.a(locale);
        }
    }

    private ICUCompat() {
    }
}
