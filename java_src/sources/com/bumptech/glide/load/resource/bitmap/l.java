package com.bumptech.glide.load.resource.bitmap;

/* JADX INFO: loaded from: classes11.dex */
public abstract class l {
    public static final l CENTER_OUTSIDE;
    public static final l DEFAULT;
    static final boolean IS_BITMAP_FACTORY_SCALING_SUPPORTED;
    public static final l NONE;
    public static final com.bumptech.glide.load.h<l> OPTION;
    public static final l AT_LEAST = new a();
    public static final l AT_MOST = new b();
    public static final l FIT_CENTER = new e();
    public static final l CENTER_INSIDE = new c();

    private static class a extends l {
        @Override // com.bumptech.glide.load.resource.bitmap.l
        public float b(int i10, int i11, int i12, int i13) {
            int iMin = Math.min(i11 / i13, i10 / i12);
            if (iMin == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(iMin);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.l
        public g a(int i10, int i11, int i12, int i13) {
            return g.QUALITY;
        }

        a() {
        }
    }

    private static class b extends l {
        @Override // com.bumptech.glide.load.resource.bitmap.l
        public float b(int i10, int i11, int i12, int i13) {
            int iCeil = (int) Math.ceil(Math.max(i11 / i13, i10 / i12));
            int iMax = Math.max(1, Integer.highestOneBit(iCeil));
            return 1.0f / (iMax << (iMax >= iCeil ? 0 : 1));
        }

        @Override // com.bumptech.glide.load.resource.bitmap.l
        public g a(int i10, int i11, int i12, int i13) {
            return g.MEMORY;
        }

        b() {
        }
    }

    private static class c extends l {
        @Override // com.bumptech.glide.load.resource.bitmap.l
        public float b(int i10, int i11, int i12, int i13) {
            return Math.min(1.0f, l.FIT_CENTER.b(i10, i11, i12, i13));
        }

        c() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.l
        public g a(int i10, int i11, int i12, int i13) {
            if (b(i10, i11, i12, i13) == 1.0f) {
                return g.QUALITY;
            }
            return l.FIT_CENTER.a(i10, i11, i12, i13);
        }
    }

    private static class d extends l {
        @Override // com.bumptech.glide.load.resource.bitmap.l
        public float b(int i10, int i11, int i12, int i13) {
            return Math.max(i12 / i10, i13 / i11);
        }

        @Override // com.bumptech.glide.load.resource.bitmap.l
        public g a(int i10, int i11, int i12, int i13) {
            return g.QUALITY;
        }

        d() {
        }
    }

    private static class e extends l {
        @Override // com.bumptech.glide.load.resource.bitmap.l
        public g a(int i10, int i11, int i12, int i13) {
            return l.IS_BITMAP_FACTORY_SCALING_SUPPORTED ? g.QUALITY : g.MEMORY;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.l
        public float b(int i10, int i11, int i12, int i13) {
            if (l.IS_BITMAP_FACTORY_SCALING_SUPPORTED) {
                return Math.min(i12 / i10, i13 / i11);
            }
            int iMax = Math.max(i11 / i13, i10 / i12);
            if (iMax == 0) {
                return 1.0f;
            }
            return 1.0f / Integer.highestOneBit(iMax);
        }

        e() {
        }
    }

    private static class f extends l {
        @Override // com.bumptech.glide.load.resource.bitmap.l
        public float b(int i10, int i11, int i12, int i13) {
            return 1.0f;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.l
        public g a(int i10, int i11, int i12, int i13) {
            return g.QUALITY;
        }

        f() {
        }
    }

    public enum g {
        MEMORY,
        QUALITY
    }

    public abstract g a(int i10, int i11, int i12, int i13);

    public abstract float b(int i10, int i11, int i12, int i13);

    static {
        d dVar = new d();
        CENTER_OUTSIDE = dVar;
        NONE = new f();
        DEFAULT = dVar;
        OPTION = com.bumptech.glide.load.h.f("com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy", dVar);
        IS_BITMAP_FACTORY_SCALING_SUPPORTED = true;
    }
}
