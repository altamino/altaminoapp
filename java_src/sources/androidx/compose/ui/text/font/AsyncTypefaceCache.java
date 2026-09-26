package androidx.compose.ui.text.font;

import androidx.compose.ui.text.ExperimentalTextApi;
import androidx.compose.ui.text.caches.LruCache;
import androidx.compose.ui.text.caches.SimpleArrayMap;
import androidx.compose.ui.text.platform.Synchronization_jvmKt;
import androidx.compose.ui.text.platform.SynchronizedObject;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes3.dex */
@ExperimentalTextApi
public final class AsyncTypefaceCache {

    @NotNull
    private final Object PermanentFailure = AsyncTypefaceResult.b(null);

    @NotNull
    private final LruCache<Key, AsyncTypefaceResult> resultCache = new LruCache<>(16);

    @NotNull
    private final SimpleArrayMap<Key, AsyncTypefaceResult> permanentCache = new SimpleArrayMap<>(0, 1, null);

    @NotNull
    private final SynchronizedObject cacheLock = Synchronization_jvmKt.a();

    public static final class Key {

        @NotNull
        private final Font font;

        @Nullable
        private final Object loaderKey;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            return t.e(this.font, key.font) && t.e(this.loaderKey, key.loaderKey);
        }

        public int hashCode() {
            int iHashCode = this.font.hashCode() * 31;
            Object obj = this.loaderKey;
            return iHashCode + (obj == null ? 0 : obj.hashCode());
        }

        @NotNull
        public String toString() {
            return "Key(font=" + this.font + ", loaderKey=" + this.loaderKey + ')';
        }

        public Key(@NotNull Font font, @Nullable Object obj) {
            t.j(font, "font");
            this.font = font;
            this.loaderKey = obj;
        }
    }

    public static final class AsyncTypefaceResult {

        @Nullable
        private final Object result;

        public static final /* synthetic */ AsyncTypefaceResult a(Object obj) {
            return new AsyncTypefaceResult(obj);
        }

        @NotNull
        public static Object b(@Nullable Object obj) {
            return obj;
        }

        public static boolean c(Object obj, Object obj2) {
            return (obj2 instanceof AsyncTypefaceResult) && t.e(obj, ((AsyncTypefaceResult) obj2).g());
        }

        public static int d(Object obj) {
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        public static final boolean e(Object obj) {
            return obj == null;
        }

        public static String f(Object obj) {
            return "AsyncTypefaceResult(result=" + obj + ')';
        }

        public boolean equals(Object obj) {
            return c(this.result, obj);
        }

        public final /* synthetic */ Object g() {
            return this.result;
        }

        public int hashCode() {
            return d(this.result);
        }

        public String toString() {
            return f(this.result);
        }

        private /* synthetic */ AsyncTypefaceResult(Object obj) {
            this.result = obj;
        }
    }

    public static /* synthetic */ void f(AsyncTypefaceCache asyncTypefaceCache, Font font, PlatformFontLoader platformFontLoader, Object obj, boolean z6, int i10, Object obj2) {
        if ((i10 & 8) != 0) {
            z6 = false;
        }
        asyncTypefaceCache.e(font, platformFontLoader, obj, z6);
    }

    @Nullable
    public final AsyncTypefaceResult d(@NotNull Font font, @NotNull PlatformFontLoader platformFontLoader) {
        AsyncTypefaceResult asyncTypefaceResultD;
        t.j(font, "font");
        t.j(platformFontLoader, "platformFontLoader");
        Key key = new Key(font, platformFontLoader.a());
        synchronized (this.cacheLock) {
            asyncTypefaceResultD = this.resultCache.d(key);
            if (asyncTypefaceResultD == null) {
                asyncTypefaceResultD = this.permanentCache.c(key);
            }
        }
        return asyncTypefaceResultD;
    }

    public final void e(@NotNull Font font, @NotNull PlatformFontLoader platformFontLoader, @Nullable Object obj, boolean z6) {
        t.j(font, "font");
        t.j(platformFontLoader, "platformFontLoader");
        Key key = new Key(font, platformFontLoader.a());
        synchronized (this.cacheLock) {
            try {
                if (obj == null) {
                    this.permanentCache.i(key, AsyncTypefaceResult.a(this.PermanentFailure));
                } else if (z6) {
                    this.permanentCache.i(key, AsyncTypefaceResult.a(AsyncTypefaceResult.b(obj)));
                } else {
                    this.resultCache.e(key, AsyncTypefaceResult.a(AsyncTypefaceResult.b(obj)));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object g(@NotNull Font font, @NotNull PlatformFontLoader platformFontLoader, boolean z6, @NotNull l<? super kotlin.coroutines.d<Object>, ? extends Object> lVar, @NotNull kotlin.coroutines.d<Object> dVar) {
        AsyncTypefaceCache$runCached$1 asyncTypefaceCache$runCached$1;
        AsyncTypefaceCache asyncTypefaceCache;
        Key key;
        if (dVar instanceof AsyncTypefaceCache$runCached$1) {
            asyncTypefaceCache$runCached$1 = (AsyncTypefaceCache$runCached$1) dVar;
            int i10 = asyncTypefaceCache$runCached$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                asyncTypefaceCache$runCached$1.label = i10 - Integer.MIN_VALUE;
            } else {
                asyncTypefaceCache$runCached$1 = new AsyncTypefaceCache$runCached$1(this, dVar);
            }
        } else {
            asyncTypefaceCache$runCached$1 = new AsyncTypefaceCache$runCached$1(this, dVar);
        }
        Object obj = asyncTypefaceCache$runCached$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = asyncTypefaceCache$runCached$1.label;
        if (i11 == 0) {
            w.b(obj);
            Key key2 = new Key(font, platformFontLoader.a());
            synchronized (this.cacheLock) {
                try {
                    AsyncTypefaceResult asyncTypefaceResultD = this.resultCache.d(key2);
                    if (asyncTypefaceResultD == null) {
                        asyncTypefaceResultD = this.permanentCache.c(key2);
                    }
                    if (asyncTypefaceResultD != null) {
                        return asyncTypefaceResultD.g();
                    }
                    l0 l0Var = l0.INSTANCE;
                    asyncTypefaceCache$runCached$1.L$0 = this;
                    asyncTypefaceCache$runCached$1.L$1 = key2;
                    asyncTypefaceCache$runCached$1.Z$0 = z6;
                    asyncTypefaceCache$runCached$1.label = 1;
                    Object objInvoke = lVar.invoke(asyncTypefaceCache$runCached$1);
                    if (objInvoke == objE) {
                        return objE;
                    }
                    asyncTypefaceCache = this;
                    obj = objInvoke;
                    key = key2;
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z6 = asyncTypefaceCache$runCached$1.Z$0;
            key = (Key) asyncTypefaceCache$runCached$1.L$1;
            asyncTypefaceCache = (AsyncTypefaceCache) asyncTypefaceCache$runCached$1.L$0;
            w.b(obj);
        }
        synchronized (asyncTypefaceCache.cacheLock) {
            try {
                if (obj == null) {
                    asyncTypefaceCache.permanentCache.i(key, AsyncTypefaceResult.a(asyncTypefaceCache.PermanentFailure));
                } else if (z6) {
                    asyncTypefaceCache.permanentCache.i(key, AsyncTypefaceResult.a(AsyncTypefaceResult.b(obj)));
                } else {
                    asyncTypefaceCache.resultCache.e(key, AsyncTypefaceResult.a(AsyncTypefaceResult.b(obj)));
                }
                l0 l0Var2 = l0.INSTANCE;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return obj;
    }
}
