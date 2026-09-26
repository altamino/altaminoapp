package androidx.collection;

import e8.r;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class LruCacheKt$lruCache$3 extends v implements r {
    public static final LruCacheKt$lruCache$3 INSTANCE = new LruCacheKt$lruCache$3();

    public LruCacheKt$lruCache$3() {
        super(4);
    }

    public final void a(boolean z6, @NotNull Object obj, @NotNull Object obj2, @Nullable Object obj3) {
        t.k(obj, "<anonymous parameter 1>");
        t.k(obj2, "<anonymous parameter 2>");
    }

    @Override // e8.r
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3, Object obj4) {
        a(((Boolean) obj).booleanValue(), obj2, obj3, obj4);
        return l0.INSTANCE;
    }
}
