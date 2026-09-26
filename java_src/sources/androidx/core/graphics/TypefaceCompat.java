package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.LruCache;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.provider.FontsContractCompat;

/* JADX INFO: loaded from: classes8.dex */
public class TypefaceCompat {
    private static final LruCache<String, Typeface> sTypefaceCache;
    private static final TypefaceCompatBaseImpl sTypefaceCompatImpl;

    @RestrictTo
    public static class ResourcesCallbackAdapter extends FontsContractCompat.FontRequestCallback {

        @Nullable
        private ResourcesCompat.FontCallback mFontCallback;

        @Override // androidx.core.provider.FontsContractCompat.FontRequestCallback
        public void a(int i10) {
            ResourcesCompat.FontCallback fontCallback = this.mFontCallback;
            if (fontCallback != null) {
                fontCallback.f(i10);
            }
        }

        @Override // androidx.core.provider.FontsContractCompat.FontRequestCallback
        public void b(@NonNull Typeface typeface) {
            ResourcesCompat.FontCallback fontCallback = this.mFontCallback;
            if (fontCallback != null) {
                fontCallback.g(typeface);
            }
        }

        public ResourcesCallbackAdapter(@Nullable ResourcesCompat.FontCallback fontCallback) {
            this.mFontCallback = fontCallback;
        }
    }

    @Nullable
    @RestrictTo
    public static Typeface c(@NonNull Context context, @NonNull FontResourcesParserCompat.FamilyResourceEntry familyResourceEntry, @NonNull Resources resources, int i10, @Nullable String str, int i11, int i12, @Nullable ResourcesCompat.FontCallback fontCallback, @Nullable Handler handler, boolean z6) {
        Typeface typefaceB;
        if (familyResourceEntry instanceof FontResourcesParserCompat.ProviderResourceEntry) {
            FontResourcesParserCompat.ProviderResourceEntry providerResourceEntry = (FontResourcesParserCompat.ProviderResourceEntry) familyResourceEntry;
            Typeface typefaceG = g(providerResourceEntry.c());
            if (typefaceG != null) {
                if (fontCallback != null) {
                    fontCallback.d(typefaceG, handler);
                }
                return typefaceG;
            }
            typefaceB = FontsContractCompat.c(context, providerResourceEntry.b(), i12, !z6 ? fontCallback != null : providerResourceEntry.a() != 0, z6 ? providerResourceEntry.d() : -1, ResourcesCompat.FontCallback.e(handler), new ResourcesCallbackAdapter(fontCallback));
        } else {
            typefaceB = sTypefaceCompatImpl.b(context, (FontResourcesParserCompat.FontFamilyFilesResourceEntry) familyResourceEntry, resources, i12);
            if (fontCallback != null) {
                if (typefaceB != null) {
                    fontCallback.d(typefaceB, handler);
                } else {
                    fontCallback.c(-3, handler);
                }
            }
        }
        if (typefaceB != null) {
            sTypefaceCache.put(e(resources, i10, str, i11, i12), typefaceB);
        }
        return typefaceB;
    }

    private static Typeface g(@Nullable String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        Typeface typefaceCreate = Typeface.create(str, 0);
        Typeface typefaceCreate2 = Typeface.create(Typeface.DEFAULT, 0);
        if (typefaceCreate == null || typefaceCreate.equals(typefaceCreate2)) {
            return null;
        }
        return typefaceCreate;
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            sTypefaceCompatImpl = new TypefaceCompatApi29Impl();
        } else if (i10 >= 28) {
            sTypefaceCompatImpl = new TypefaceCompatApi28Impl();
        } else if (i10 >= 26) {
            sTypefaceCompatImpl = new TypefaceCompatApi26Impl();
        } else if (i10 < 24 || !TypefaceCompatApi24Impl.m()) {
            sTypefaceCompatImpl = new TypefaceCompatApi21Impl();
        } else {
            sTypefaceCompatImpl = new TypefaceCompatApi24Impl();
        }
        sTypefaceCache = new LruCache<>(16);
    }

    @NonNull
    public static Typeface a(@NonNull Context context, @Nullable Typeface typeface, int i10) {
        if (context != null) {
            return Typeface.create(typeface, i10);
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    @Nullable
    @RestrictTo
    public static Typeface b(@NonNull Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i10) {
        return sTypefaceCompatImpl.c(context, cancellationSignal, fontInfoArr, i10);
    }

    @Nullable
    @RestrictTo
    public static Typeface d(@NonNull Context context, @NonNull Resources resources, int i10, String str, int i11, int i12) {
        Typeface typefaceE = sTypefaceCompatImpl.e(context, resources, i10, str, i12);
        if (typefaceE != null) {
            sTypefaceCache.put(e(resources, i10, str, i11, i12), typefaceE);
        }
        return typefaceE;
    }

    private static String e(Resources resources, int i10, String str, int i11, int i12) {
        return resources.getResourcePackageName(i10) + '-' + str + '-' + i11 + '-' + i10 + '-' + i12;
    }

    @Nullable
    @RestrictTo
    public static Typeface f(@NonNull Resources resources, int i10, @Nullable String str, int i11, int i12) {
        return sTypefaceCache.get(e(resources, i10, str, i11, i12));
    }

    private TypefaceCompat() {
    }
}
