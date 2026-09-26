package androidx.core.content.res;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.annotation.AnyRes;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DoNotInline;
import androidx.annotation.DrawableRes;
import androidx.annotation.FontRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.util.ObjectsCompat;
import androidx.core.util.Preconditions;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes4.dex */
public final class ResourcesCompat {

    @AnyRes
    public static final int ID_NULL = 0;
    private static final String TAG = "ResourcesCompat";
    private static final ThreadLocal<TypedValue> sTempTypedValue = new ThreadLocal<>();

    @GuardedBy
    private static final WeakHashMap<ColorStateListCacheKey, SparseArray<ColorStateListCacheEntry>> sColorStateCaches = new WeakHashMap<>(0);
    private static final Object sColorStateCacheLock = new Object();

    public static abstract class FontCallback {
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public abstract void f(int i10);

        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public abstract void g(@NonNull Typeface typeface);

        @NonNull
        @RestrictTo
        public static Handler e(@Nullable Handler handler) {
            return handler == null ? new Handler(Looper.getMainLooper()) : handler;
        }

        @RestrictTo
        public final void c(final int i10, @Nullable Handler handler) {
            e(handler).post(new Runnable() { // from class: androidx.core.content.res.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f146a.f(i10);
                }
            });
        }

        @RestrictTo
        public final void d(@NonNull final Typeface typeface, @Nullable Handler handler) {
            e(handler).post(new Runnable() { // from class: androidx.core.content.res.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f144a.g(typeface);
                }
            });
        }
    }

    public static final class ThemeCompat {

        @RequiresApi
        static class Api23Impl {
            private static Method sRebaseMethod;
            private static boolean sRebaseMethodFetched;
            private static final Object sRebaseMethodLock = new Object();

            /* JADX WARN: Code duplicated, block: B:31:0x0029 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @SuppressLint({"BanUncheckedReflection"})
            static void a(@NonNull Resources.Theme theme) {
                Method method;
                synchronized (sRebaseMethodLock) {
                    if (sRebaseMethodFetched) {
                        method = sRebaseMethod;
                        if (method != null) {
                            method.invoke(theme, new Object[0]);
                        }
                    } else {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            sRebaseMethod = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException e) {
                            Log.i(ResourcesCompat.TAG, "Failed to retrieve rebase() method", e);
                        }
                        sRebaseMethodFetched = true;
                        method = sRebaseMethod;
                        if (method != null) {
                            try {
                                method.invoke(theme, new Object[0]);
                            } catch (IllegalAccessException | InvocationTargetException e2) {
                                Log.i(ResourcesCompat.TAG, "Failed to invoke rebase() method via reflection", e2);
                                sRebaseMethod = null;
                            }
                        }
                    }
                    throw th;
                }
            }

            private Api23Impl() {
            }
        }

        @RequiresApi
        static class Api29Impl {
            private Api29Impl() {
            }

            @DoNotInline
            static void a(@NonNull Resources.Theme theme) {
                theme.rebase();
            }
        }

        public static void a(@NonNull Resources.Theme theme) {
            if (Build.VERSION.SDK_INT >= 29) {
                Api29Impl.a(theme);
            } else {
                Api23Impl.a(theme);
            }
        }

        private ThemeCompat() {
        }
    }

    @RequiresApi
    static class Api15Impl {
        private Api15Impl() {
        }

        @DoNotInline
        static Drawable a(Resources resources, int i10, int i11) {
            return resources.getDrawableForDensity(i10, i11);
        }
    }

    @RequiresApi
    static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        static Drawable a(Resources resources, int i10, Resources.Theme theme) {
            return resources.getDrawable(i10, theme);
        }

        @DoNotInline
        static Drawable b(Resources resources, int i10, int i11, Resources.Theme theme) {
            return resources.getDrawableForDensity(i10, i11, theme);
        }
    }

    @RequiresApi
    static class Api23Impl {
        private Api23Impl() {
        }

        @DoNotInline
        static int a(Resources resources, int i10, Resources.Theme theme) {
            return resources.getColor(i10, theme);
        }

        @NonNull
        @DoNotInline
        static ColorStateList b(@NonNull Resources resources, @ColorRes int i10, @Nullable Resources.Theme theme) {
            return resources.getColorStateList(i10, theme);
        }
    }

    @RequiresApi
    static class Api29Impl {
        private Api29Impl() {
        }

        @DoNotInline
        static float a(@NonNull Resources resources, @DimenRes int i10) {
            return resources.getFloat(i10);
        }
    }

    private static class ColorStateListCacheEntry {
        final Configuration mConfiguration;
        final int mThemeHash;
        final ColorStateList mValue;

        ColorStateListCacheEntry(@NonNull ColorStateList colorStateList, @NonNull Configuration configuration, @Nullable Resources.Theme theme) {
            int iHashCode;
            this.mValue = colorStateList;
            this.mConfiguration = configuration;
            if (theme == null) {
                iHashCode = 0;
            } else {
                iHashCode = theme.hashCode();
            }
            this.mThemeHash = iHashCode;
        }
    }

    private static final class ColorStateListCacheKey {
        final Resources mResources;
        final Resources.Theme mTheme;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || ColorStateListCacheKey.class != obj.getClass()) {
                return false;
            }
            ColorStateListCacheKey colorStateListCacheKey = (ColorStateListCacheKey) obj;
            return this.mResources.equals(colorStateListCacheKey.mResources) && ObjectsCompat.a(this.mTheme, colorStateListCacheKey.mTheme);
        }

        public int hashCode() {
            return ObjectsCompat.b(this.mResources, this.mTheme);
        }

        ColorStateListCacheKey(@NonNull Resources resources, @Nullable Resources.Theme theme) {
            this.mResources = resources;
            this.mTheme = theme;
        }
    }

    private static void a(@NonNull ColorStateListCacheKey colorStateListCacheKey, @ColorRes int i10, @NonNull ColorStateList colorStateList, @Nullable Resources.Theme theme) {
        synchronized (sColorStateCacheLock) {
            try {
                WeakHashMap<ColorStateListCacheKey, SparseArray<ColorStateListCacheEntry>> weakHashMap = sColorStateCaches;
                SparseArray<ColorStateListCacheEntry> sparseArray = weakHashMap.get(colorStateListCacheKey);
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                    weakHashMap.put(colorStateListCacheKey, sparseArray);
                }
                sparseArray.append(i10, new ColorStateListCacheEntry(colorStateList, colorStateListCacheKey.mResources.getConfiguration(), theme));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003c, code lost:
    
        if (r2.mThemeHash == r5.hashCode()) goto L22;
     */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static ColorStateList b(@NonNull ColorStateListCacheKey colorStateListCacheKey, @ColorRes int i10) {
        ColorStateListCacheEntry colorStateListCacheEntry;
        synchronized (sColorStateCacheLock) {
            try {
                SparseArray<ColorStateListCacheEntry> sparseArray = sColorStateCaches.get(colorStateListCacheKey);
                if (sparseArray != null && sparseArray.size() > 0 && (colorStateListCacheEntry = sparseArray.get(i10)) != null) {
                    if (colorStateListCacheEntry.mConfiguration.equals(colorStateListCacheKey.mResources.getConfiguration())) {
                        Resources.Theme theme = colorStateListCacheKey.mTheme;
                        if (theme != null || colorStateListCacheEntry.mThemeHash != 0) {
                            if (theme != null) {
                            }
                        }
                        return colorStateListCacheEntry.mValue;
                    }
                    sparseArray.remove(i10);
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    public static ColorStateList d(@NonNull Resources resources, @ColorRes int i10, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        ColorStateListCacheKey colorStateListCacheKey = new ColorStateListCacheKey(resources, theme);
        ColorStateList colorStateListB = b(colorStateListCacheKey, i10);
        if (colorStateListB != null) {
            return colorStateListB;
        }
        ColorStateList colorStateListK = k(resources, i10, theme);
        if (colorStateListK == null) {
            return Api23Impl.b(resources, i10, theme);
        }
        a(colorStateListCacheKey, i10, colorStateListK, theme);
        return colorStateListK;
    }

    @NonNull
    private static TypedValue j() {
        ThreadLocal<TypedValue> threadLocal = sTempTypedValue;
        TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:52:? A[RETURN, SYNTHETIC] */
    private static Typeface n(@NonNull Context context, Resources resources, @NonNull TypedValue typedValue, int i10, int i11, @Nullable FontCallback fontCallback, @Nullable Handler handler, boolean z6, boolean z10) {
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i10) + "\" (" + Integer.toHexString(i10) + ") is not a Font: " + typedValue);
        }
        String string = charSequence.toString();
        int i12 = 0;
        if (!string.startsWith("res/")) {
            if (fontCallback != null) {
                fontCallback.c(-3, handler);
            }
            return null;
        }
        Typeface typefaceF = TypefaceCompat.f(resources, i10, string, typedValue.assetCookie, i11);
        if (typefaceF != null) {
            if (fontCallback != null) {
                fontCallback.d(typefaceF, handler);
            }
            return typefaceF;
        }
        if (z10) {
            return null;
        }
        try {
            try {
                if (!string.toLowerCase().endsWith(".xml")) {
                    Typeface typefaceD = TypefaceCompat.d(context, resources, i10, string, typedValue.assetCookie, i11);
                    if (fontCallback != null) {
                        if (typefaceD != null) {
                            fontCallback.d(typefaceD, handler);
                        } else {
                            fontCallback.c(-3, handler);
                        }
                    }
                    return typefaceD;
                }
                FontResourcesParserCompat.FamilyResourceEntry familyResourceEntryB = FontResourcesParserCompat.b(resources.getXml(i10), resources);
                if (familyResourceEntryB != null) {
                    return TypefaceCompat.c(context, familyResourceEntryB, resources, i10, string, typedValue.assetCookie, i11, fontCallback, handler, z6);
                }
                Log.e(TAG, "Failed to find font-family tag");
                if (fontCallback != null) {
                    fontCallback.c(-3, handler);
                }
                return null;
            } catch (IOException e) {
                e = e;
                Log.e(TAG, "Failed to read xml resource " + string, e);
                if (fontCallback != null) {
                    return null;
                }
                fontCallback.c(i12, handler);
                return null;
            } catch (XmlPullParserException e2) {
                e = e2;
                Log.e(TAG, "Failed to parse xml resource " + string, e);
                if (fontCallback != null) {
                    return null;
                }
                fontCallback.c(i12, handler);
                return null;
            }
        } catch (IOException e6) {
            e = e6;
            i12 = -3;
        } catch (XmlPullParserException e7) {
            e = e7;
            i12 = -3;
        }
    }

    private ResourcesCompat() {
    }

    @Nullable
    public static Typeface c(@NonNull Context context, @FontRes int i10) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return m(context, i10, new TypedValue(), 0, null, null, false, true);
    }

    @Nullable
    public static Drawable e(@NonNull Resources resources, @DrawableRes int i10, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        return Api21Impl.a(resources, i10, theme);
    }

    @Nullable
    public static Drawable f(@NonNull Resources resources, @DrawableRes int i10, int i11, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        return Api21Impl.b(resources, i10, i11, theme);
    }

    @Nullable
    public static Typeface g(@NonNull Context context, @FontRes int i10) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return m(context, i10, new TypedValue(), 0, null, null, false, false);
    }

    @Nullable
    @RestrictTo
    public static Typeface h(@NonNull Context context, @FontRes int i10, @NonNull TypedValue typedValue, int i11, @Nullable FontCallback fontCallback) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return m(context, i10, typedValue, i11, fontCallback, null, true, false);
    }

    public static void i(@NonNull Context context, @FontRes int i10, @NonNull FontCallback fontCallback, @Nullable Handler handler) throws Resources.NotFoundException {
        Preconditions.i(fontCallback);
        if (context.isRestricted()) {
            fontCallback.c(-4, handler);
        } else {
            m(context, i10, new TypedValue(), 0, fontCallback, handler, false, false);
        }
    }

    @Nullable
    private static ColorStateList k(Resources resources, int i10, @Nullable Resources.Theme theme) {
        if (l(resources, i10)) {
            return null;
        }
        try {
            return ColorStateListInflaterCompat.a(resources, resources.getXml(i10), theme);
        } catch (Exception e) {
            Log.w(TAG, "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    private static boolean l(@NonNull Resources resources, @ColorRes int i10) {
        TypedValue typedValueJ = j();
        resources.getValue(i10, typedValueJ, true);
        int i11 = typedValueJ.type;
        if (i11 >= 28 && i11 <= 31) {
            return true;
        }
        return false;
    }

    private static Typeface m(@NonNull Context context, int i10, @NonNull TypedValue typedValue, int i11, @Nullable FontCallback fontCallback, @Nullable Handler handler, boolean z6, boolean z10) {
        Resources resources = context.getResources();
        resources.getValue(i10, typedValue, true);
        Typeface typefaceN = n(context, resources, typedValue, i10, i11, fontCallback, handler, z6, z10);
        if (typefaceN == null && fontCallback == null && !z10) {
            throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i10) + " could not be retrieved.");
        }
        return typefaceN;
    }
}
