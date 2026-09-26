package androidx.core.util;

import android.util.LruCache;
import e8.l;
import e8.p;
import e8.r;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class LruCacheKt$lruCache$4 extends LruCache<Object, Object> {
    final /* synthetic */ l<Object, Object> $create;
    final /* synthetic */ r<Boolean, Object, Object, Object, l0> $onEntryRemoved;
    final /* synthetic */ p<Object, Object, Integer> $sizeOf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public LruCacheKt$lruCache$4(int i10, p<Object, Object, Integer> pVar, l<Object, Object> lVar, r<? super Boolean, Object, Object, Object, l0> rVar) {
        super(i10);
        this.$sizeOf = pVar;
        this.$create = lVar;
        this.$onEntryRemoved = rVar;
    }

    @Override // android.util.LruCache
    @Nullable
    protected Object create(@NotNull Object key) {
        t.j(key, "key");
        return this.$create.invoke(key);
    }

    @Override // android.util.LruCache
    protected void entryRemoved(boolean z6, @NotNull Object key, @NotNull Object oldValue, @Nullable Object obj) {
        t.j(key, "key");
        t.j(oldValue, "oldValue");
        this.$onEntryRemoved.invoke(Boolean.valueOf(z6), key, oldValue, obj);
    }

    @Override // android.util.LruCache
    protected int sizeOf(@NotNull Object key, @NotNull Object value) {
        t.j(key, "key");
        t.j(value, "value");
        return this.$sizeOf.invoke(key, value).intValue();
    }
}
