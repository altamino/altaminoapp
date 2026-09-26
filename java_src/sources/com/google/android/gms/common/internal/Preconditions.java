package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;

/* JADX INFO: loaded from: classes11.dex */
@KeepForSdk
public final class Preconditions {
    @KeepForSdk
    public static void checkArgument(boolean z6) {
        if (!z6) {
            throw new IllegalArgumentException();
        }
    }

    @KeepForSdk
    public static double checkArgumentInRange(double d, double d2, double d6, @NonNull String str) {
        if (d < d2) {
            throw new IllegalArgumentException(zza("%s is out of range of [%f, %f] (too low)", str, Double.valueOf(d2), Double.valueOf(d6)));
        }
        if (d <= d6) {
            return d;
        }
        throw new IllegalArgumentException(zza("%s is out of range of [%f, %f] (too high)", str, Double.valueOf(d2), Double.valueOf(d6)));
    }

    @KeepForSdk
    public static void checkHandlerThread(@NonNull Handler handler) {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != handler.getLooper()) {
            String name = looperMyLooper != null ? looperMyLooper.getThread().getName() : "null current looper";
            throw new IllegalStateException("Must be called on " + handler.getLooper().getThread().getName() + " thread, but got " + name + ".");
        }
    }

    @KeepForSdk
    public static void checkMainThread() {
        checkMainThread("Must be called on the main application thread");
    }

    @NonNull
    @KeepForSdk
    public static String checkNotEmpty(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Given String is empty or null");
        }
        return str;
    }

    @KeepForSdk
    public static void checkNotGoogleApiHandlerThread() {
        checkNotGoogleApiHandlerThread("Must not be called on GoogleApiHandler thread.");
    }

    @KeepForSdk
    public static void checkNotMainThread() {
        checkNotMainThread("Must not be called on the main application thread");
    }

    @NonNull
    @KeepForSdk
    public static <T> T checkNotNull(@Nullable T t5) {
        if (t5 != null) {
            return t5;
        }
        throw new NullPointerException("null reference");
    }

    @KeepForSdk
    public static int checkNotZero(int i10) {
        if (i10 != 0) {
            return i10;
        }
        throw new IllegalArgumentException("Given Integer is zero");
    }

    @KeepForSdk
    public static void checkState(boolean z6) {
        if (!z6) {
            throw new IllegalStateException();
        }
    }

    @KeepForSdk
    public static void checkArgument(boolean z6, @NonNull Object obj) {
        if (!z6) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    @KeepForSdk
    public static void checkMainThread(@NonNull String str) {
        if (!com.google.android.gms.common.util.zzb.zza()) {
            throw new IllegalStateException(str);
        }
    }

    @KeepForSdk
    public static void checkNotGoogleApiHandlerThread(@NonNull String str) {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null) {
            String name = looperMyLooper.getThread().getName();
            if (name == "GoogleApiHandler" || (name != null && name.equals("GoogleApiHandler"))) {
                throw new IllegalStateException(str);
            }
        }
    }

    @KeepForSdk
    public static void checkNotMainThread(@NonNull String str) {
        if (com.google.android.gms.common.util.zzb.zza()) {
            throw new IllegalStateException(str);
        }
    }

    @NonNull
    @KeepForSdk
    public static <T> T checkNotNull(@NonNull T t5, @NonNull Object obj) {
        if (t5 != null) {
            return t5;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    @KeepForSdk
    public static int checkNotZero(int i10, @NonNull Object obj) {
        if (i10 != 0) {
            return i10;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    @KeepForSdk
    public static void checkState(boolean z6, @NonNull Object obj) {
        if (!z6) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    private Preconditions() {
        throw new AssertionError("Uninstantiable");
    }

    @KeepForSdk
    public static void checkArgument(boolean z6, @NonNull String str, @NonNull Object... objArr) {
        if (!z6) {
            throw new IllegalArgumentException(String.format(str, objArr));
        }
    }

    @NonNull
    @KeepForSdk
    public static String checkNotEmpty(@Nullable String str, @NonNull Object obj) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
        return str;
    }

    @KeepForSdk
    public static long checkNotZero(long j6) {
        if (j6 != 0) {
            return j6;
        }
        throw new IllegalArgumentException("Given Long is zero");
    }

    @KeepForSdk
    public static void checkState(boolean z6, @NonNull String str, @NonNull Object... objArr) {
        if (!z6) {
            throw new IllegalStateException(String.format(str, objArr));
        }
    }

    static String zza(String str, Object... objArr) {
        int iIndexOf;
        StringBuilder sb = new StringBuilder(str.length() + 48);
        int i10 = 0;
        int i11 = 0;
        while (i10 < 3 && (iIndexOf = str.indexOf("%s", i11)) != -1) {
            sb.append(str.substring(i11, iIndexOf));
            sb.append(objArr[i10]);
            i11 = iIndexOf + 2;
            i10++;
        }
        sb.append(str.substring(i11));
        if (i10 < 3) {
            sb.append(" [");
            sb.append(objArr[i10]);
            for (int i12 = i10 + 1; i12 < 3; i12++) {
                sb.append(", ");
                sb.append(objArr[i12]);
            }
            sb.append("]");
        }
        return sb.toString();
    }

    @KeepForSdk
    public static float checkArgumentInRange(float f, float f6, float f7, @NonNull String str) {
        if (f < f6) {
            throw new IllegalArgumentException(zza("%s is out of range of [%f, %f] (too low)", str, Float.valueOf(f6), Float.valueOf(f7)));
        }
        if (f <= f7) {
            return f;
        }
        throw new IllegalArgumentException(zza("%s is out of range of [%f, %f] (too high)", str, Float.valueOf(f6), Float.valueOf(f7)));
    }

    @KeepForSdk
    public static long checkNotZero(long j6, @NonNull Object obj) {
        if (j6 != 0) {
            return j6;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    @KeepForSdk
    public static void checkHandlerThread(@NonNull Handler handler, @NonNull String str) {
        if (Looper.myLooper() != handler.getLooper()) {
            throw new IllegalStateException(str);
        }
    }

    @KeepForSdk
    public static int checkArgumentInRange(int i10, int i11, int i12, @NonNull String str) {
        if (i10 < i11) {
            throw new IllegalArgumentException(zza("%s is out of range of [%d, %d] (too low)", str, Integer.valueOf(i11), Integer.valueOf(i12)));
        }
        if (i10 <= i12) {
            return i10;
        }
        throw new IllegalArgumentException(zza("%s is out of range of [%d, %d] (too high)", str, Integer.valueOf(i11), Integer.valueOf(i12)));
    }

    @KeepForSdk
    public static long checkArgumentInRange(long j6, long j10, long j11, @NonNull String str) {
        if (j6 < j10) {
            throw new IllegalArgumentException(zza("%s is out of range of [%d, %d] (too low)", str, Long.valueOf(j10), Long.valueOf(j11)));
        }
        if (j6 <= j11) {
            return j6;
        }
        throw new IllegalArgumentException(zza("%s is out of range of [%d, %d] (too high)", str, Long.valueOf(j10), Long.valueOf(j11)));
    }
}
