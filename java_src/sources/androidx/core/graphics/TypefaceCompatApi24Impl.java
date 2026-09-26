package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.SimpleArrayMap;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
@RestrictTo
class TypefaceCompatApi24Impl extends TypefaceCompatBaseImpl {
    private static final String ADD_FONT_WEIGHT_STYLE_METHOD = "addFontWeightStyle";
    private static final String CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD = "createFromFamiliesWithDefault";
    private static final String FONT_FAMILY_CLASS = "android.graphics.FontFamily";
    private static final String TAG = "TypefaceCompatApi24Impl";
    private static final Method sAddFontWeightStyle;
    private static final Method sCreateFromFamiliesWithDefault;
    private static final Class<?> sFontFamily;
    private static final Constructor<?> sFontFamilyCtor;

    private static boolean k(Object obj, ByteBuffer byteBuffer, int i10, int i11, boolean z6) {
        try {
            return ((Boolean) sAddFontWeightStyle.invoke(obj, byteBuffer, Integer.valueOf(i10), null, Integer.valueOf(i11), Boolean.valueOf(z6))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private static Typeface l(Object obj) {
        try {
            Object objNewInstance = Array.newInstance(sFontFamily, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) sCreateFromFamiliesWithDefault.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    static {
        Class<?> cls;
        Method method;
        Constructor<?> constructor;
        Method method2;
        try {
            cls = Class.forName(FONT_FAMILY_CLASS);
            constructor = cls.getConstructor(new Class[0]);
            Class<?> cls2 = Integer.TYPE;
            method2 = cls.getMethod(ADD_FONT_WEIGHT_STYLE_METHOD, ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod(CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD, Array.newInstance(cls, 1).getClass());
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e(TAG, e.getClass().getName(), e);
            cls = null;
            method = null;
            constructor = null;
            method2 = null;
        }
        sFontFamilyCtor = constructor;
        sFontFamily = cls;
        sAddFontWeightStyle = method2;
        sCreateFromFamiliesWithDefault = method;
    }

    public static boolean m() {
        Method method = sAddFontWeightStyle;
        if (method == null) {
            Log.w(TAG, "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return method != null;
    }

    private static Object n() {
        try {
            return sFontFamilyCtor.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    TypefaceCompatApi24Impl() {
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    public Typeface b(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i10) {
        Object objN = n();
        if (objN == null) {
            return null;
        }
        for (FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry : fontFamilyFilesResourceEntry.a()) {
            ByteBuffer byteBufferB = TypefaceCompatUtil.b(context, resources, fontFileResourceEntry.b());
            if (byteBufferB == null || !k(objN, byteBufferB, fontFileResourceEntry.c(), fontFileResourceEntry.e(), fontFileResourceEntry.f())) {
                return null;
            }
        }
        return l(objN);
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    public Typeface c(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i10) {
        Object objN = n();
        if (objN == null) {
            return null;
        }
        SimpleArrayMap simpleArrayMap = new SimpleArrayMap();
        for (FontsContractCompat.FontInfo fontInfo : fontInfoArr) {
            Uri uriD = fontInfo.d();
            ByteBuffer byteBufferF = (ByteBuffer) simpleArrayMap.get(uriD);
            if (byteBufferF == null) {
                byteBufferF = TypefaceCompatUtil.f(context, cancellationSignal, uriD);
                simpleArrayMap.put(uriD, byteBufferF);
            }
            if (byteBufferF == null || !k(objN, byteBufferF, fontInfo.c(), fontInfo.e(), fontInfo.f())) {
                return null;
            }
        }
        Typeface typefaceL = l(objN);
        if (typefaceL == null) {
            return null;
        }
        return Typeface.create(typefaceL, i10);
    }
}
