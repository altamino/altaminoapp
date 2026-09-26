package coil.memory;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.d0;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class f implements h {
    private static final int CLEAN_UP_INTERVAL = 10;

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private final LinkedHashMap<MemoryCache.Key, ArrayList<b>> cache = new LinkedHashMap<>();
    private int operationsSinceCleanUp;

    public static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }
    }

    @Override // coil.memory.h
    public synchronized void a(int i10) {
        if (i10 >= 10 && i10 != 20) {
            d();
        }
    }

    @Override // coil.memory.h
    @Nullable
    public synchronized MemoryCache.b b(@NotNull MemoryCache.Key key) {
        try {
            ArrayList<b> arrayList = this.cache.get(key);
            MemoryCache.b bVar = null;
            if (arrayList == null) {
                return null;
            }
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                b bVar2 = arrayList.get(i10);
                Bitmap bitmap = bVar2.a().get();
                MemoryCache.b bVar3 = bitmap != null ? new MemoryCache.b(bitmap, bVar2.b()) : null;
                if (bVar3 != null) {
                    bVar = bVar3;
                    break;
                }
            }
            e();
            return bVar;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // coil.memory.h
    public synchronized void c(@NotNull MemoryCache.Key key, @NotNull Bitmap bitmap, @NotNull Map<String, ? extends Object> map, int i10) {
        try {
            LinkedHashMap<MemoryCache.Key, ArrayList<b>> linkedHashMap = this.cache;
            ArrayList<b> arrayList = linkedHashMap.get(key);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                linkedHashMap.put(key, arrayList);
            }
            ArrayList<b> arrayList2 = arrayList;
            int iIdentityHashCode = System.identityHashCode(bitmap);
            b bVar = new b(iIdentityHashCode, new WeakReference(bitmap), map, i10);
            int size = arrayList2.size();
            int i11 = 0;
            while (true) {
                if (i11 >= size) {
                    arrayList2.add(bVar);
                    break;
                }
                b bVar2 = arrayList2.get(i11);
                if (i10 >= bVar2.d()) {
                    if (bVar2.c() != iIdentityHashCode || bVar2.a().get() != bitmap) {
                        arrayList2.add(i11, bVar);
                        break;
                    } else {
                        arrayList2.set(i11, bVar);
                        break;
                    }
                }
                i11++;
            }
            e();
        } catch (Throwable th) {
            throw th;
        }
    }

    @VisibleForTesting
    public final void d() {
        WeakReference<Bitmap> weakReferenceA;
        this.operationsSinceCleanUp = 0;
        Iterator<ArrayList<b>> it = this.cache.values().iterator();
        while (it.hasNext()) {
            ArrayList<b> next = it.next();
            if (next.size() <= 1) {
                b bVar = (b) d0.l0(next);
                if (((bVar == null || (weakReferenceA = bVar.a()) == null) ? null : weakReferenceA.get()) == null) {
                    it.remove();
                }
            } else {
                int size = next.size();
                int i10 = 0;
                for (int i11 = 0; i11 < size; i11++) {
                    int i12 = i11 - i10;
                    if (next.get(i12).a().get() == null) {
                        next.remove(i12);
                        i10++;
                    }
                }
                if (next.isEmpty()) {
                    it.remove();
                }
            }
        }
    }

    @VisibleForTesting
    public static final class b {

        @NotNull
        private final WeakReference<Bitmap> bitmap;

        @NotNull
        private final Map<String, Object> extras;
        private final int identityHashCode;
        private final int size;

        @NotNull
        public final WeakReference<Bitmap> a() {
            return this.bitmap;
        }

        @NotNull
        public final Map<String, Object> b() {
            return this.extras;
        }

        public final int c() {
            return this.identityHashCode;
        }

        public final int d() {
            return this.size;
        }

        public b(int i10, @NotNull WeakReference<Bitmap> weakReference, @NotNull Map<String, ? extends Object> map, int i11) {
            this.identityHashCode = i10;
            this.bitmap = weakReference;
            this.extras = map;
            this.size = i11;
        }
    }

    private final void e() {
        int i10 = this.operationsSinceCleanUp;
        this.operationsSinceCleanUp = i10 + 1;
        if (i10 >= 10) {
            d();
        }
    }
}
