package androidx.core.util;

import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.Objects;

/* JADX INFO: loaded from: classes8.dex */
public class ObjectsCompat {

    @RequiresApi
    static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        static boolean a(Object obj, Object obj2) {
            return Objects.equals(obj, obj2);
        }

        @DoNotInline
        static int b(Object... objArr) {
            return Objects.hash(objArr);
        }
    }

    @NonNull
    public static <T> T d(@Nullable T t5, @NonNull String str) {
        if (t5 != null) {
            return t5;
        }
        throw new NullPointerException(str);
    }

    @Nullable
    public static String e(@Nullable Object obj, @Nullable String str) {
        return obj != null ? obj.toString() : str;
    }

    private ObjectsCompat() {
    }

    public static boolean a(@Nullable Object obj, @Nullable Object obj2) {
        return Api19Impl.a(obj, obj2);
    }

    public static int b(@Nullable Object... objArr) {
        return Api19Impl.b(objArr);
    }

    @NonNull
    public static <T> T c(@Nullable T t5) {
        t5.getClass();
        return t5;
    }
}
