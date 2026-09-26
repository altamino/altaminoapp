package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import com.narvii.util.ws.WsMessage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo
class TypefaceCompatBaseImpl {
    private static final int INVALID_KEY = 0;
    private static final String TAG = "TypefaceCompatBaseImpl";

    @SuppressLint({"BanConcurrentHashMap"})
    private ConcurrentHashMap<Long, FontResourcesParserCompat.FontFamilyFilesResourceEntry> mFontFamilies = new ConcurrentHashMap<>();

    private interface StyleExtractor<T> {
        int a(T t5);

        boolean b(T t5);
    }

    private static <T> T h(T[] tArr, int i10, boolean z6, StyleExtractor<T> styleExtractor) {
        T t5 = null;
        int i11 = Integer.MAX_VALUE;
        for (T t10 : tArr) {
            int iAbs = (Math.abs(styleExtractor.a(t10) - i10) * 2) + (styleExtractor.b(t10) == z6 ? 0 : 1);
            if (t5 == null || i11 > iAbs) {
                t5 = t10;
                i11 = iAbs;
            }
        }
        return t5;
    }

    @Nullable
    public Typeface c(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i10) throws Throwable {
        InputStream inputStreamOpenInputStream;
        InputStream inputStream = null;
        if (fontInfoArr.length < 1) {
            return null;
        }
        try {
            inputStreamOpenInputStream = context.getContentResolver().openInputStream(i(fontInfoArr, i10).d());
            try {
                Typeface typefaceD = d(context, inputStreamOpenInputStream);
                TypefaceCompatUtil.a(inputStreamOpenInputStream);
                return typefaceD;
            } catch (IOException unused) {
                TypefaceCompatUtil.a(inputStreamOpenInputStream);
                return null;
            } catch (Throwable th) {
                th = th;
                inputStream = inputStreamOpenInputStream;
                TypefaceCompatUtil.a(inputStream);
                throw th;
            }
        } catch (IOException unused2) {
            inputStreamOpenInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: renamed from: androidx.core.graphics.TypefaceCompatBaseImpl$3, reason: invalid class name */
    /* JADX INFO: loaded from: classes8.dex */
    class AnonymousClass3 implements StyleExtractor<FontResourcesParserCompat.FontFileResourceEntry> {
        final /* synthetic */ TypefaceCompatBaseImpl this$0;

        @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int a(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
            return fontFileResourceEntry.e();
        }

        @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean b(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
            return fontFileResourceEntry.f();
        }
    }

    private static <T> T g(T[] tArr, int i10, StyleExtractor<T> styleExtractor) {
        return (T) h(tArr, (i10 & 1) == 0 ? WsMessage.LIVE_LAYER_USER_JOINED_EVENT : 700, (i10 & 2) != 0, styleExtractor);
    }

    private static long j(@Nullable Typeface typeface) {
        if (typeface == null) {
            return 0L;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (IllegalAccessException e) {
            Log.e(TAG, "Could not retrieve font from family.", e);
            return 0L;
        } catch (NoSuchFieldException e2) {
            Log.e(TAG, "Could not retrieve font from family.", e2);
            return 0L;
        }
    }

    protected FontsContractCompat.FontInfo i(FontsContractCompat.FontInfo[] fontInfoArr, int i10) {
        return (FontsContractCompat.FontInfo) g(fontInfoArr, i10, new StyleExtractor<FontsContractCompat.FontInfo>() { // from class: androidx.core.graphics.TypefaceCompatBaseImpl.1
            @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public int a(FontsContractCompat.FontInfo fontInfo) {
                return fontInfo.e();
            }

            @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public boolean b(FontsContractCompat.FontInfo fontInfo) {
                return fontInfo.f();
            }
        });
    }

    TypefaceCompatBaseImpl() {
    }

    private void a(Typeface typeface, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry) {
        long j6 = j(typeface);
        if (j6 != 0) {
            this.mFontFamilies.put(Long.valueOf(j6), fontFamilyFilesResourceEntry);
        }
    }

    private FontResourcesParserCompat.FontFileResourceEntry f(FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, int i10) {
        return (FontResourcesParserCompat.FontFileResourceEntry) g(fontFamilyFilesResourceEntry.a(), i10, new StyleExtractor<FontResourcesParserCompat.FontFileResourceEntry>() { // from class: androidx.core.graphics.TypefaceCompatBaseImpl.2
            @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public int a(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
                return fontFileResourceEntry.e();
            }

            @Override // androidx.core.graphics.TypefaceCompatBaseImpl.StyleExtractor
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public boolean b(FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry) {
                return fontFileResourceEntry.f();
            }
        });
    }

    @Nullable
    public Typeface b(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i10) {
        FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntryF = f(fontFamilyFilesResourceEntry, i10);
        if (fontFileResourceEntryF == null) {
            return null;
        }
        Typeface typefaceD = TypefaceCompat.d(context, resources, fontFileResourceEntryF.b(), fontFileResourceEntryF.a(), 0, i10);
        a(typefaceD, fontFamilyFilesResourceEntry);
        return typefaceD;
    }

    protected Typeface d(Context context, InputStream inputStream) {
        File fileE = TypefaceCompatUtil.e(context);
        if (fileE == null) {
            return null;
        }
        try {
            if (!TypefaceCompatUtil.d(fileE, inputStream)) {
                return null;
            }
            return Typeface.createFromFile(fileE.getPath());
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileE.delete();
        }
    }

    @Nullable
    public Typeface e(Context context, Resources resources, int i10, String str, int i11) {
        File fileE = TypefaceCompatUtil.e(context);
        if (fileE == null) {
            return null;
        }
        try {
            if (!TypefaceCompatUtil.c(fileE, resources, i10)) {
                return null;
            }
            return Typeface.createFromFile(fileE.getPath());
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileE.delete();
        }
    }
}
