package androidx.collection;

import e8.l;
import e8.p;
import e8.r;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class LruCacheKt$lruCache$4 extends LruCache<Object, Object> {
    final /* synthetic */ l $create;
    final /* synthetic */ int $maxSize;
    final /* synthetic */ r $onEntryRemoved;
    final /* synthetic */ p $sizeOf;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LruCacheKt$lruCache$4(p pVar, l lVar, r rVar, int i10, int i11) {
        super(i11);
        this.$sizeOf = pVar;
        this.$create = lVar;
        this.$onEntryRemoved = rVar;
        this.$maxSize = i10;
    }

    @Override // androidx.collection.LruCache
    @Nullable
    protected Object create(@NotNull Object key) {
        t.k(key, "key");
        return this.$create.invoke(key);
    }

    @Override // androidx.collection.LruCache
    protected void entryRemoved(boolean z6, @NotNull Object key, @NotNull Object oldValue, @Nullable Object obj) {
        t.k(key, "key");
        t.k(oldValue, "oldValue");
        this.$onEntryRemoved.invoke(Boolean.valueOf(z6), key, oldValue, obj);
    }

    @Override // androidx.collection.LruCache
    protected int sizeOf(@NotNull Object key, @NotNull Object value) {
        t.k(key, "key");
        t.k(value, "value");
        return ((Number) this.$sizeOf.invoke(key, value)).intValue();
    }
}
