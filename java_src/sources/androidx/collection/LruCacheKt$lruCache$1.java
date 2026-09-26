package androidx.collection;

import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class LruCacheKt$lruCache$1 extends v implements p {
    public static final LruCacheKt$lruCache$1 INSTANCE = new LruCacheKt$lruCache$1();

    public LruCacheKt$lruCache$1() {
        super(2);
    }

    public final int a(@NotNull Object obj, @NotNull Object obj2) {
        t.k(obj, "<anonymous parameter 0>");
        t.k(obj2, "<anonymous parameter 1>");
        return 1;
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
        return Integer.valueOf(a(obj, obj2));
    }
}
