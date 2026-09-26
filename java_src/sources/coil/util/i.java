package coil.util;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.view.View;
import android.webkit.MimeTypeMap;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.vectordrawable.graphics.drawable.VectorDrawableCompat;
import java.io.Closeable;
import java.io.File;
import kotlin.collections.d0;
import kotlin.text.u;
import okhttp3.Headers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class i {

    @NotNull
    public static final String ASSET_FILE_PATH_ROOT = "android_asset";

    @NotNull
    private static final Bitmap.Config DEFAULT_BITMAP_CONFIG;
    private static final int DEFAULT_MEMORY_CLASS_MEGABYTES = 256;

    @NotNull
    private static final Headers EMPTY_HEADERS;
    private static final double LOW_MEMORY_MULTIPLIER = 0.15d;

    @NotNull
    public static final String MIME_TYPE_HEIC = "image/heic";

    @NotNull
    public static final String MIME_TYPE_HEIF = "image/heif";

    @NotNull
    public static final String MIME_TYPE_JPEG = "image/jpeg";

    @NotNull
    public static final String MIME_TYPE_WEBP = "image/webp";

    @Nullable
    private static final ColorSpace NULL_COLOR_SPACE = null;
    private static final double STANDARD_MEMORY_MULTIPLIER = 0.2d;

    @NotNull
    private static final Bitmap.Config[] VALID_TRANSFORMATION_CONFIGS;

    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[coil.decode.f.values().length];
            iArr[coil.decode.f.MEMORY_CACHE.ordinal()] = 1;
            iArr[coil.decode.f.MEMORY.ordinal()] = 2;
            iArr[coil.decode.f.DISK.ordinal()] = 3;
            iArr[coil.decode.f.NETWORK.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            iArr2[ImageView.ScaleType.FIT_START.ordinal()] = 1;
            iArr2[ImageView.ScaleType.FIT_CENTER.ordinal()] = 2;
            iArr2[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            iArr2[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 4;
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[coil.size.h.values().length];
            iArr3[coil.size.h.FILL.ordinal()] = 1;
            iArr3[coil.size.h.FIT.ordinal()] = 2;
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    @NotNull
    public static final Bitmap.Config f() {
        return DEFAULT_BITMAP_CONFIG;
    }

    @NotNull
    public static final Headers g() {
        return EMPTY_HEADERS;
    }

    @Nullable
    public static final String k(@NotNull MimeTypeMap mimeTypeMap, @Nullable String str) {
        if (str == null || kotlin.text.t.z(str)) {
            return null;
        }
        return mimeTypeMap.getMimeTypeFromExtension(u.O0(u.Q0(u.Y0(u.Y0(str, '#', null, 2, null), '?', null, 2, null), '/', null, 2, null), '.', ""));
    }

    @Nullable
    public static final ColorSpace l() {
        return NULL_COLOR_SPACE;
    }

    @NotNull
    public static final Bitmap.Config[] q() {
        return VALID_TRANSFORMATION_CONFIGS;
    }

    public static final boolean u(int i10) {
        return i10 == Integer.MIN_VALUE || i10 == Integer.MAX_VALUE;
    }

    @NotNull
    public static final Headers z(@Nullable Headers headers) {
        return headers == null ? EMPTY_HEADERS : headers;
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        VALID_TRANSFORMATION_CONFIGS = i10 >= 26 ? new Bitmap.Config[]{Bitmap.Config.ARGB_8888, Bitmap.Config.RGBA_F16} : new Bitmap.Config[]{Bitmap.Config.ARGB_8888};
        DEFAULT_BITMAP_CONFIG = i10 >= 26 ? Bitmap.Config.HARDWARE : Bitmap.Config.ARGB_8888;
        EMPTY_HEADERS = new Headers.Builder().build();
    }

    public static final int B(@NotNull coil.size.c cVar, @NotNull coil.size.h hVar) {
        if (cVar instanceof coil.size.c.a) {
            return ((coil.size.c.a) cVar).px;
        }
        int i10 = a.$EnumSwitchMapping$2[hVar.ordinal()];
        if (i10 == 1) {
            return Integer.MIN_VALUE;
        }
        if (i10 == 2) {
            return Integer.MAX_VALUE;
        }
        throw new w7.s();
    }

    @NotNull
    public static final Headers.Builder b(@NotNull Headers.Builder builder, @NotNull String str) {
        int iB0 = u.b0(str, kotlinx.serialization.json.internal.b.COLON, 0, false, 6, null);
        if (iB0 == -1) {
            throw new IllegalArgumentException(("Unexpected header: " + str).toString());
        }
        String strSubstring = str.substring(0, iB0);
        kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        String string = u.b1(strSubstring).toString();
        String strSubstring2 = str.substring(iB0 + 1);
        kotlin.jvm.internal.t.i(strSubstring2, "this as java.lang.String).substring(startIndex)");
        builder.addUnsafeNonAscii(string, strSubstring2);
        return builder;
    }

    public static final int c(@NotNull Context context, double d) {
        int largeMemoryClass;
        try {
            Object systemService = ContextCompat.getSystemService(context, ActivityManager.class);
            kotlin.jvm.internal.t.g(systemService);
            ActivityManager activityManager = (ActivityManager) systemService;
            largeMemoryClass = (context.getApplicationInfo().flags & 1048576) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass();
        } catch (Exception unused) {
            largeMemoryClass = 256;
        }
        double d2 = 1024;
        return (int) (d * ((double) largeMemoryClass) * d2 * d2);
    }

    @NotNull
    public static final coil.c h(@NotNull coil.intercept.b.a aVar) {
        return aVar instanceof coil.intercept.c ? ((coil.intercept.c) aVar).e() : coil.c.NONE;
    }

    public static final int j(@NotNull Drawable drawable) {
        Bitmap bitmap;
        BitmapDrawable bitmapDrawable = drawable instanceof BitmapDrawable ? (BitmapDrawable) drawable : null;
        return (bitmapDrawable == null || (bitmap = bitmapDrawable.getBitmap()) == null) ? drawable.getIntrinsicHeight() : bitmap.getHeight();
    }

    public static final int m(@NotNull Configuration configuration) {
        return configuration.uiMode & 48;
    }

    @NotNull
    public static final coil.request.s n(@NotNull View view) {
        int i10 = b0.a.coil_request_manager;
        Object tag = view.getTag(i10);
        coil.request.s sVar = tag instanceof coil.request.s ? (coil.request.s) tag : null;
        if (sVar == null) {
            synchronized (view) {
                try {
                    Object tag2 = view.getTag(i10);
                    coil.request.s sVar2 = tag2 instanceof coil.request.s ? (coil.request.s) tag2 : null;
                    if (sVar2 != null) {
                        sVar = sVar2;
                    } else {
                        sVar = new coil.request.s(view);
                        view.addOnAttachStateChangeListener(sVar);
                        view.setTag(i10, sVar);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return sVar;
    }

    public static final int r(@NotNull Drawable drawable) {
        Bitmap bitmap;
        BitmapDrawable bitmapDrawable = drawable instanceof BitmapDrawable ? (BitmapDrawable) drawable : null;
        return (bitmapDrawable == null || (bitmap = bitmapDrawable.getBitmap()) == null) ? drawable.getIntrinsicWidth() : bitmap.getWidth();
    }

    public static final boolean v(@NotNull coil.intercept.b.a aVar) {
        return (aVar instanceof coil.intercept.c) && ((coil.intercept.c) aVar).f();
    }

    public static final boolean w(@NotNull Drawable drawable) {
        return (drawable instanceof VectorDrawable) || (drawable instanceof VectorDrawableCompat);
    }

    @NotNull
    public static final coil.request.n x(@Nullable coil.request.n nVar) {
        return nVar == null ? coil.request.n.EMPTY : nVar;
    }

    @NotNull
    public static final coil.request.q y(@Nullable coil.request.q qVar) {
        return qVar == null ? coil.request.q.EMPTY : qVar;
    }

    public static final int A(@NotNull String str, int i10) {
        Long lO = kotlin.text.s.o(str);
        if (lO != null) {
            long jLongValue = lO.longValue();
            if (jLongValue > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (jLongValue < 0) {
                return 0;
            }
            return (int) jLongValue;
        }
        return i10;
    }

    public static final void a(@NotNull coil.disk.a.b bVar) {
        try {
            bVar.abort();
        } catch (Exception unused) {
        }
    }

    public static final void d(@NotNull Closeable closeable) {
        try {
            closeable.close();
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception unused) {
        }
    }

    @Nullable
    public static final String i(@NotNull Uri uri) {
        return (String) d0.l0(uri.getPathSegments());
    }

    @NotNull
    public static final File o(@NotNull Context context) {
        File cacheDir = context.getCacheDir();
        cacheDir.mkdirs();
        return cacheDir;
    }

    @NotNull
    public static final coil.size.h p(@NotNull ImageView imageView) {
        int i10;
        ImageView.ScaleType scaleType = imageView.getScaleType();
        if (scaleType == null) {
            i10 = -1;
        } else {
            i10 = a.$EnumSwitchMapping$1[scaleType.ordinal()];
        }
        if (i10 != 1 && i10 != 2 && i10 != 3 && i10 != 4) {
            return coil.size.h.FILL;
        }
        return coil.size.h.FIT;
    }

    public static final boolean s(@NotNull Uri uri) {
        if (kotlin.jvm.internal.t.e(uri.getScheme(), "file") && kotlin.jvm.internal.t.e(i(uri), ASSET_FILE_PATH_ROOT)) {
            return true;
        }
        return false;
    }

    public static final boolean t() {
        return kotlin.jvm.internal.t.e(Looper.myLooper(), Looper.getMainLooper());
    }

    public static final double e(@NotNull Context context) {
        try {
            Object systemService = ContextCompat.getSystemService(context, ActivityManager.class);
            kotlin.jvm.internal.t.g(systemService);
            if (!((ActivityManager) systemService).isLowRamDevice()) {
                return STANDARD_MEMORY_MULTIPLIER;
            }
            return LOW_MEMORY_MULTIPLIER;
        } catch (Exception unused) {
            return STANDARD_MEMORY_MULTIPLIER;
        }
    }
}
