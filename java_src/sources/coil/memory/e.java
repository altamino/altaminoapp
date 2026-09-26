package coil.memory;

import android.graphics.Bitmap;
import androidx.collection.LruCache;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class e implements g {

    @NotNull
    private final b cache;

    @NotNull
    private final h weakMemoryCache;

    public static final class b extends LruCache<MemoryCache.Key, a> {
        final /* synthetic */ e this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(int i10, e eVar) {
            super(i10);
            this.this$0 = eVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.collection.LruCache
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void entryRemoved(boolean z6, @NotNull MemoryCache.Key key, @NotNull a aVar, @Nullable a aVar2) {
            this.this$0.weakMemoryCache.c(key, aVar.a(), aVar.b(), aVar.c());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.collection.LruCache
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public int sizeOf(@NotNull MemoryCache.Key key, @NotNull a aVar) {
            return aVar.c();
        }
    }

    private static final class a {

        @NotNull
        private final Bitmap bitmap;

        @NotNull
        private final Map<String, Object> extras;
        private final int size;

        @NotNull
        public final Bitmap a() {
            return this.bitmap;
        }

        @NotNull
        public final Map<String, Object> b() {
            return this.extras;
        }

        public final int c() {
            return this.size;
        }

        public a(@NotNull Bitmap bitmap, @NotNull Map<String, ? extends Object> map, int i10) {
            this.bitmap = bitmap;
            this.extras = map;
            this.size = i10;
        }
    }

    @Override // coil.memory.g
    public void a(int i10) {
        if (i10 >= 40) {
            e();
        } else {
            if (10 > i10 || i10 >= 20) {
                return;
            }
            this.cache.trimToSize(g() / 2);
        }
    }

    @Override // coil.memory.g
    @Nullable
    public MemoryCache.b b(@NotNull MemoryCache.Key key) {
        a aVar = this.cache.get(key);
        if (aVar != null) {
            return new MemoryCache.b(aVar.a(), aVar.b());
        }
        return null;
    }

    public void e() {
        this.cache.evictAll();
    }

    public int f() {
        return this.cache.maxSize();
    }

    public int g() {
        return this.cache.size();
    }

    public e(int i10, @NotNull h hVar) {
        this.weakMemoryCache = hVar;
        this.cache = new b(i10, this);
    }

    @Override // coil.memory.g
    public void c(@NotNull MemoryCache.Key key, @NotNull Bitmap bitmap, @NotNull Map<String, ? extends Object> map) {
        int iA = coil.util.a.a(bitmap);
        if (iA <= f()) {
            this.cache.put(key, new a(bitmap, map, iA));
        } else {
            this.cache.remove(key);
            this.weakMemoryCache.c(key, bitmap, map, iA);
        }
    }
}
