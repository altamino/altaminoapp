package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
public class m implements k {
    private static final Bitmap.Config[] ALPHA_8_IN_CONFIGS;
    private static final Bitmap.Config[] ARGB_4444_IN_CONFIGS;
    private static final Bitmap.Config[] ARGB_8888_IN_CONFIGS;
    private static final int MAX_SIZE_MULTIPLE = 8;
    private static final Bitmap.Config[] RGBA_F16_IN_CONFIGS;
    private static final Bitmap.Config[] RGB_565_IN_CONFIGS;
    private final c keyPool = new c();
    private final g<b, Bitmap> groupedMap = new g<>();
    private final Map<Bitmap.Config, NavigableMap<Integer, Integer>> sortedSizes = new HashMap();

    @VisibleForTesting
    static final class b implements l {
        private Bitmap.Config config;
        private final c pool;
        int size;

        public void b(int i10, Bitmap.Config config) {
            this.size = i10;
            this.config = config;
        }

        @Override // com.bumptech.glide.load.engine.bitmap_recycle.l
        public void a() {
            this.pool.c(this);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.size == bVar.size && com.bumptech.glide.util.k.c(this.config, bVar.config);
        }

        public int hashCode() {
            int i10 = this.size * 31;
            Bitmap.Config config = this.config;
            return i10 + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return m.i(this.size, this.config);
        }

        public b(c cVar) {
            this.pool = cVar;
        }
    }

    @VisibleForTesting
    static class c extends com.bumptech.glide.load.engine.bitmap_recycle.c<b> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public b a() {
            return new b(this);
        }

        c() {
        }

        public b e(int i10, Bitmap.Config config) {
            b bVarB = b();
            bVarB.b(i10, config);
            return bVarB;
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        ARGB_8888_IN_CONFIGS = configArr;
        RGBA_F16_IN_CONFIGS = configArr;
        RGB_565_IN_CONFIGS = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        ARGB_4444_IN_CONFIGS = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        ALPHA_8_IN_CONFIGS = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$Config;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            $SwitchMap$android$graphics$Bitmap$Config = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$Config[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private b h(int i10, Bitmap.Config config) {
        b bVarE = this.keyPool.e(i10, config);
        for (Bitmap.Config config2 : j(config)) {
            Integer numCeilingKey = k(config2).ceilingKey(Integer.valueOf(i10));
            if (numCeilingKey != null && numCeilingKey.intValue() <= i10 * 8) {
                if (numCeilingKey.intValue() == i10) {
                    if (config2 == null) {
                        if (config == null) {
                            return bVarE;
                        }
                    } else if (config2.equals(config)) {
                        return bVarE;
                    }
                }
                this.keyPool.c(bVarE);
                return this.keyPool.e(numCeilingKey.intValue(), config2);
            }
        }
        return bVarE;
    }

    static String i(int i10, Bitmap.Config config) {
        return "[" + i10 + "](" + config + ")";
    }

    private static Bitmap.Config[] j(Bitmap.Config config) {
        if (Build.VERSION.SDK_INT >= 26 && Bitmap.Config.RGBA_F16.equals(config)) {
            return RGBA_F16_IN_CONFIGS;
        }
        int i10 = a.$SwitchMap$android$graphics$Bitmap$Config[config.ordinal()];
        if (i10 == 1) {
            return ARGB_8888_IN_CONFIGS;
        }
        if (i10 == 2) {
            return RGB_565_IN_CONFIGS;
        }
        if (i10 != 3) {
            return i10 != 4 ? new Bitmap.Config[]{config} : ALPHA_8_IN_CONFIGS;
        }
        return ARGB_4444_IN_CONFIGS;
    }

    private NavigableMap<Integer, Integer> k(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.sortedSizes.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.sortedSizes.put(config, treeMap);
        return treeMap;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.k
    @Nullable
    public Bitmap f() {
        Bitmap bitmapF = this.groupedMap.f();
        if (bitmapF != null) {
            g(Integer.valueOf(com.bumptech.glide.util.k.g(bitmapF)), bitmapF);
        }
        return bitmapF;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("SizeConfigStrategy{groupedMap=");
        sb.append(this.groupedMap);
        sb.append(", sortedSizes=(");
        for (Map.Entry<Bitmap.Config, NavigableMap<Integer, Integer>> entry : this.sortedSizes.entrySet()) {
            sb.append(entry.getKey());
            sb.append(kotlinx.serialization.json.internal.b.BEGIN_LIST);
            sb.append(entry.getValue());
            sb.append("], ");
        }
        if (!this.sortedSizes.isEmpty()) {
            sb.replace(sb.length() - 2, sb.length(), "");
        }
        sb.append(")}");
        return sb.toString();
    }

    private void g(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> navigableMapK = k(bitmap.getConfig());
        Integer num2 = navigableMapK.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                navigableMapK.remove(num);
                return;
            } else {
                navigableMapK.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + e(bitmap) + ", this: " + this);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.k
    public String a(int i10, int i11, Bitmap.Config config) {
        return i(com.bumptech.glide.util.k.f(i10, i11, config), config);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.k
    public int b(Bitmap bitmap) {
        return com.bumptech.glide.util.k.g(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.k
    public void c(Bitmap bitmap) {
        b bVarE = this.keyPool.e(com.bumptech.glide.util.k.g(bitmap), bitmap.getConfig());
        this.groupedMap.d(bVarE, bitmap);
        NavigableMap<Integer, Integer> navigableMapK = k(bitmap.getConfig());
        Integer num = navigableMapK.get(Integer.valueOf(bVarE.size));
        Integer numValueOf = Integer.valueOf(bVarE.size);
        int iIntValue = 1;
        if (num != null) {
            iIntValue = 1 + num.intValue();
        }
        navigableMapK.put(numValueOf, Integer.valueOf(iIntValue));
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.k
    @Nullable
    public Bitmap d(int i10, int i11, Bitmap.Config config) {
        b bVarH = h(com.bumptech.glide.util.k.f(i10, i11, config), config);
        Bitmap bitmapA = this.groupedMap.a(bVarH);
        if (bitmapA != null) {
            g(Integer.valueOf(bVarH.size), bitmapA);
            bitmapA.reconfigure(i10, i11, config);
        }
        return bitmapA;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.k
    public String e(Bitmap bitmap) {
        return i(com.bumptech.glide.util.k.g(bitmap), bitmap.getConfig());
    }
}
