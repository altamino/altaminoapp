package coil.memory;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import coil.request.m;
import coil.request.o;
import coil.request.p;
import coil.size.i;
import coil.util.q;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class c {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    public static final String EXTRA_DISK_CACHE_KEY = "coil#disk_cache_key";

    @NotNull
    public static final String EXTRA_IS_SAMPLED = "coil#is_sampled";

    @NotNull
    public static final String EXTRA_TRANSFORMATION_INDEX = "coil#transformation_";

    @NotNull
    public static final String EXTRA_TRANSFORMATION_SIZE = "coil#transformation_size";

    @NotNull
    private static final String TAG = "MemoryCacheService";

    @NotNull
    private final coil.e imageLoader;

    @Nullable
    private final q logger;

    @NotNull
    private final o requestService;

    public static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }
    }

    private final boolean e(coil.request.h hVar, MemoryCache.Key key, MemoryCache.b bVar, i iVar, coil.size.h hVar2) {
        boolean zD = d(bVar);
        if (coil.size.b.a(iVar)) {
            return !zD;
        }
        String str = key.e().get(EXTRA_TRANSFORMATION_SIZE);
        if (str != null) {
            return t.e(str, iVar.toString());
        }
        int width = bVar.a().getWidth();
        int height = bVar.a().getHeight();
        coil.size.c cVarB = iVar.b();
        int i10 = cVarB instanceof coil.size.c.a ? ((coil.size.c.a) cVarB).px : Integer.MAX_VALUE;
        coil.size.c cVarA = iVar.a();
        int i11 = cVarA instanceof coil.size.c.a ? ((coil.size.c.a) cVarA).px : Integer.MAX_VALUE;
        double dC = coil.decode.h.c(width, height, i10, i11, hVar2);
        boolean zA = coil.util.h.a(hVar);
        if (zA) {
            double dH = j8.o.h(dC, 1.0d);
            if (Math.abs(((double) i10) - (((double) width) * dH)) <= 1.0d || Math.abs(((double) i11) - (dH * ((double) height))) <= 1.0d) {
                return true;
            }
        } else if ((coil.util.i.u(i10) || Math.abs(i10 - width) <= 1) && (coil.util.i.u(i11) || Math.abs(i11 - height) <= 1)) {
            return true;
        }
        if (dC == 1.0d || zA) {
            return dC <= 1.0d || !zD;
        }
        return false;
    }

    @VisibleForTesting
    public final boolean c(@NotNull coil.request.h hVar, @NotNull MemoryCache.Key key, @NotNull MemoryCache.b bVar, @NotNull i iVar, @NotNull coil.size.h hVar2) {
        if (this.requestService.c(hVar, coil.util.a.c(bVar.a()))) {
            return e(hVar, key, bVar, iVar, hVar2);
        }
        return false;
    }

    @NotNull
    public final p g(@NotNull coil.intercept.b.a aVar, @NotNull coil.request.h hVar, @NotNull MemoryCache.Key key, @NotNull MemoryCache.b bVar) {
        return new p(new BitmapDrawable(hVar.l().getResources(), bVar.a()), hVar, coil.decode.f.MEMORY_CACHE, key, b(bVar), d(bVar), coil.util.i.v(aVar));
    }

    public c(@NotNull coil.e eVar, @NotNull o oVar, @Nullable q qVar) {
        this.imageLoader = eVar;
        this.requestService = oVar;
    }

    private final String b(MemoryCache.b bVar) {
        Object obj = bVar.b().get(EXTRA_DISK_CACHE_KEY);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    private final boolean d(MemoryCache.b bVar) {
        Boolean bool;
        Object obj = bVar.b().get(EXTRA_IS_SAMPLED);
        if (obj instanceof Boolean) {
            bool = (Boolean) obj;
        } else {
            bool = null;
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    @Nullable
    public final MemoryCache.b a(@NotNull coil.request.h hVar, @NotNull MemoryCache.Key key, @NotNull i iVar, @NotNull coil.size.h hVar2) {
        MemoryCache.b bVarB;
        if (!hVar.C().b()) {
            return null;
        }
        MemoryCache memoryCacheD = this.imageLoader.d();
        if (memoryCacheD != null) {
            bVarB = memoryCacheD.b(key);
        } else {
            bVarB = null;
        }
        if (bVarB == null || !c(hVar, key, bVarB, iVar, hVar2)) {
            return null;
        }
        return bVarB;
    }

    @Nullable
    public final MemoryCache.Key f(@NotNull coil.request.h hVar, @NotNull Object obj, @NotNull m mVar, @NotNull coil.c cVar) {
        MemoryCache.Key keyB = hVar.B();
        if (keyB != null) {
            return keyB;
        }
        cVar.i(hVar, obj);
        String strF = this.imageLoader.getComponents().f(obj, mVar);
        cVar.e(hVar, strF);
        if (strF == null) {
            return null;
        }
        List<g0.a> listO = hVar.O();
        Map<String, String> mapC = hVar.E().c();
        if (!listO.isEmpty() || !mapC.isEmpty()) {
            Map mapA = s0.A(mapC);
            if (!listO.isEmpty()) {
                List<g0.a> listO2 = hVar.O();
                int size = listO2.size();
                for (int i10 = 0; i10 < size; i10++) {
                    mapA.put(EXTRA_TRANSFORMATION_INDEX + i10, listO2.get(i10).a());
                }
                mapA.put(EXTRA_TRANSFORMATION_SIZE, mVar.n().toString());
            }
            return new MemoryCache.Key(strF, mapA);
        }
        return new MemoryCache.Key(strF, null, 2, null);
    }

    public final boolean h(@Nullable MemoryCache.Key key, @NotNull coil.request.h hVar, @NotNull coil.intercept.a.b bVar) {
        MemoryCache memoryCacheD;
        BitmapDrawable bitmapDrawable;
        Bitmap bitmap;
        if (hVar.C().c() && (memoryCacheD = this.imageLoader.d()) != null && key != null) {
            Drawable drawableE = bVar.e();
            if (drawableE instanceof BitmapDrawable) {
                bitmapDrawable = (BitmapDrawable) drawableE;
            } else {
                bitmapDrawable = null;
            }
            if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put(EXTRA_IS_SAMPLED, Boolean.valueOf(bVar.f()));
                String strD = bVar.d();
                if (strD != null) {
                    linkedHashMap.put(EXTRA_DISK_CACHE_KEY, strD);
                }
                memoryCacheD.c(key, new MemoryCache.b(bitmap, linkedHashMap));
                return true;
            }
        }
        return false;
    }
}
