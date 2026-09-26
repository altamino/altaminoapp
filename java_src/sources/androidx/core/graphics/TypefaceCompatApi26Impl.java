package androidx.core.graphics;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;

/* JADX INFO: loaded from: classes7.dex */
@RequiresApi
@RestrictTo
public class TypefaceCompatApi26Impl extends TypefaceCompatApi21Impl {
    private static final String ABORT_CREATION_METHOD = "abortCreation";
    private static final String ADD_FONT_FROM_ASSET_MANAGER_METHOD = "addFontFromAssetManager";
    private static final String ADD_FONT_FROM_BUFFER_METHOD = "addFontFromBuffer";
    private static final String CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD = "createFromFamiliesWithDefault";
    private static final String FONT_FAMILY_CLASS = "android.graphics.FontFamily";
    private static final String FREEZE_METHOD = "freeze";
    private static final int RESOLVE_BY_FONT_TABLE = -1;
    private static final String TAG = "TypefaceCompatApi26Impl";
    protected final Method mAbortCreation;
    protected final Method mAddFontFromAssetManager;
    protected final Method mAddFontFromBuffer;
    protected final Method mCreateFromFamiliesWithDefault;
    protected final Class<?> mFontFamily;
    protected final Constructor<?> mFontFamilyCtor;
    protected final Method mFreeze;

    private boolean q(Context context, Object obj, String str, int i10, int i11, int i12, @Nullable FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.mAddFontFromAssetManager.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private boolean r(Object obj, ByteBuffer byteBuffer, int i10, int i11, int i12) {
        try {
            return ((Boolean) this.mAddFontFromBuffer.invoke(obj, byteBuffer, Integer.valueOf(i10), null, Integer.valueOf(i11), Integer.valueOf(i12))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private boolean s(Object obj) {
        try {
            return ((Boolean) this.mFreeze.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    protected Method A(Class<?> cls) throws NoSuchMethodException {
        return cls.getMethod(FREEZE_METHOD, new Class[0]);
    }

    @Override // androidx.core.graphics.TypefaceCompatApi21Impl, androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    public Typeface c(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i10) {
        Typeface typefaceL;
        if (fontInfoArr.length < 1) {
            return null;
        }
        if (!t()) {
            FontsContractCompat.FontInfo fontInfoI = i(fontInfoArr, i10);
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(fontInfoI.d(), "r", cancellationSignal);
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return null;
                }
                try {
                    Typeface typefaceBuild = new Typeface.Builder(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).setWeight(fontInfoI.e()).setItalic(fontInfoI.f()).build();
                    parcelFileDescriptorOpenFileDescriptor.close();
                    return typefaceBuild;
                } catch (Throwable th) {
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } catch (IOException unused) {
                return null;
            }
        }
        Map<Uri, ByteBuffer> mapH = TypefaceCompatUtil.h(context, fontInfoArr, cancellationSignal);
        Object objO = o();
        if (objO == null) {
            return null;
        }
        boolean z6 = false;
        for (FontsContractCompat.FontInfo fontInfo : fontInfoArr) {
            ByteBuffer byteBuffer = mapH.get(fontInfo.d());
            if (byteBuffer != null) {
                if (!r(objO, byteBuffer, fontInfo.c(), fontInfo.e(), fontInfo.f() ? 1 : 0)) {
                    p(objO);
                    return null;
                }
                z6 = true;
            }
        }
        if (!z6) {
            p(objO);
            return null;
        }
        if (s(objO) && (typefaceL = l(objO)) != null) {
            return Typeface.create(typefaceL, i10);
        }
        return null;
    }

    @Nullable
    protected Typeface l(Object obj) {
        try {
            Object objNewInstance = Array.newInstance(this.mFontFamily, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.mCreateFromFamiliesWithDefault.invoke(null, objNewInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    protected Method u(Class<?> cls) throws NoSuchMethodException {
        return cls.getMethod(ABORT_CREATION_METHOD, new Class[0]);
    }

    protected Method w(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod(ADD_FONT_FROM_BUFFER_METHOD, ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    protected Method x(Class<?> cls) throws NoSuchMethodException {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod(CREATE_FROM_FAMILIES_WITH_DEFAULT_METHOD, Array.newInstance(cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    protected Constructor<?> z(Class<?> cls) throws NoSuchMethodException {
        return cls.getConstructor(new Class[0]);
    }

    @Nullable
    private Object o() {
        try {
            return this.mFontFamilyCtor.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    private void p(Object obj) {
        try {
            this.mAbortCreation.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    private boolean t() {
        if (this.mAddFontFromAssetManager == null) {
            Log.w(TAG, "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.mAddFontFromAssetManager != null;
    }

    protected Method v(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod(ADD_FONT_FROM_ASSET_MANAGER_METHOD, AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    protected Class<?> y() throws ClassNotFoundException {
        return Class.forName(FONT_FAMILY_CLASS);
    }

    public TypefaceCompatApi26Impl() {
        Class<?> clsY;
        Constructor<?> constructorZ;
        Method methodV;
        Method methodW;
        Method methodA;
        Method methodU;
        Method methodX;
        try {
            clsY = y();
            constructorZ = z(clsY);
            methodV = v(clsY);
            methodW = w(clsY);
            methodA = A(clsY);
            methodU = u(clsY);
            methodX = x(clsY);
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e(TAG, "Unable to collect necessary methods for class " + e.getClass().getName(), e);
            clsY = null;
            constructorZ = null;
            methodV = null;
            methodW = null;
            methodA = null;
            methodU = null;
            methodX = null;
        }
        this.mFontFamily = clsY;
        this.mFontFamilyCtor = constructorZ;
        this.mAddFontFromAssetManager = methodV;
        this.mAddFontFromBuffer = methodW;
        this.mFreeze = methodA;
        this.mAbortCreation = methodU;
        this.mCreateFromFamiliesWithDefault = methodX;
    }

    @Override // androidx.core.graphics.TypefaceCompatApi21Impl, androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    public Typeface b(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i10) {
        if (!t()) {
            return super.b(context, fontFamilyFilesResourceEntry, resources, i10);
        }
        Object objO = o();
        if (objO == null) {
            return null;
        }
        for (FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry : fontFamilyFilesResourceEntry.a()) {
            if (!q(context, objO, fontFileResourceEntry.a(), fontFileResourceEntry.c(), fontFileResourceEntry.e(), fontFileResourceEntry.f() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(fontFileResourceEntry.d()))) {
                p(objO);
                return null;
            }
        }
        if (!s(objO)) {
            return null;
        }
        return l(objO);
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    public Typeface e(Context context, Resources resources, int i10, String str, int i11) {
        if (!t()) {
            return super.e(context, resources, i10, str, i11);
        }
        Object objO = o();
        if (objO == null) {
            return null;
        }
        if (!q(context, objO, str, 0, -1, -1, null)) {
            p(objO);
            return null;
        }
        if (!s(objO)) {
            return null;
        }
        return l(objO);
    }
}
