package androidx.core.os;

import android.os.Build;
import androidx.annotation.ChecksSdkIntAtLeast;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresOptIn;
import androidx.annotation.RestrictTo;
import java.util.Locale;

/* JADX INFO: loaded from: classes8.dex */
public class BuildCompat {

    @RequiresOptIn
    public @interface PrereleaseSdkCheck {
    }

    @ChecksSdkIntAtLeast
    @Deprecated
    public static boolean b() {
        return Build.VERSION.SDK_INT >= 30;
    }

    @RestrictTo
    protected static boolean a(@NonNull String str, @NonNull String str2) {
        if ("REL".equals(str2)) {
            return false;
        }
        Locale locale = Locale.ROOT;
        return str2.toUpperCase(locale).compareTo(str.toUpperCase(locale)) >= 0;
    }

    @ChecksSdkIntAtLeast
    @PrereleaseSdkCheck
    public static boolean c() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 >= 33 || (i10 >= 32 && a("Tiramisu", Build.VERSION.CODENAME));
    }

    @ChecksSdkIntAtLeast
    @PrereleaseSdkCheck
    public static boolean d() {
        return Build.VERSION.SDK_INT >= 33 && a("UpsideDownCake", Build.VERSION.CODENAME);
    }

    private BuildCompat() {
    }
}
