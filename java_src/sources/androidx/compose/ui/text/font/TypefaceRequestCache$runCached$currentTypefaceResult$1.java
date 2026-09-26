package androidx.compose.ui.text.font;

import androidx.compose.ui.text.platform.SynchronizedObject;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class TypefaceRequestCache$runCached$currentTypefaceResult$1 extends v implements l<TypefaceResult, l0> {
    final /* synthetic */ TypefaceRequest $typefaceRequest;
    final /* synthetic */ TypefaceRequestCache this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TypefaceRequestCache$runCached$currentTypefaceResult$1(TypefaceRequestCache typefaceRequestCache, TypefaceRequest typefaceRequest) {
        super(1);
        this.this$0 = typefaceRequestCache;
        this.$typefaceRequest = typefaceRequest;
    }

    public final void a(@NotNull TypefaceResult finalResult) {
        t.j(finalResult, "finalResult");
        SynchronizedObject synchronizedObjectB = this.this$0.b();
        TypefaceRequestCache typefaceRequestCache = this.this$0;
        TypefaceRequest typefaceRequest = this.$typefaceRequest;
        synchronized (synchronizedObjectB) {
            try {
                if (finalResult.c()) {
                    typefaceRequestCache.resultCache.e(typefaceRequest, finalResult);
                } else {
                    typefaceRequestCache.resultCache.f(typefaceRequest);
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(TypefaceResult typefaceResult) {
        a(typefaceResult);
        return l0.INSTANCE;
    }
}
