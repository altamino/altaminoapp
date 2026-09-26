package androidx.core.provider;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.util.Consumer;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes7.dex */
class FontRequestWorker {
    static final LruCache<String, Typeface> sTypefaceCache = new LruCache<>(16);
    private static final ExecutorService DEFAULT_EXECUTOR_SERVICE = RequestExecutor.a("fonts-androidx", 10, 10000);
    static final Object LOCK = new Object();

    @GuardedBy
    static final SimpleArrayMap<String, ArrayList<Consumer<TypefaceResult>>> PENDING_REPLIES = new SimpleArrayMap<>();

    static final class TypefaceResult {
        final int mResult;
        final Typeface mTypeface;

        TypefaceResult(int i10) {
            this.mTypeface = null;
            this.mResult = i10;
        }

        @SuppressLint({"WrongConstant"})
        boolean a() {
            return this.mResult == 0;
        }

        @SuppressLint({"WrongConstant"})
        TypefaceResult(@NonNull Typeface typeface) {
            this.mTypeface = typeface;
            this.mResult = 0;
        }
    }

    private static String a(@NonNull FontRequest fontRequest, int i10) {
        return fontRequest.d() + "-" + i10;
    }

    @NonNull
    static TypefaceResult c(@NonNull String str, @NonNull Context context, @NonNull FontRequest fontRequest, int i10) {
        LruCache<String, Typeface> lruCache = sTypefaceCache;
        Typeface typeface = lruCache.get(str);
        if (typeface != null) {
            return new TypefaceResult(typeface);
        }
        try {
            FontsContractCompat.FontFamilyResult fontFamilyResultE = FontProvider.e(context, fontRequest, null);
            int iB = b(fontFamilyResultE);
            if (iB != 0) {
                return new TypefaceResult(iB);
            }
            Typeface typefaceB = TypefaceCompat.b(context, null, fontFamilyResultE.b(), i10);
            if (typefaceB == null) {
                return new TypefaceResult(-3);
            }
            lruCache.put(str, typefaceB);
            return new TypefaceResult(typefaceB);
        } catch (PackageManager.NameNotFoundException unused) {
            return new TypefaceResult(-1);
        }
    }

    private FontRequestWorker() {
    }

    @SuppressLint({"WrongConstant"})
    private static int b(@NonNull FontsContractCompat.FontFamilyResult fontFamilyResult) {
        int i10 = 1;
        if (fontFamilyResult.c() != 0) {
            if (fontFamilyResult.c() != 1) {
                return -3;
            }
            return -2;
        }
        FontsContractCompat.FontInfo[] fontInfoArrB = fontFamilyResult.b();
        if (fontInfoArrB != null && fontInfoArrB.length != 0) {
            i10 = 0;
            for (FontsContractCompat.FontInfo fontInfo : fontInfoArrB) {
                int iB = fontInfo.b();
                if (iB != 0) {
                    if (iB < 0) {
                        return -3;
                    }
                    return iB;
                }
            }
        }
        return i10;
    }

    static Typeface d(@NonNull final Context context, @NonNull final FontRequest fontRequest, final int i10, @Nullable Executor executor, @NonNull final CallbackWithHandler callbackWithHandler) {
        final String strA = a(fontRequest, i10);
        Typeface typeface = sTypefaceCache.get(strA);
        if (typeface != null) {
            callbackWithHandler.b(new TypefaceResult(typeface));
            return typeface;
        }
        Consumer<TypefaceResult> consumer = new Consumer<TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.2
            @Override // androidx.core.util.Consumer
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void accept(TypefaceResult typefaceResult) {
                if (typefaceResult == null) {
                    typefaceResult = new TypefaceResult(-3);
                }
                callbackWithHandler.b(typefaceResult);
            }
        };
        synchronized (LOCK) {
            try {
                SimpleArrayMap<String, ArrayList<Consumer<TypefaceResult>>> simpleArrayMap = PENDING_REPLIES;
                ArrayList<Consumer<TypefaceResult>> arrayList = simpleArrayMap.get(strA);
                if (arrayList != null) {
                    arrayList.add(consumer);
                    return null;
                }
                ArrayList<Consumer<TypefaceResult>> arrayList2 = new ArrayList<>();
                arrayList2.add(consumer);
                simpleArrayMap.put(strA, arrayList2);
                Callable<TypefaceResult> callable = new Callable<TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.3
                    @Override // java.util.concurrent.Callable
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public TypefaceResult call() {
                        try {
                            return FontRequestWorker.c(strA, context, fontRequest, i10);
                        } catch (Throwable unused) {
                            return new TypefaceResult(-3);
                        }
                    }
                };
                if (executor == null) {
                    executor = DEFAULT_EXECUTOR_SERVICE;
                }
                RequestExecutor.b(executor, callable, new Consumer<TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.4
                    @Override // androidx.core.util.Consumer
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void accept(TypefaceResult typefaceResult) {
                        synchronized (FontRequestWorker.LOCK) {
                            try {
                                SimpleArrayMap<String, ArrayList<Consumer<TypefaceResult>>> simpleArrayMap2 = FontRequestWorker.PENDING_REPLIES;
                                ArrayList<Consumer<TypefaceResult>> arrayList3 = simpleArrayMap2.get(strA);
                                if (arrayList3 == null) {
                                    return;
                                }
                                simpleArrayMap2.remove(strA);
                                for (int i11 = 0; i11 < arrayList3.size(); i11++) {
                                    arrayList3.get(i11).accept(typefaceResult);
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                });
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    static Typeface e(@NonNull final Context context, @NonNull final FontRequest fontRequest, @NonNull CallbackWithHandler callbackWithHandler, final int i10, int i11) {
        final String strA = a(fontRequest, i10);
        Typeface typeface = sTypefaceCache.get(strA);
        if (typeface != null) {
            callbackWithHandler.b(new TypefaceResult(typeface));
            return typeface;
        }
        if (i11 == -1) {
            TypefaceResult typefaceResultC = c(strA, context, fontRequest, i10);
            callbackWithHandler.b(typefaceResultC);
            return typefaceResultC.mTypeface;
        }
        try {
            TypefaceResult typefaceResult = (TypefaceResult) RequestExecutor.c(DEFAULT_EXECUTOR_SERVICE, new Callable<TypefaceResult>() { // from class: androidx.core.provider.FontRequestWorker.1
                @Override // java.util.concurrent.Callable
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public TypefaceResult call() {
                    return FontRequestWorker.c(strA, context, fontRequest, i10);
                }
            }, i11);
            callbackWithHandler.b(typefaceResult);
            return typefaceResult.mTypeface;
        } catch (InterruptedException unused) {
            callbackWithHandler.b(new TypefaceResult(-3));
            return null;
        }
    }
}
