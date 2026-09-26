package androidx.compose.ui.text.font;

import androidx.compose.runtime.State;
import androidx.compose.ui.text.caches.LruCache;
import androidx.compose.ui.text.platform.Synchronization_jvmKt;
import androidx.compose.ui.text.platform.SynchronizedObject;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class TypefaceRequestCache {

    @NotNull
    private final SynchronizedObject lock = Synchronization_jvmKt.a();

    @NotNull
    private final LruCache<TypefaceRequest, TypefaceResult> resultCache = new LruCache<>(16);

    @NotNull
    public final SynchronizedObject b() {
        return this.lock;
    }

    public final void c(@NotNull List<TypefaceRequest> typefaceRequests, @NotNull l<? super TypefaceRequest, ? extends TypefaceResult> resolveTypeface) {
        TypefaceResult typefaceResultD;
        t.j(typefaceRequests, "typefaceRequests");
        t.j(resolveTypeface, "resolveTypeface");
        int size = typefaceRequests.size();
        for (int i10 = 0; i10 < size; i10++) {
            TypefaceRequest typefaceRequest = typefaceRequests.get(i10);
            synchronized (this.lock) {
                typefaceResultD = this.resultCache.d(typefaceRequest);
            }
            if (typefaceResultD == null) {
                try {
                    TypefaceResult typefaceResultInvoke = resolveTypeface.invoke(typefaceRequest);
                    if (typefaceResultInvoke instanceof TypefaceResult.Async) {
                        continue;
                    } else {
                        synchronized (this.lock) {
                            this.resultCache.e(typefaceRequest, typefaceResultInvoke);
                        }
                    }
                } catch (Exception e) {
                    throw new IllegalStateException("Could not load font", e);
                }
            }
        }
    }

    @NotNull
    public final State<Object> d(@NotNull TypefaceRequest typefaceRequest, @NotNull l<? super l<? super TypefaceResult, l0>, ? extends TypefaceResult> resolveTypeface) {
        t.j(typefaceRequest, "typefaceRequest");
        t.j(resolveTypeface, "resolveTypeface");
        synchronized (this.lock) {
            TypefaceResult typefaceResultD = this.resultCache.d(typefaceRequest);
            if (typefaceResultD != null) {
                if (typefaceResultD.c()) {
                    return typefaceResultD;
                }
                this.resultCache.f(typefaceRequest);
            }
            try {
                TypefaceResult typefaceResultInvoke = resolveTypeface.invoke(new TypefaceRequestCache$runCached$currentTypefaceResult$1(this, typefaceRequest));
                synchronized (this.lock) {
                    try {
                        if (this.resultCache.d(typefaceRequest) == null && typefaceResultInvoke.c()) {
                            this.resultCache.e(typefaceRequest, typefaceResultInvoke);
                        }
                        l0 l0Var = l0.INSTANCE;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return typefaceResultInvoke;
            } catch (Exception e) {
                throw new IllegalStateException("Could not load font", e);
            }
        }
    }
}
