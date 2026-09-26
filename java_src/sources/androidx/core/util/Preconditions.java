package androidx.core.util;

import android.text.TextUtils;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.Locale;

/* JADX INFO: loaded from: classes7.dex */
@RestrictTo
public final class Preconditions {
    public static int d(int i10, int i11, int i12, @NonNull String str) {
        if (i10 < i11) {
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", str, Integer.valueOf(i11), Integer.valueOf(i12)));
        }
        if (i10 <= i12) {
            return i10;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", str, Integer.valueOf(i11), Integer.valueOf(i12)));
    }

    public static void k(boolean z6) {
        l(z6, null);
    }

    public static void a(boolean z6) {
        if (!z6) {
            throw new IllegalArgumentException();
        }
    }

    public static void b(boolean z6, @NonNull Object obj) {
        if (!z6) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static long e(long j6, long j10, long j11, @NonNull String str) {
        if (j6 < j10) {
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", str, Long.valueOf(j10), Long.valueOf(j11)));
        }
        if (j6 <= j11) {
            return j6;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", str, Long.valueOf(j10), Long.valueOf(j11)));
    }

    @IntRange
    public static int f(int i10) {
        if (i10 >= 0) {
            return i10;
        }
        throw new IllegalArgumentException();
    }

    @IntRange
    public static int g(int i10, @Nullable String str) {
        if (i10 >= 0) {
            return i10;
        }
        throw new IllegalArgumentException(str);
    }

    public static int h(int i10, int i11) {
        if ((i10 & i11) == i10) {
            return i10;
        }
        throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i10) + ", but only 0x" + Integer.toHexString(i11) + " are allowed");
    }

    @NonNull
    public static <T> T j(@Nullable T t5, @NonNull Object obj) {
        if (t5 != null) {
            return t5;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void l(boolean z6, @Nullable String str) {
        if (!z6) {
            throw new IllegalStateException(str);
        }
    }

    private Preconditions() {
    }

    public static float c(float f, @NonNull String str) {
        if (!Float.isNaN(f)) {
            if (!Float.isInfinite(f)) {
                return f;
            }
            throw new IllegalArgumentException(str + " must not be infinite");
        }
        throw new IllegalArgumentException(str + " must not be NaN");
    }

    @NonNull
    public static <T> T i(@Nullable T t5) {
        t5.getClass();
        return t5;
    }

    @NonNull
    public static <T extends CharSequence> T m(@Nullable T t5, @NonNull Object obj) {
        if (!TextUtils.isEmpty(t5)) {
            return t5;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }
}
