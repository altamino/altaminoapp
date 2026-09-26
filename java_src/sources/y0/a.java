package y0;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.CheckResult;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.j;
import com.bumptech.glide.load.m;
import com.bumptech.glide.load.resource.bitmap.l;
import com.bumptech.glide.load.resource.bitmap.r;
import com.bumptech.glide.load.resource.bitmap.t;
import com.bumptech.glide.util.k;
import java.util.Map;
import y0.a;

/* JADX INFO: loaded from: classes10.dex */
public abstract class a<T extends a<T>> implements Cloneable {
    private static final int DISK_CACHE_STRATEGY = 4;
    private static final int ERROR_ID = 32;
    private static final int ERROR_PLACEHOLDER = 16;
    private static final int FALLBACK = 8192;
    private static final int FALLBACK_ID = 16384;
    private static final int IS_CACHEABLE = 256;
    private static final int ONLY_RETRIEVE_FROM_CACHE = 524288;
    private static final int OVERRIDE = 512;
    private static final int PLACEHOLDER = 64;
    private static final int PLACEHOLDER_ID = 128;
    private static final int PRIORITY = 8;
    private static final int RESOURCE_CLASS = 4096;
    private static final int SIGNATURE = 1024;
    private static final int SIZE_MULTIPLIER = 2;
    private static final int THEME = 32768;
    private static final int TRANSFORMATION = 2048;
    private static final int TRANSFORMATION_ALLOWED = 65536;
    private static final int TRANSFORMATION_REQUIRED = 131072;
    private static final int UNSET = -1;
    private static final int USE_ANIMATION_POOL = 1048576;
    private static final int USE_UNLIMITED_SOURCE_GENERATORS_POOL = 262144;
    private int errorId;

    @Nullable
    private Drawable errorPlaceholder;

    @Nullable
    private Drawable fallbackDrawable;
    private int fallbackId;
    private int fields;
    private boolean isAutoCloneEnabled;
    private boolean isLocked;
    private boolean isTransformationRequired;
    private boolean onlyRetrieveFromCache;

    @Nullable
    private Drawable placeholderDrawable;
    private int placeholderId;

    @Nullable
    private Resources.Theme theme;
    private boolean useAnimationPool;
    private boolean useUnlimitedSourceGeneratorsPool;
    private float sizeMultiplier = 1.0f;

    @NonNull
    private j diskCacheStrategy = j.AUTOMATIC;

    @NonNull
    private com.bumptech.glide.f priority = com.bumptech.glide.f.NORMAL;
    private boolean isCacheable = true;
    private int overrideHeight = -1;
    private int overrideWidth = -1;

    @NonNull
    private com.bumptech.glide.load.g signature = z0.a.c();
    private boolean isTransformationAllowed = true;

    @NonNull
    private com.bumptech.glide.load.i options = new com.bumptech.glide.load.i();

    @NonNull
    private Map<Class<?>, m<?>> transformations = new com.bumptech.glide.util.b();

    @NonNull
    private Class<?> resourceClass = Object.class;
    private boolean isScaleOnlyOrNoTransform = true;

    private static boolean G(int i10, int i11) {
        return (i10 & i11) != 0;
    }

    @NonNull
    private T O(@NonNull l lVar, @NonNull m<Bitmap> mVar) {
        return (T) P(lVar, mVar, true);
    }

    private T Q() {
        return this;
    }

    public final boolean A() {
        return this.useAnimationPool;
    }

    public final boolean B() {
        return this.useUnlimitedSourceGeneratorsPool;
    }

    public final boolean C() {
        return this.isCacheable;
    }

    boolean E() {
        return this.isScaleOnlyOrNoTransform;
    }

    public final boolean H() {
        return this.isTransformationRequired;
    }

    @NonNull
    public T J() {
        this.isLocked = true;
        return (T) Q();
    }

    @NonNull
    @CheckResult
    public T W(@NonNull m<Bitmap> mVar) {
        return (T) X(mVar, true);
    }

    @NonNull
    public final j j() {
        return this.diskCacheStrategy;
    }

    public final int k() {
        return this.errorId;
    }

    @Nullable
    public final Drawable l() {
        return this.errorPlaceholder;
    }

    @Nullable
    public final Drawable m() {
        return this.fallbackDrawable;
    }

    public final int n() {
        return this.fallbackId;
    }

    public final boolean o() {
        return this.onlyRetrieveFromCache;
    }

    @NonNull
    public final com.bumptech.glide.load.i p() {
        return this.options;
    }

    public final int q() {
        return this.overrideHeight;
    }

    public final int r() {
        return this.overrideWidth;
    }

    @Nullable
    public final Drawable s() {
        return this.placeholderDrawable;
    }

    public final int t() {
        return this.placeholderId;
    }

    @NonNull
    public final com.bumptech.glide.f u() {
        return this.priority;
    }

    @NonNull
    public final Class<?> v() {
        return this.resourceClass;
    }

    @NonNull
    public final com.bumptech.glide.load.g w() {
        return this.signature;
    }

    public final float x() {
        return this.sizeMultiplier;
    }

    @Nullable
    public final Resources.Theme y() {
        return this.theme;
    }

    @NonNull
    public final Map<Class<?>, m<?>> z() {
        return this.transformations;
    }

    private boolean F(int i10) {
        return G(this.fields, i10);
    }

    @NonNull
    private T P(@NonNull l lVar, @NonNull m<Bitmap> mVar, boolean z6) {
        T t5 = z6 ? (T) Y(lVar, mVar) : (T) K(lVar, mVar);
        t5.isScaleOnlyOrNoTransform = true;
        return t5;
    }

    @NonNull
    private T R() {
        if (this.isLocked) {
            throw new IllegalStateException("You cannot modify locked T, consider clone()");
        }
        return (T) Q();
    }

    public final boolean D() {
        return F(8);
    }

    public final boolean I() {
        return k.r(this.overrideWidth, this.overrideHeight);
    }

    @NonNull
    final T K(@NonNull l lVar, @NonNull m<Bitmap> mVar) {
        if (this.isAutoCloneEnabled) {
            return (T) e().K(lVar, mVar);
        }
        h(lVar);
        return (T) X(mVar, false);
    }

    @NonNull
    @CheckResult
    public T L(int i10, int i11) {
        if (this.isAutoCloneEnabled) {
            return (T) e().L(i10, i11);
        }
        this.overrideWidth = i10;
        this.overrideHeight = i11;
        this.fields |= 512;
        return (T) R();
    }

    @NonNull
    @CheckResult
    public T M(@Nullable Drawable drawable) {
        if (this.isAutoCloneEnabled) {
            return (T) e().M(drawable);
        }
        this.placeholderDrawable = drawable;
        int i10 = this.fields | 64;
        this.placeholderId = 0;
        this.fields = i10 & (-129);
        return (T) R();
    }

    @NonNull
    @CheckResult
    public T N(@NonNull com.bumptech.glide.f fVar) {
        if (this.isAutoCloneEnabled) {
            return (T) e().N(fVar);
        }
        this.priority = (com.bumptech.glide.f) com.bumptech.glide.util.j.d(fVar);
        this.fields |= 8;
        return (T) R();
    }

    @NonNull
    @CheckResult
    public <Y> T S(@NonNull com.bumptech.glide.load.h<Y> hVar, @NonNull Y y6) {
        if (this.isAutoCloneEnabled) {
            return (T) e().S(hVar, y6);
        }
        com.bumptech.glide.util.j.d(hVar);
        com.bumptech.glide.util.j.d(y6);
        this.options.e(hVar, y6);
        return (T) R();
    }

    @NonNull
    @CheckResult
    public T T(@NonNull com.bumptech.glide.load.g gVar) {
        if (this.isAutoCloneEnabled) {
            return (T) e().T(gVar);
        }
        this.signature = (com.bumptech.glide.load.g) com.bumptech.glide.util.j.d(gVar);
        this.fields |= 1024;
        return (T) R();
    }

    @NonNull
    @CheckResult
    public T U(@FloatRange float f) {
        if (this.isAutoCloneEnabled) {
            return (T) e().U(f);
        }
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.sizeMultiplier = f;
        this.fields |= 2;
        return (T) R();
    }

    @NonNull
    @CheckResult
    public T V(boolean z6) {
        if (this.isAutoCloneEnabled) {
            return (T) e().V(true);
        }
        this.isCacheable = !z6;
        this.fields |= 256;
        return (T) R();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    T X(@NonNull m<Bitmap> mVar, boolean z6) {
        if (this.isAutoCloneEnabled) {
            return (T) e().X(mVar, z6);
        }
        r rVar = new r(mVar, z6);
        Z(Bitmap.class, mVar, z6);
        Z(Drawable.class, rVar, z6);
        Z(BitmapDrawable.class, rVar.c(), z6);
        Z(com.bumptech.glide.load.resource.gif.c.class, new com.bumptech.glide.load.resource.gif.f(mVar), z6);
        return (T) R();
    }

    @NonNull
    @CheckResult
    final T Y(@NonNull l lVar, @NonNull m<Bitmap> mVar) {
        if (this.isAutoCloneEnabled) {
            return (T) e().Y(lVar, mVar);
        }
        h(lVar);
        return (T) W(mVar);
    }

    @NonNull
    <Y> T Z(@NonNull Class<Y> cls, @NonNull m<Y> mVar, boolean z6) {
        if (this.isAutoCloneEnabled) {
            return (T) e().Z(cls, mVar, z6);
        }
        com.bumptech.glide.util.j.d(cls);
        com.bumptech.glide.util.j.d(mVar);
        this.transformations.put(cls, mVar);
        int i10 = this.fields;
        this.isTransformationAllowed = true;
        this.fields = 67584 | i10;
        this.isScaleOnlyOrNoTransform = false;
        if (z6) {
            this.fields = i10 | 198656;
            this.isTransformationRequired = true;
        }
        return (T) R();
    }

    @NonNull
    @CheckResult
    public T a0(boolean z6) {
        if (this.isAutoCloneEnabled) {
            return (T) e().a0(z6);
        }
        this.useAnimationPool = z6;
        this.fields |= 1048576;
        return (T) R();
    }

    @NonNull
    @CheckResult
    public T b(@NonNull a<?> aVar) {
        if (this.isAutoCloneEnabled) {
            return (T) e().b(aVar);
        }
        if (G(aVar.fields, 2)) {
            this.sizeMultiplier = aVar.sizeMultiplier;
        }
        if (G(aVar.fields, 262144)) {
            this.useUnlimitedSourceGeneratorsPool = aVar.useUnlimitedSourceGeneratorsPool;
        }
        if (G(aVar.fields, 1048576)) {
            this.useAnimationPool = aVar.useAnimationPool;
        }
        if (G(aVar.fields, 4)) {
            this.diskCacheStrategy = aVar.diskCacheStrategy;
        }
        if (G(aVar.fields, 8)) {
            this.priority = aVar.priority;
        }
        if (G(aVar.fields, 16)) {
            this.errorPlaceholder = aVar.errorPlaceholder;
            this.errorId = 0;
            this.fields &= -33;
        }
        if (G(aVar.fields, 32)) {
            this.errorId = aVar.errorId;
            this.errorPlaceholder = null;
            this.fields &= -17;
        }
        if (G(aVar.fields, 64)) {
            this.placeholderDrawable = aVar.placeholderDrawable;
            this.placeholderId = 0;
            this.fields &= -129;
        }
        if (G(aVar.fields, 128)) {
            this.placeholderId = aVar.placeholderId;
            this.placeholderDrawable = null;
            this.fields &= -65;
        }
        if (G(aVar.fields, 256)) {
            this.isCacheable = aVar.isCacheable;
        }
        if (G(aVar.fields, 512)) {
            this.overrideWidth = aVar.overrideWidth;
            this.overrideHeight = aVar.overrideHeight;
        }
        if (G(aVar.fields, 1024)) {
            this.signature = aVar.signature;
        }
        if (G(aVar.fields, 4096)) {
            this.resourceClass = aVar.resourceClass;
        }
        if (G(aVar.fields, 8192)) {
            this.fallbackDrawable = aVar.fallbackDrawable;
            this.fallbackId = 0;
            this.fields &= -16385;
        }
        if (G(aVar.fields, 16384)) {
            this.fallbackId = aVar.fallbackId;
            this.fallbackDrawable = null;
            this.fields &= -8193;
        }
        if (G(aVar.fields, 32768)) {
            this.theme = aVar.theme;
        }
        if (G(aVar.fields, 65536)) {
            this.isTransformationAllowed = aVar.isTransformationAllowed;
        }
        if (G(aVar.fields, 131072)) {
            this.isTransformationRequired = aVar.isTransformationRequired;
        }
        if (G(aVar.fields, 2048)) {
            this.transformations.putAll(aVar.transformations);
            this.isScaleOnlyOrNoTransform = aVar.isScaleOnlyOrNoTransform;
        }
        if (G(aVar.fields, 524288)) {
            this.onlyRetrieveFromCache = aVar.onlyRetrieveFromCache;
        }
        if (!this.isTransformationAllowed) {
            this.transformations.clear();
            int i10 = this.fields;
            this.isTransformationRequired = false;
            this.fields = i10 & (-133121);
            this.isScaleOnlyOrNoTransform = true;
        }
        this.fields |= aVar.fields;
        this.options.d(aVar.options);
        return (T) R();
    }

    @NonNull
    public T c() {
        if (this.isLocked && !this.isAutoCloneEnabled) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        this.isAutoCloneEnabled = true;
        return (T) J();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Float.compare(aVar.sizeMultiplier, this.sizeMultiplier) == 0 && this.errorId == aVar.errorId && k.c(this.errorPlaceholder, aVar.errorPlaceholder) && this.placeholderId == aVar.placeholderId && k.c(this.placeholderDrawable, aVar.placeholderDrawable) && this.fallbackId == aVar.fallbackId && k.c(this.fallbackDrawable, aVar.fallbackDrawable) && this.isCacheable == aVar.isCacheable && this.overrideHeight == aVar.overrideHeight && this.overrideWidth == aVar.overrideWidth && this.isTransformationRequired == aVar.isTransformationRequired && this.isTransformationAllowed == aVar.isTransformationAllowed && this.useUnlimitedSourceGeneratorsPool == aVar.useUnlimitedSourceGeneratorsPool && this.onlyRetrieveFromCache == aVar.onlyRetrieveFromCache && this.diskCacheStrategy.equals(aVar.diskCacheStrategy) && this.priority == aVar.priority && this.options.equals(aVar.options) && this.transformations.equals(aVar.transformations) && this.resourceClass.equals(aVar.resourceClass) && k.c(this.signature, aVar.signature) && k.c(this.theme, aVar.theme);
    }

    @NonNull
    @CheckResult
    public T f(@NonNull Class<?> cls) {
        if (this.isAutoCloneEnabled) {
            return (T) e().f(cls);
        }
        this.resourceClass = (Class) com.bumptech.glide.util.j.d(cls);
        this.fields |= 4096;
        return (T) R();
    }

    @NonNull
    @CheckResult
    public T g(@NonNull j jVar) {
        if (this.isAutoCloneEnabled) {
            return (T) e().g(jVar);
        }
        this.diskCacheStrategy = (j) com.bumptech.glide.util.j.d(jVar);
        this.fields |= 4;
        return (T) R();
    }

    @NonNull
    @CheckResult
    public T h(@NonNull l lVar) {
        return (T) S(l.OPTION, com.bumptech.glide.util.j.d(lVar));
    }

    public int hashCode() {
        return k.m(this.theme, k.m(this.signature, k.m(this.resourceClass, k.m(this.transformations, k.m(this.options, k.m(this.priority, k.m(this.diskCacheStrategy, k.n(this.onlyRetrieveFromCache, k.n(this.useUnlimitedSourceGeneratorsPool, k.n(this.isTransformationAllowed, k.n(this.isTransformationRequired, k.l(this.overrideWidth, k.l(this.overrideHeight, k.n(this.isCacheable, k.m(this.fallbackDrawable, k.l(this.fallbackId, k.m(this.placeholderDrawable, k.l(this.placeholderId, k.m(this.errorPlaceholder, k.l(this.errorId, k.j(this.sizeMultiplier)))))))))))))))))))));
    }

    @NonNull
    @CheckResult
    public T i() {
        return (T) O(l.FIT_CENTER, new t());
    }

    @Override // 
    @CheckResult
    public T e() {
        try {
            T t5 = (T) super.clone();
            com.bumptech.glide.load.i iVar = new com.bumptech.glide.load.i();
            t5.options = iVar;
            iVar.d(this.options);
            com.bumptech.glide.util.b bVar = new com.bumptech.glide.util.b();
            t5.transformations = bVar;
            bVar.putAll(this.transformations);
            t5.isLocked = false;
            t5.isAutoCloneEnabled = false;
            return t5;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }
}
