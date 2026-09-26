package androidx.compose.ui.text.font;

import androidx.compose.ui.text.ExperimentalTextApi;
import e8.l;
import java.util.List;
import w7.a0;
import w7.l0;
import w7.u;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes9.dex */
public final class FontListFontFamilyTypefaceAdapterKt {
    /* JADX INFO: Access modifiers changed from: private */
    @ExperimentalTextApi
    public static final u<List<Font>, Object> b(List<? extends Font> list, TypefaceRequest typefaceRequest, AsyncTypefaceCache asyncTypefaceCache, PlatformFontLoader platformFontLoader, l<? super TypefaceRequest, ? extends Object> lVar) {
        Object objC;
        Object objB;
        int size = list.size();
        List listS = null;
        for (int i10 = 0; i10 < size; i10++) {
            Font font = list.get(i10);
            int iA = font.a();
            FontLoadingStrategy.Companion companion = FontLoadingStrategy.Companion;
            if (FontLoadingStrategy.f(iA, companion.b())) {
                synchronized (asyncTypefaceCache.cacheLock) {
                    try {
                        AsyncTypefaceCache.Key key = new AsyncTypefaceCache.Key(font, platformFontLoader.a());
                        AsyncTypefaceCache.AsyncTypefaceResult asyncTypefaceResult = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.resultCache.d(key);
                        if (asyncTypefaceResult == null) {
                            asyncTypefaceResult = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.permanentCache.c(key);
                        }
                        if (asyncTypefaceResult != null) {
                            objC = asyncTypefaceResult.g();
                        } else {
                            l0 l0Var = l0.INSTANCE;
                            try {
                                objC = platformFontLoader.c(font);
                                AsyncTypefaceCache.f(asyncTypefaceCache, font, platformFontLoader, objC, false, 8, null);
                            } catch (Exception e) {
                                throw new IllegalStateException("Unable to load font " + font, e);
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (objC != null) {
                    return a0.a(listS, FontSynthesis_androidKt.a(typefaceRequest.e(), objC, font, typefaceRequest.f(), typefaceRequest.d()));
                }
                throw new IllegalStateException("Unable to load font " + font);
            }
            if (FontLoadingStrategy.f(iA, companion.c())) {
                synchronized (asyncTypefaceCache.cacheLock) {
                    try {
                        AsyncTypefaceCache.Key key2 = new AsyncTypefaceCache.Key(font, platformFontLoader.a());
                        AsyncTypefaceCache.AsyncTypefaceResult asyncTypefaceResult2 = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.resultCache.d(key2);
                        if (asyncTypefaceResult2 == null) {
                            asyncTypefaceResult2 = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.permanentCache.c(key2);
                        }
                        if (asyncTypefaceResult2 != null) {
                            objB = asyncTypefaceResult2.g();
                        } else {
                            l0 l0Var2 = l0.INSTANCE;
                            try {
                                v.a aVar = v.Companion;
                                objB = v.b(platformFontLoader.c(font));
                            } catch (Throwable th2) {
                                v.a aVar2 = v.Companion;
                                objB = v.b(w.a(th2));
                            }
                            if (v.g(objB)) {
                                objB = null;
                            }
                            AsyncTypefaceCache.f(asyncTypefaceCache, font, platformFontLoader, objB, false, 8, null);
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
                if (objB != null) {
                    return a0.a(listS, FontSynthesis_androidKt.a(typefaceRequest.e(), objB, font, typefaceRequest.f(), typefaceRequest.d()));
                }
            } else {
                if (!FontLoadingStrategy.f(iA, companion.a())) {
                    throw new IllegalStateException("Unknown font type " + font);
                }
                AsyncTypefaceCache.AsyncTypefaceResult asyncTypefaceResultD = asyncTypefaceCache.d(font, platformFontLoader);
                if (asyncTypefaceResultD != null) {
                    if (!AsyncTypefaceCache.AsyncTypefaceResult.e(asyncTypefaceResultD.g()) && asyncTypefaceResultD.g() != null) {
                        return a0.a(listS, FontSynthesis_androidKt.a(typefaceRequest.e(), asyncTypefaceResultD.g(), font, typefaceRequest.f(), typefaceRequest.d()));
                    }
                } else if (listS == null) {
                    listS = kotlin.collections.v.s(font);
                } else {
                    listS.add(font);
                }
            }
        }
        return a0.a(listS, lVar.invoke(typefaceRequest));
    }
}
