package com.bumptech.glide.util;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.model.l;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Queue;

/* JADX INFO: loaded from: classes8.dex */
public final class k {
    private static final int HASH_ACCUMULATOR = 17;
    private static final int HASH_MULTIPLIER = 31;
    private static final char[] HEX_CHAR_ARRAY = "0123456789abcdef".toCharArray();
    private static final char[] SHA_256_CHARS = new char[64];

    @NonNull
    private static String d(@NonNull byte[] bArr, @NonNull char[] cArr) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            byte b7 = bArr[i10];
            int i11 = i10 * 2;
            char[] cArr2 = HEX_CHAR_ARRAY;
            cArr[i11] = cArr2[(b7 & 255) >>> 4];
            cArr[i11 + 1] = cArr2[b7 & com.google.common.base.c.SI];
        }
        return new String(cArr);
    }

    public static int f(int i10, int i11, @Nullable Bitmap.Config config) {
        return i10 * i11 * h(config);
    }

    public static int l(int i10, int i11) {
        return (i11 * 31) + i10;
    }

    private static boolean q(int i10) {
        return i10 > 0 || i10 == Integer.MIN_VALUE;
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$Config;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            $SwitchMap$android$graphics$Bitmap$Config = iArr;
            try {
                iArr[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.RGBA_F16.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static boolean b(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj instanceof l ? ((l) obj).a(obj2) : obj.equals(obj2);
    }

    public static boolean c(@Nullable Object obj, @Nullable Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    @NonNull
    public static <T> Queue<T> e(int i10) {
        return new ArrayDeque(i10);
    }

    private static int h(@Nullable Bitmap.Config config) {
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i10 = a.$SwitchMap$android$graphics$Bitmap$Config[config.ordinal()];
        if (i10 == 1) {
            return 1;
        }
        if (i10 == 2 || i10 == 3) {
            return 2;
        }
        return i10 != 4 ? 4 : 8;
    }

    @NonNull
    public static <T> List<T> i(@NonNull Collection<T> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (T t5 : collection) {
            if (t5 != null) {
                arrayList.add(t5);
            }
        }
        return arrayList;
    }

    public static int j(float f) {
        return k(f, 17);
    }

    public static int m(@Nullable Object obj, int i10) {
        return l(obj == null ? 0 : obj.hashCode(), i10);
    }

    @NonNull
    public static String s(@NonNull byte[] bArr) {
        String strD;
        char[] cArr = SHA_256_CHARS;
        synchronized (cArr) {
            strD = d(bArr, cArr);
        }
        return strD;
    }

    public static void a() {
        if (p()) {
        } else {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    @TargetApi(19)
    public static int g(@NonNull Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException unused) {
                return bitmap.getHeight() * bitmap.getRowBytes();
            }
        }
        throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig());
    }

    public static int k(float f, int i10) {
        return l(Float.floatToIntBits(f), i10);
    }

    public static int n(boolean z6, int i10) {
        return l(z6 ? 1 : 0, i10);
    }

    public static boolean o() {
        return !p();
    }

    public static boolean p() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return true;
        }
        return false;
    }

    public static boolean r(int i10, int i11) {
        if (q(i10) && q(i11)) {
            return true;
        }
        return false;
    }
}
