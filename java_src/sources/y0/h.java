package y0;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.Log;
import androidx.annotation.DrawableRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.k;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.engine.v;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class h<R> implements c, com.bumptech.glide.request.target.d, g {
    private static final String GLIDE_TAG = "Glide";
    private final com.bumptech.glide.request.transition.c<? super R> animationFactory;
    private final Executor callbackExecutor;
    private final Context context;
    private volatile k engine;

    @Nullable
    @GuardedBy
    private Drawable errorDrawable;

    @Nullable
    @GuardedBy
    private Drawable fallbackDrawable;
    private final com.bumptech.glide.d glideContext;

    @GuardedBy
    private int height;

    @GuardedBy
    private boolean isCallingCallbacks;

    @GuardedBy
    private k.d loadStatus;

    @Nullable
    private final Object model;
    private final int overrideHeight;
    private final int overrideWidth;

    @Nullable
    @GuardedBy
    private Drawable placeholderDrawable;
    private final com.bumptech.glide.f priority;
    private final d requestCoordinator;

    @Nullable
    private final List<e<R>> requestListeners;
    private final Object requestLock;
    private final y0.a<?> requestOptions;

    @Nullable
    private RuntimeException requestOrigin;

    @GuardedBy
    private v<R> resource;

    @GuardedBy
    private long startTime;
    private final a1.c stateVerifier;

    @GuardedBy
    private a status;

    @Nullable
    private final String tag;
    private final com.bumptech.glide.request.target.e<R> target;

    @Nullable
    private final e<R> targetListener;
    private final Class<R> transcodeClass;

    @GuardedBy
    private int width;
    private static final String TAG = "Request";
    private static final boolean IS_VERBOSE_LOGGABLE = Log.isLoggable(TAG, 2);

    private enum a {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CLEARED
    }

    private h(Context context, com.bumptech.glide.d dVar, @NonNull Object obj, @Nullable Object obj2, Class<R> cls, y0.a<?> aVar, int i10, int i11, com.bumptech.glide.f fVar, com.bumptech.glide.request.target.e<R> eVar, @Nullable e<R> eVar2, @Nullable List<e<R>> list, d dVar2, k kVar, com.bumptech.glide.request.transition.c<? super R> cVar, Executor executor) {
        this.tag = IS_VERBOSE_LOGGABLE ? String.valueOf(super.hashCode()) : null;
        this.stateVerifier = a1.c.a();
        this.requestLock = obj;
        this.context = context;
        this.glideContext = dVar;
        this.model = obj2;
        this.transcodeClass = cls;
        this.requestOptions = aVar;
        this.overrideWidth = i10;
        this.overrideHeight = i11;
        this.priority = fVar;
        this.target = eVar;
        this.targetListener = eVar2;
        this.requestListeners = list;
        this.requestCoordinator = dVar2;
        this.engine = kVar;
        this.animationFactory = cVar;
        this.callbackExecutor = executor;
        this.status = a.PENDING;
        if (this.requestOrigin == null && dVar.h()) {
            this.requestOrigin = new RuntimeException("Glide request origin trace");
        }
    }

    public static <R> h<R> x(Context context, com.bumptech.glide.d dVar, Object obj, Object obj2, Class<R> cls, y0.a<?> aVar, int i10, int i11, com.bumptech.glide.f fVar, com.bumptech.glide.request.target.e<R> eVar, e<R> eVar2, @Nullable List<e<R>> list, d dVar2, k kVar, com.bumptech.glide.request.transition.c<? super R> cVar, Executor executor) {
        return new h<>(context, dVar, obj, obj2, cls, aVar, i10, i11, fVar, eVar, eVar2, list, dVar2, kVar, cVar, executor);
    }

    @Override // y0.g
    public void b(q qVar) {
        y(qVar, 5);
    }

    @GuardedBy
    private void i() {
        if (this.isCallingCallbacks) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    @GuardedBy
    private boolean k() {
        d dVar = this.requestCoordinator;
        return dVar == null || dVar.d(this);
    }

    @GuardedBy
    private boolean l() {
        d dVar = this.requestCoordinator;
        return dVar == null || dVar.i(this);
    }

    @GuardedBy
    private boolean m() {
        d dVar = this.requestCoordinator;
        return dVar == null || dVar.c(this);
    }

    @GuardedBy
    private Drawable o() {
        if (this.errorDrawable == null) {
            Drawable drawableL = this.requestOptions.l();
            this.errorDrawable = drawableL;
            if (drawableL == null && this.requestOptions.k() > 0) {
                this.errorDrawable = s(this.requestOptions.k());
            }
        }
        return this.errorDrawable;
    }

    @GuardedBy
    private Drawable p() {
        if (this.fallbackDrawable == null) {
            Drawable drawableM = this.requestOptions.m();
            this.fallbackDrawable = drawableM;
            if (drawableM == null && this.requestOptions.n() > 0) {
                this.fallbackDrawable = s(this.requestOptions.n());
            }
        }
        return this.fallbackDrawable;
    }

    @GuardedBy
    private Drawable q() {
        if (this.placeholderDrawable == null) {
            Drawable drawableS = this.requestOptions.s();
            this.placeholderDrawable = drawableS;
            if (drawableS == null && this.requestOptions.t() > 0) {
                this.placeholderDrawable = s(this.requestOptions.t());
            }
        }
        return this.placeholderDrawable;
    }

    @GuardedBy
    private boolean r() {
        d dVar = this.requestCoordinator;
        return dVar == null || !dVar.getRoot().a();
    }

    @GuardedBy
    private Drawable s(@DrawableRes int i10) {
        return com.bumptech.glide.load.resource.drawable.a.a(this.glideContext, i10, this.requestOptions.y() != null ? this.requestOptions.y() : this.context.getTheme());
    }

    private void t(String str) {
        Log.v(TAG, str + " this: " + this.tag);
    }

    private static int u(int i10, float f) {
        return i10 == Integer.MIN_VALUE ? i10 : Math.round(f * i10);
    }

    @GuardedBy
    private void v() {
        d dVar = this.requestCoordinator;
        if (dVar != null) {
            dVar.b(this);
        }
    }

    @GuardedBy
    private void w() {
        d dVar = this.requestCoordinator;
        if (dVar != null) {
            dVar.g(this);
        }
    }

    private void y(q qVar, int i10) {
        boolean zA;
        this.stateVerifier.c();
        synchronized (this.requestLock) {
            try {
                qVar.k(this.requestOrigin);
                int iF = this.glideContext.f();
                if (iF <= i10) {
                    Log.w(GLIDE_TAG, "Load failed for " + this.model + " with size [" + this.width + "x" + this.height + "]", qVar);
                    if (iF <= 4) {
                        qVar.g(GLIDE_TAG);
                    }
                }
                this.loadStatus = null;
                this.status = a.FAILED;
                boolean z6 = true;
                this.isCallingCallbacks = true;
                try {
                    List<e<R>> list = this.requestListeners;
                    if (list != null) {
                        Iterator<e<R>> it = list.iterator();
                        zA = false;
                        while (it.hasNext()) {
                            zA |= it.next().a(qVar, this.model, this.target, r());
                        }
                    } else {
                        zA = false;
                    }
                    e<R> eVar = this.targetListener;
                    if (eVar == null || !eVar.a(qVar, this.model, this.target, r())) {
                        z6 = false;
                    }
                    if (!(zA | z6)) {
                        A();
                    }
                    this.isCallingCallbacks = false;
                    v();
                } catch (Throwable th) {
                    this.isCallingCallbacks = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // y0.c
    public boolean a() {
        boolean z6;
        synchronized (this.requestLock) {
            z6 = this.status == a.COMPLETE;
        }
        return z6;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // y0.g
    public void c(v<?> vVar, com.bumptech.glide.load.a aVar) {
        this.stateVerifier.c();
        v<?> vVar2 = null;
        try {
            synchronized (this.requestLock) {
                try {
                    this.loadStatus = null;
                    if (vVar == null) {
                        b(new q("Expected to receive a Resource<R> with an object of " + this.transcodeClass + " inside, but instead got null."));
                        return;
                    }
                    Object obj = vVar.get();
                    try {
                        if (obj != null && this.transcodeClass.isAssignableFrom(obj.getClass())) {
                            if (m()) {
                                z(vVar, obj, aVar);
                                return;
                            }
                            this.resource = null;
                            this.status = a.COMPLETE;
                            this.engine.k(vVar);
                            return;
                        }
                        this.resource = null;
                        StringBuilder sb = new StringBuilder();
                        sb.append("Expected to receive an object of ");
                        sb.append(this.transcodeClass);
                        sb.append(" but instead got ");
                        sb.append(obj != null ? obj.getClass() : "");
                        sb.append("{");
                        sb.append(obj);
                        sb.append("} inside Resource{");
                        sb.append(vVar);
                        sb.append("}.");
                        sb.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                        b(new q(sb.toString()));
                        this.engine.k(vVar);
                    } catch (Throwable th) {
                        vVar2 = vVar;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (vVar2 != null) {
                this.engine.k(vVar2);
            }
            throw th3;
        }
    }

    @Override // y0.c
    public void clear() {
        synchronized (this.requestLock) {
            try {
                i();
                this.stateVerifier.c();
                a aVar = this.status;
                a aVar2 = a.CLEARED;
                if (aVar == aVar2) {
                    return;
                }
                n();
                v<R> vVar = this.resource;
                if (vVar != null) {
                    this.resource = null;
                } else {
                    vVar = null;
                }
                if (k()) {
                    this.target.d(q());
                }
                this.status = aVar2;
                if (vVar != null) {
                    this.engine.k(vVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.target.d
    public void d(int i10, int i11) throws Throwable {
        Object obj;
        this.stateVerifier.c();
        Object obj2 = this.requestLock;
        synchronized (obj2) {
            try {
                try {
                    boolean z6 = IS_VERBOSE_LOGGABLE;
                    if (z6) {
                        t("Got onSizeReady in " + com.bumptech.glide.util.f.a(this.startTime));
                    }
                    if (this.status == a.WAITING_FOR_SIZE) {
                        a aVar = a.RUNNING;
                        this.status = aVar;
                        float fX = this.requestOptions.x();
                        this.width = u(i10, fX);
                        this.height = u(i11, fX);
                        if (z6) {
                            t("finished setup for calling load in " + com.bumptech.glide.util.f.a(this.startTime));
                        }
                        obj = obj2;
                        try {
                            this.loadStatus = this.engine.f(this.glideContext, this.model, this.requestOptions.w(), this.width, this.height, this.requestOptions.v(), this.transcodeClass, this.priority, this.requestOptions.j(), this.requestOptions.z(), this.requestOptions.H(), this.requestOptions.E(), this.requestOptions.p(), this.requestOptions.C(), this.requestOptions.B(), this.requestOptions.A(), this.requestOptions.o(), this, this.callbackExecutor);
                            if (this.status != aVar) {
                                this.loadStatus = null;
                            }
                            if (z6) {
                                t("finished onSizeReady in " + com.bumptech.glide.util.f.a(this.startTime));
                            }
                        } catch (Throwable th) {
                            th = th;
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                obj = obj2;
            }
        }
    }

    @Override // y0.c
    public boolean e() {
        boolean z6;
        synchronized (this.requestLock) {
            z6 = this.status == a.CLEARED;
        }
        return z6;
    }

    @Override // y0.c
    public boolean f() {
        boolean z6;
        synchronized (this.requestLock) {
            z6 = this.status == a.COMPLETE;
        }
        return z6;
    }

    @Override // y0.g
    public Object g() {
        this.stateVerifier.c();
        return this.requestLock;
    }

    @Override // y0.c
    public boolean h(c cVar) {
        int i10;
        int i11;
        Object obj;
        Class<R> cls;
        y0.a<?> aVar;
        com.bumptech.glide.f fVar;
        int size;
        int i12;
        int i13;
        Object obj2;
        Class<R> cls2;
        y0.a<?> aVar2;
        com.bumptech.glide.f fVar2;
        int size2;
        if (!(cVar instanceof h)) {
            return false;
        }
        synchronized (this.requestLock) {
            try {
                i10 = this.overrideWidth;
                i11 = this.overrideHeight;
                obj = this.model;
                cls = this.transcodeClass;
                aVar = this.requestOptions;
                fVar = this.priority;
                List<e<R>> list = this.requestListeners;
                size = list != null ? list.size() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        h hVar = (h) cVar;
        synchronized (hVar.requestLock) {
            try {
                i12 = hVar.overrideWidth;
                i13 = hVar.overrideHeight;
                obj2 = hVar.model;
                cls2 = hVar.transcodeClass;
                aVar2 = hVar.requestOptions;
                fVar2 = hVar.priority;
                List<e<R>> list2 = hVar.requestListeners;
                size2 = list2 != null ? list2.size() : 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return i10 == i12 && i11 == i13 && com.bumptech.glide.util.k.b(obj, obj2) && cls.equals(cls2) && aVar.equals(aVar2) && fVar == fVar2 && size == size2;
    }

    @Override // y0.c
    public boolean isRunning() {
        boolean z6;
        synchronized (this.requestLock) {
            try {
                a aVar = this.status;
                z6 = aVar == a.RUNNING || aVar == a.WAITING_FOR_SIZE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z6;
    }

    @Override // y0.c
    public void j() {
        synchronized (this.requestLock) {
            try {
                i();
                this.stateVerifier.c();
                this.startTime = com.bumptech.glide.util.f.b();
                if (this.model == null) {
                    if (com.bumptech.glide.util.k.r(this.overrideWidth, this.overrideHeight)) {
                        this.width = this.overrideWidth;
                        this.height = this.overrideHeight;
                    }
                    y(new q("Received null model"), p() == null ? 5 : 3);
                    return;
                }
                a aVar = this.status;
                a aVar2 = a.RUNNING;
                if (aVar == aVar2) {
                    throw new IllegalArgumentException("Cannot restart a running request");
                }
                if (aVar == a.COMPLETE) {
                    c(this.resource, com.bumptech.glide.load.a.MEMORY_CACHE);
                    return;
                }
                a aVar3 = a.WAITING_FOR_SIZE;
                this.status = aVar3;
                if (com.bumptech.glide.util.k.r(this.overrideWidth, this.overrideHeight)) {
                    d(this.overrideWidth, this.overrideHeight);
                } else {
                    this.target.h(this);
                }
                a aVar4 = this.status;
                if ((aVar4 == aVar2 || aVar4 == aVar3) && l()) {
                    this.target.f(q());
                }
                if (IS_VERBOSE_LOGGABLE) {
                    t("finished run method in " + com.bumptech.glide.util.f.a(this.startTime));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // y0.c
    public void pause() {
        synchronized (this.requestLock) {
            try {
                if (isRunning()) {
                    clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @GuardedBy
    private void A() {
        Drawable drawableQ;
        if (!l()) {
            return;
        }
        if (this.model == null) {
            drawableQ = p();
        } else {
            drawableQ = null;
        }
        if (drawableQ == null) {
            drawableQ = o();
        }
        if (drawableQ == null) {
            drawableQ = q();
        }
        this.target.g(drawableQ);
    }

    @GuardedBy
    private void n() {
        i();
        this.stateVerifier.c();
        this.target.b(this);
        k.d dVar = this.loadStatus;
        if (dVar != null) {
            dVar.a();
            this.loadStatus = null;
        }
    }

    @GuardedBy
    private void z(v<R> vVar, R r, com.bumptech.glide.load.a aVar) {
        boolean zB;
        boolean zR = r();
        this.status = a.COMPLETE;
        this.resource = vVar;
        if (this.glideContext.f() <= 3) {
            Log.d(GLIDE_TAG, "Finished loading " + r.getClass().getSimpleName() + " from " + aVar + " for " + this.model + " with size [" + this.width + "x" + this.height + "] in " + com.bumptech.glide.util.f.a(this.startTime) + " ms");
        }
        boolean z6 = true;
        this.isCallingCallbacks = true;
        try {
            List<e<R>> list = this.requestListeners;
            if (list != null) {
                Iterator<e<R>> it = list.iterator();
                zB = false;
                while (it.hasNext()) {
                    zB |= it.next().b(r, this.model, this.target, aVar, zR);
                }
            } else {
                zB = false;
            }
            e<R> eVar = this.targetListener;
            if (eVar == null || !eVar.b(r, this.model, this.target, aVar, zR)) {
                z6 = false;
            }
            if (!(z6 | zB)) {
                this.target.e(r, this.animationFactory.a(aVar, zR));
            }
            this.isCallingCallbacks = false;
            w();
        } catch (Throwable th) {
            this.isCallingCallbacks = false;
            throw th;
        }
    }
}
