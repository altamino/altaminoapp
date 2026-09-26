package coil.request;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.annotation.MainThread;
import androidx.lifecycle.Lifecycle;
import coil.memory.MemoryCache;
import java.util.List;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.k0;
import okhttp3.Headers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.u;

/* JADX INFO: loaded from: classes4.dex */
public final class h {
    private final boolean allowConversionToBitmap;
    private final boolean allowHardware;
    private final boolean allowRgb565;

    @NotNull
    private final Bitmap.Config bitmapConfig;

    @Nullable
    private final ColorSpace colorSpace;

    @NotNull
    private final Context context;

    @NotNull
    private final Object data;

    @NotNull
    private final k0 decoderDispatcher;

    @Nullable
    private final coil.decode.i.a decoderFactory;

    @NotNull
    private final coil.request.b defaults;

    @NotNull
    private final c defined;

    @Nullable
    private final String diskCacheKey;

    @NotNull
    private final coil.request.a diskCachePolicy;

    @Nullable
    private final Drawable errorDrawable;

    @Nullable
    private final Integer errorResId;

    @Nullable
    private final Drawable fallbackDrawable;

    @Nullable
    private final Integer fallbackResId;

    @NotNull
    private final k0 fetcherDispatcher;

    @Nullable
    private final u<coil.fetch.i.a<?>, Class<?>> fetcherFactory;

    @NotNull
    private final Headers headers;

    @NotNull
    private final k0 interceptorDispatcher;

    @NotNull
    private final Lifecycle lifecycle;

    @Nullable
    private final b listener;

    @Nullable
    private final MemoryCache.Key memoryCacheKey;

    @NotNull
    private final coil.request.a memoryCachePolicy;

    @NotNull
    private final coil.request.a networkCachePolicy;

    @NotNull
    private final n parameters;

    @Nullable
    private final Drawable placeholderDrawable;

    @Nullable
    private final MemoryCache.Key placeholderMemoryCacheKey;

    @Nullable
    private final Integer placeholderResId;

    @NotNull
    private final coil.size.e precision;
    private final boolean premultipliedAlpha;

    @NotNull
    private final coil.size.h scale;

    @NotNull
    private final coil.size.j sizeResolver;

    @NotNull
    private final q tags;

    @Nullable
    private final f0.a target;

    @NotNull
    private final k0 transformationDispatcher;

    @NotNull
    private final List<g0.a> transformations;

    @NotNull
    private final coil.transition.c.a transitionFactory;

    public static final class a {
        private boolean allowConversionToBitmap;

        @Nullable
        private Boolean allowHardware;

        @Nullable
        private Boolean allowRgb565;

        @Nullable
        private Bitmap.Config bitmapConfig;

        @Nullable
        private ColorSpace colorSpace;

        @NotNull
        private final Context context;

        @Nullable
        private Object data;

        @Nullable
        private k0 decoderDispatcher;

        @Nullable
        private coil.decode.i.a decoderFactory;

        @NotNull
        private coil.request.b defaults;

        @Nullable
        private String diskCacheKey;

        @Nullable
        private coil.request.a diskCachePolicy;

        @Nullable
        private Drawable errorDrawable;

        @DrawableRes
        @Nullable
        private Integer errorResId;

        @Nullable
        private Drawable fallbackDrawable;

        @DrawableRes
        @Nullable
        private Integer fallbackResId;

        @Nullable
        private k0 fetcherDispatcher;

        @Nullable
        private u<? extends coil.fetch.i.a<?>, ? extends Class<?>> fetcherFactory;

        @Nullable
        private Headers.Builder headers;

        @Nullable
        private k0 interceptorDispatcher;

        @Nullable
        private Lifecycle lifecycle;

        @Nullable
        private b listener;

        @Nullable
        private MemoryCache.Key memoryCacheKey;

        @Nullable
        private coil.request.a memoryCachePolicy;

        @Nullable
        private coil.request.a networkCachePolicy;

        @Nullable
        private n.a parameters;

        @Nullable
        private Drawable placeholderDrawable;

        @Nullable
        private MemoryCache.Key placeholderMemoryCacheKey;

        @DrawableRes
        @Nullable
        private Integer placeholderResId;

        @Nullable
        private coil.size.e precision;
        private boolean premultipliedAlpha;

        @Nullable
        private Lifecycle resolvedLifecycle;

        @Nullable
        private coil.size.h resolvedScale;

        @Nullable
        private coil.size.j resolvedSizeResolver;

        @Nullable
        private coil.size.h scale;

        @Nullable
        private coil.size.j sizeResolver;

        @Nullable
        private Map<Class<?>, Object> tags;

        @Nullable
        private f0.a target;

        @Nullable
        private k0 transformationDispatcher;

        @NotNull
        private List<? extends g0.a> transformations;

        @Nullable
        private coil.transition.c.a transitionFactory;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull h hVar) {
            this(hVar, null, 2, 0 == true ? 1 : 0);
        }

        private final void e() {
            this.resolvedScale = null;
        }

        private final void f() {
            this.resolvedLifecycle = null;
            this.resolvedSizeResolver = null;
            this.resolvedScale = null;
        }

        @NotNull
        public final a b(@Nullable Object obj) {
            this.data = obj;
            return this;
        }

        @NotNull
        public final a d(@NotNull coil.size.e eVar) {
            this.precision = eVar;
            return this;
        }

        @NotNull
        public final a j(@NotNull coil.size.h hVar) {
            this.scale = hVar;
            return this;
        }

        public a(@NotNull Context context) {
            this.context = context;
            this.defaults = coil.util.h.b();
            this.data = null;
            this.target = null;
            this.listener = null;
            this.memoryCacheKey = null;
            this.diskCacheKey = null;
            this.bitmapConfig = null;
            if (Build.VERSION.SDK_INT >= 26) {
                this.colorSpace = null;
            }
            this.precision = null;
            this.fetcherFactory = null;
            this.decoderFactory = null;
            this.transformations = v.m();
            this.transitionFactory = null;
            this.headers = null;
            this.tags = null;
            this.allowConversionToBitmap = true;
            this.allowHardware = null;
            this.allowRgb565 = null;
            this.premultipliedAlpha = true;
            this.memoryCachePolicy = null;
            this.diskCachePolicy = null;
            this.networkCachePolicy = null;
            this.interceptorDispatcher = null;
            this.fetcherDispatcher = null;
            this.decoderDispatcher = null;
            this.transformationDispatcher = null;
            this.parameters = null;
            this.placeholderMemoryCacheKey = null;
            this.placeholderResId = null;
            this.placeholderDrawable = null;
            this.errorResId = null;
            this.errorDrawable = null;
            this.fallbackResId = null;
            this.fallbackDrawable = null;
            this.lifecycle = null;
            this.sizeResolver = null;
            this.scale = null;
            this.resolvedLifecycle = null;
            this.resolvedSizeResolver = null;
            this.resolvedScale = null;
        }

        private final Lifecycle g() {
            f0.a aVar = this.target;
            Lifecycle lifecycleC = coil.util.d.c(aVar instanceof f0.b ? ((f0.b) aVar).getView().getContext() : this.context);
            return lifecycleC == null ? g.INSTANCE : lifecycleC;
        }

        private final coil.size.h h() {
            View view;
            coil.size.j jVar = this.sizeResolver;
            View view2 = null;
            coil.size.l lVar = jVar instanceof coil.size.l ? (coil.size.l) jVar : null;
            if (lVar == null || (view = lVar.getView()) == null) {
                f0.a aVar = this.target;
                f0.b bVar = aVar instanceof f0.b ? (f0.b) aVar : null;
                if (bVar != null) {
                    view2 = bVar.getView();
                }
            } else {
                view2 = view;
            }
            return view2 instanceof ImageView ? coil.util.i.p((ImageView) view2) : coil.size.h.FIT;
        }

        private final coil.size.j i() {
            ImageView.ScaleType scaleType;
            f0.a aVar = this.target;
            if (!(aVar instanceof f0.b)) {
                return new coil.size.d(this.context);
            }
            View view = ((f0.b) aVar).getView();
            return ((view instanceof ImageView) && ((scaleType = ((ImageView) view).getScaleType()) == ImageView.ScaleType.CENTER || scaleType == ImageView.ScaleType.MATRIX)) ? coil.size.k.a(coil.size.i.ORIGINAL) : coil.size.m.b(view, false, 2, null);
        }

        @NotNull
        public final h a() {
            Context context = this.context;
            Object obj = this.data;
            if (obj == null) {
                obj = j.INSTANCE;
            }
            Object obj2 = obj;
            f0.a aVar = this.target;
            b bVar = this.listener;
            MemoryCache.Key key = this.memoryCacheKey;
            String str = this.diskCacheKey;
            Bitmap.Config configC = this.bitmapConfig;
            if (configC == null) {
                configC = this.defaults.c();
            }
            Bitmap.Config config = configC;
            ColorSpace colorSpace = this.colorSpace;
            coil.size.e eVarM = this.precision;
            if (eVarM == null) {
                eVarM = this.defaults.m();
            }
            coil.size.e eVar = eVarM;
            u<? extends coil.fetch.i.a<?>, ? extends Class<?>> uVar = this.fetcherFactory;
            coil.decode.i.a aVar2 = this.decoderFactory;
            List<? extends g0.a> list = this.transformations;
            coil.transition.c.a aVarO = this.transitionFactory;
            if (aVarO == null) {
                aVarO = this.defaults.o();
            }
            coil.transition.c.a aVar3 = aVarO;
            Headers.Builder builder = this.headers;
            Headers headersZ = coil.util.i.z(builder != null ? builder.build() : null);
            Map<Class<?>, ? extends Object> map = this.tags;
            q qVarY = coil.util.i.y(map != null ? q.Companion.a(map) : null);
            boolean z6 = this.allowConversionToBitmap;
            Boolean bool = this.allowHardware;
            boolean zBooleanValue = bool != null ? bool.booleanValue() : this.defaults.a();
            Boolean bool2 = this.allowRgb565;
            boolean zBooleanValue2 = bool2 != null ? bool2.booleanValue() : this.defaults.b();
            boolean z10 = this.premultipliedAlpha;
            coil.request.a aVarJ = this.memoryCachePolicy;
            if (aVarJ == null) {
                aVarJ = this.defaults.j();
            }
            coil.request.a aVar4 = aVarJ;
            coil.request.a aVarE = this.diskCachePolicy;
            if (aVarE == null) {
                aVarE = this.defaults.e();
            }
            coil.request.a aVar5 = aVarE;
            coil.request.a aVarK = this.networkCachePolicy;
            if (aVarK == null) {
                aVarK = this.defaults.k();
            }
            coil.request.a aVar6 = aVarK;
            k0 k0VarI = this.interceptorDispatcher;
            if (k0VarI == null) {
                k0VarI = this.defaults.i();
            }
            k0 k0Var = k0VarI;
            k0 k0VarH = this.fetcherDispatcher;
            if (k0VarH == null) {
                k0VarH = this.defaults.h();
            }
            k0 k0Var2 = k0VarH;
            k0 k0VarD = this.decoderDispatcher;
            if (k0VarD == null) {
                k0VarD = this.defaults.d();
            }
            k0 k0Var3 = k0VarD;
            k0 k0VarN = this.transformationDispatcher;
            if (k0VarN == null) {
                k0VarN = this.defaults.n();
            }
            k0 k0Var4 = k0VarN;
            Lifecycle lifecycleG = this.lifecycle;
            if (lifecycleG == null && (lifecycleG = this.resolvedLifecycle) == null) {
                lifecycleG = g();
            }
            Lifecycle lifecycle = lifecycleG;
            coil.size.j jVarI = this.sizeResolver;
            if (jVarI == null && (jVarI = this.resolvedSizeResolver) == null) {
                jVarI = i();
            }
            coil.size.j jVar = jVarI;
            coil.size.h hVarH = this.scale;
            if (hVarH == null && (hVarH = this.resolvedScale) == null) {
                hVarH = h();
            }
            coil.size.h hVar = hVarH;
            n.a aVar7 = this.parameters;
            return new h(context, obj2, aVar, bVar, key, str, config, colorSpace, eVar, uVar, aVar2, list, aVar3, headersZ, qVarY, z6, zBooleanValue, zBooleanValue2, z10, aVar4, aVar5, aVar6, k0Var, k0Var2, k0Var3, k0Var4, lifecycle, jVar, hVar, coil.util.i.x(aVar7 != null ? aVar7.a() : null), this.placeholderMemoryCacheKey, this.placeholderResId, this.placeholderDrawable, this.errorResId, this.errorDrawable, this.fallbackResId, this.fallbackDrawable, new c(this.lifecycle, this.sizeResolver, this.scale, this.interceptorDispatcher, this.fetcherDispatcher, this.decoderDispatcher, this.transformationDispatcher, this.transitionFactory, this.precision, this.bitmapConfig, this.allowHardware, this.allowRgb565, this.memoryCachePolicy, this.diskCachePolicy, this.networkCachePolicy), this.defaults, null);
        }

        @NotNull
        public final a c(@NotNull coil.request.b bVar) {
            this.defaults = bVar;
            e();
            return this;
        }

        @NotNull
        public final a k(@NotNull coil.size.j jVar) {
            this.sizeResolver = jVar;
            f();
            return this;
        }

        @NotNull
        public final a l(@Nullable f0.a aVar) {
            this.target = aVar;
            f();
            return this;
        }

        public a(@NotNull h hVar, @NotNull Context context) {
            this.context = context;
            this.defaults = hVar.p();
            this.data = hVar.m();
            this.target = hVar.M();
            this.listener = hVar.A();
            this.memoryCacheKey = hVar.B();
            this.diskCacheKey = hVar.r();
            this.bitmapConfig = hVar.q().c();
            if (Build.VERSION.SDK_INT >= 26) {
                this.colorSpace = hVar.k();
            }
            this.precision = hVar.q().k();
            this.fetcherFactory = hVar.w();
            this.decoderFactory = hVar.o();
            this.transformations = hVar.O();
            this.transitionFactory = hVar.q().o();
            this.headers = hVar.x().newBuilder();
            this.tags = s0.A(hVar.L().a());
            this.allowConversionToBitmap = hVar.g();
            this.allowHardware = hVar.q().a();
            this.allowRgb565 = hVar.q().b();
            this.premultipliedAlpha = hVar.I();
            this.memoryCachePolicy = hVar.q().i();
            this.diskCachePolicy = hVar.q().e();
            this.networkCachePolicy = hVar.q().j();
            this.interceptorDispatcher = hVar.q().g();
            this.fetcherDispatcher = hVar.q().f();
            this.decoderDispatcher = hVar.q().d();
            this.transformationDispatcher = hVar.q().n();
            this.parameters = hVar.E().e();
            this.placeholderMemoryCacheKey = hVar.G();
            this.placeholderResId = hVar.placeholderResId;
            this.placeholderDrawable = hVar.placeholderDrawable;
            this.errorResId = hVar.errorResId;
            this.errorDrawable = hVar.errorDrawable;
            this.fallbackResId = hVar.fallbackResId;
            this.fallbackDrawable = hVar.fallbackDrawable;
            this.lifecycle = hVar.q().h();
            this.sizeResolver = hVar.q().m();
            this.scale = hVar.q().l();
            if (hVar.l() == context) {
                this.resolvedLifecycle = hVar.z();
                this.resolvedSizeResolver = hVar.K();
                this.resolvedScale = hVar.J();
            } else {
                this.resolvedLifecycle = null;
                this.resolvedSizeResolver = null;
                this.resolvedScale = null;
            }
        }

        public /* synthetic */ a(h hVar, Context context, int i10, kotlin.jvm.internal.k kVar) {
            this(hVar, (i10 & 2) != 0 ? hVar.l() : context);
        }
    }

    public interface b {
        @MainThread
        void a(@NotNull h hVar);

        @MainThread
        void b(@NotNull h hVar);

        @MainThread
        void c(@NotNull h hVar, @NotNull e eVar);

        @MainThread
        void d(@NotNull h hVar, @NotNull p pVar);
    }

    public /* synthetic */ h(Context context, Object obj, f0.a aVar, b bVar, MemoryCache.Key key, String str, Bitmap.Config config, ColorSpace colorSpace, coil.size.e eVar, u uVar, coil.decode.i.a aVar2, List list, coil.transition.c.a aVar3, Headers headers, q qVar, boolean z6, boolean z10, boolean z11, boolean z12, coil.request.a aVar4, coil.request.a aVar5, coil.request.a aVar6, k0 k0Var, k0 k0Var2, k0 k0Var3, k0 k0Var4, Lifecycle lifecycle, coil.size.j jVar, coil.size.h hVar, n nVar, MemoryCache.Key key2, Integer num, Drawable drawable, Integer num2, Drawable drawable2, Integer num3, Drawable drawable3, c cVar, coil.request.b bVar2, kotlin.jvm.internal.k kVar) {
        this(context, obj, aVar, bVar, key, str, config, colorSpace, eVar, uVar, aVar2, list, aVar3, headers, qVar, z6, z10, z11, z12, aVar4, aVar5, aVar6, k0Var, k0Var2, k0Var3, k0Var4, lifecycle, jVar, hVar, nVar, key2, num, drawable, num2, drawable2, num3, drawable3, cVar, bVar2);
    }

    @Nullable
    public final b A() {
        return this.listener;
    }

    @Nullable
    public final MemoryCache.Key B() {
        return this.memoryCacheKey;
    }

    @NotNull
    public final coil.request.a C() {
        return this.memoryCachePolicy;
    }

    @NotNull
    public final coil.request.a D() {
        return this.networkCachePolicy;
    }

    @NotNull
    public final n E() {
        return this.parameters;
    }

    @Nullable
    public final MemoryCache.Key G() {
        return this.placeholderMemoryCacheKey;
    }

    @NotNull
    public final coil.size.e H() {
        return this.precision;
    }

    public final boolean I() {
        return this.premultipliedAlpha;
    }

    @NotNull
    public final coil.size.h J() {
        return this.scale;
    }

    @NotNull
    public final coil.size.j K() {
        return this.sizeResolver;
    }

    @NotNull
    public final q L() {
        return this.tags;
    }

    @Nullable
    public final f0.a M() {
        return this.target;
    }

    @NotNull
    public final k0 N() {
        return this.transformationDispatcher;
    }

    @NotNull
    public final List<g0.a> O() {
        return this.transformations;
    }

    @NotNull
    public final coil.transition.c.a P() {
        return this.transitionFactory;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            if (t.e(this.context, hVar.context) && t.e(this.data, hVar.data) && t.e(this.target, hVar.target) && t.e(this.listener, hVar.listener) && t.e(this.memoryCacheKey, hVar.memoryCacheKey) && t.e(this.diskCacheKey, hVar.diskCacheKey) && this.bitmapConfig == hVar.bitmapConfig && ((Build.VERSION.SDK_INT < 26 || t.e(this.colorSpace, hVar.colorSpace)) && this.precision == hVar.precision && t.e(this.fetcherFactory, hVar.fetcherFactory) && t.e(this.decoderFactory, hVar.decoderFactory) && t.e(this.transformations, hVar.transformations) && t.e(this.transitionFactory, hVar.transitionFactory) && t.e(this.headers, hVar.headers) && t.e(this.tags, hVar.tags) && this.allowConversionToBitmap == hVar.allowConversionToBitmap && this.allowHardware == hVar.allowHardware && this.allowRgb565 == hVar.allowRgb565 && this.premultipliedAlpha == hVar.premultipliedAlpha && this.memoryCachePolicy == hVar.memoryCachePolicy && this.diskCachePolicy == hVar.diskCachePolicy && this.networkCachePolicy == hVar.networkCachePolicy && t.e(this.interceptorDispatcher, hVar.interceptorDispatcher) && t.e(this.fetcherDispatcher, hVar.fetcherDispatcher) && t.e(this.decoderDispatcher, hVar.decoderDispatcher) && t.e(this.transformationDispatcher, hVar.transformationDispatcher) && t.e(this.placeholderMemoryCacheKey, hVar.placeholderMemoryCacheKey) && t.e(this.placeholderResId, hVar.placeholderResId) && t.e(this.placeholderDrawable, hVar.placeholderDrawable) && t.e(this.errorResId, hVar.errorResId) && t.e(this.errorDrawable, hVar.errorDrawable) && t.e(this.fallbackResId, hVar.fallbackResId) && t.e(this.fallbackDrawable, hVar.fallbackDrawable) && t.e(this.lifecycle, hVar.lifecycle) && t.e(this.sizeResolver, hVar.sizeResolver) && this.scale == hVar.scale && t.e(this.parameters, hVar.parameters) && t.e(this.defined, hVar.defined) && t.e(this.defaults, hVar.defaults))) {
                return true;
            }
        }
        return false;
    }

    public final boolean g() {
        return this.allowConversionToBitmap;
    }

    public final boolean h() {
        return this.allowHardware;
    }

    public final boolean i() {
        return this.allowRgb565;
    }

    @NotNull
    public final Bitmap.Config j() {
        return this.bitmapConfig;
    }

    @Nullable
    public final ColorSpace k() {
        return this.colorSpace;
    }

    @NotNull
    public final Context l() {
        return this.context;
    }

    @NotNull
    public final Object m() {
        return this.data;
    }

    @NotNull
    public final k0 n() {
        return this.decoderDispatcher;
    }

    @Nullable
    public final coil.decode.i.a o() {
        return this.decoderFactory;
    }

    @NotNull
    public final coil.request.b p() {
        return this.defaults;
    }

    @NotNull
    public final c q() {
        return this.defined;
    }

    @Nullable
    public final String r() {
        return this.diskCacheKey;
    }

    @NotNull
    public final coil.request.a s() {
        return this.diskCachePolicy;
    }

    @NotNull
    public final k0 v() {
        return this.fetcherDispatcher;
    }

    @Nullable
    public final u<coil.fetch.i.a<?>, Class<?>> w() {
        return this.fetcherFactory;
    }

    @NotNull
    public final Headers x() {
        return this.headers;
    }

    @NotNull
    public final k0 y() {
        return this.interceptorDispatcher;
    }

    @NotNull
    public final Lifecycle z() {
        return this.lifecycle;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private h(Context context, Object obj, f0.a aVar, b bVar, MemoryCache.Key key, String str, Bitmap.Config config, ColorSpace colorSpace, coil.size.e eVar, u<? extends coil.fetch.i.a<?>, ? extends Class<?>> uVar, coil.decode.i.a aVar2, List<? extends g0.a> list, coil.transition.c.a aVar3, Headers headers, q qVar, boolean z6, boolean z10, boolean z11, boolean z12, coil.request.a aVar4, coil.request.a aVar5, coil.request.a aVar6, k0 k0Var, k0 k0Var2, k0 k0Var3, k0 k0Var4, Lifecycle lifecycle, coil.size.j jVar, coil.size.h hVar, n nVar, MemoryCache.Key key2, Integer num, Drawable drawable, Integer num2, Drawable drawable2, Integer num3, Drawable drawable3, c cVar, coil.request.b bVar2) {
        this.context = context;
        this.data = obj;
        this.target = aVar;
        this.listener = bVar;
        this.memoryCacheKey = key;
        this.diskCacheKey = str;
        this.bitmapConfig = config;
        this.colorSpace = colorSpace;
        this.precision = eVar;
        this.fetcherFactory = uVar;
        this.decoderFactory = aVar2;
        this.transformations = list;
        this.transitionFactory = aVar3;
        this.headers = headers;
        this.tags = qVar;
        this.allowConversionToBitmap = z6;
        this.allowHardware = z10;
        this.allowRgb565 = z11;
        this.premultipliedAlpha = z12;
        this.memoryCachePolicy = aVar4;
        this.diskCachePolicy = aVar5;
        this.networkCachePolicy = aVar6;
        this.interceptorDispatcher = k0Var;
        this.fetcherDispatcher = k0Var2;
        this.decoderDispatcher = k0Var3;
        this.transformationDispatcher = k0Var4;
        this.lifecycle = lifecycle;
        this.sizeResolver = jVar;
        this.scale = hVar;
        this.parameters = nVar;
        this.placeholderMemoryCacheKey = key2;
        this.placeholderResId = num;
        this.placeholderDrawable = drawable;
        this.errorResId = num2;
        this.errorDrawable = drawable2;
        this.fallbackResId = num3;
        this.fallbackDrawable = drawable3;
        this.defined = cVar;
        this.defaults = bVar2;
    }

    public static /* synthetic */ a R(h hVar, Context context, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            context = hVar.context;
        }
        return hVar.Q(context);
    }

    @Nullable
    public final Drawable F() {
        return coil.util.h.c(this, this.placeholderDrawable, this.placeholderResId, this.defaults.l());
    }

    @NotNull
    public final a Q(@NotNull Context context) {
        return new a(this, context);
    }

    public int hashCode() {
        int iHashCode = ((this.context.hashCode() * 31) + this.data.hashCode()) * 31;
        f0.a aVar = this.target;
        int iHashCode2 = (iHashCode + (aVar != null ? aVar.hashCode() : 0)) * 31;
        b bVar = this.listener;
        int iHashCode3 = (iHashCode2 + (bVar != null ? bVar.hashCode() : 0)) * 31;
        MemoryCache.Key key = this.memoryCacheKey;
        int iHashCode4 = (iHashCode3 + (key != null ? key.hashCode() : 0)) * 31;
        String str = this.diskCacheKey;
        int iHashCode5 = (((iHashCode4 + (str != null ? str.hashCode() : 0)) * 31) + this.bitmapConfig.hashCode()) * 31;
        ColorSpace colorSpace = this.colorSpace;
        int iHashCode6 = (((iHashCode5 + (colorSpace != null ? colorSpace.hashCode() : 0)) * 31) + this.precision.hashCode()) * 31;
        u<coil.fetch.i.a<?>, Class<?>> uVar = this.fetcherFactory;
        int iHashCode7 = (iHashCode6 + (uVar != null ? uVar.hashCode() : 0)) * 31;
        coil.decode.i.a aVar2 = this.decoderFactory;
        int iHashCode8 = (((((((((((((((((((((((((((((((((((((((iHashCode7 + (aVar2 != null ? aVar2.hashCode() : 0)) * 31) + this.transformations.hashCode()) * 31) + this.transitionFactory.hashCode()) * 31) + this.headers.hashCode()) * 31) + this.tags.hashCode()) * 31) + androidx.compose.foundation.c.a(this.allowConversionToBitmap)) * 31) + androidx.compose.foundation.c.a(this.allowHardware)) * 31) + androidx.compose.foundation.c.a(this.allowRgb565)) * 31) + androidx.compose.foundation.c.a(this.premultipliedAlpha)) * 31) + this.memoryCachePolicy.hashCode()) * 31) + this.diskCachePolicy.hashCode()) * 31) + this.networkCachePolicy.hashCode()) * 31) + this.interceptorDispatcher.hashCode()) * 31) + this.fetcherDispatcher.hashCode()) * 31) + this.decoderDispatcher.hashCode()) * 31) + this.transformationDispatcher.hashCode()) * 31) + this.lifecycle.hashCode()) * 31) + this.sizeResolver.hashCode()) * 31) + this.scale.hashCode()) * 31) + this.parameters.hashCode()) * 31;
        MemoryCache.Key key2 = this.placeholderMemoryCacheKey;
        int iHashCode9 = (iHashCode8 + (key2 != null ? key2.hashCode() : 0)) * 31;
        Integer num = this.placeholderResId;
        int iHashCode10 = (iHashCode9 + (num != null ? num.hashCode() : 0)) * 31;
        Drawable drawable = this.placeholderDrawable;
        int iHashCode11 = (iHashCode10 + (drawable != null ? drawable.hashCode() : 0)) * 31;
        Integer num2 = this.errorResId;
        int iHashCode12 = (iHashCode11 + (num2 != null ? num2.hashCode() : 0)) * 31;
        Drawable drawable2 = this.errorDrawable;
        int iHashCode13 = (iHashCode12 + (drawable2 != null ? drawable2.hashCode() : 0)) * 31;
        Integer num3 = this.fallbackResId;
        int iHashCode14 = (iHashCode13 + (num3 != null ? num3.hashCode() : 0)) * 31;
        Drawable drawable3 = this.fallbackDrawable;
        return ((((iHashCode14 + (drawable3 != null ? drawable3.hashCode() : 0)) * 31) + this.defined.hashCode()) * 31) + this.defaults.hashCode();
    }

    @Nullable
    public final Drawable t() {
        return coil.util.h.c(this, this.errorDrawable, this.errorResId, this.defaults.f());
    }

    @Nullable
    public final Drawable u() {
        return coil.util.h.c(this, this.fallbackDrawable, this.fallbackResId, this.defaults.g());
    }
}
