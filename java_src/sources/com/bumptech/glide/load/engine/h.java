package com.bumptech.glide.load.engine;

import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
class h<R> implements com.bumptech.glide.load.engine.f.a, Runnable, Comparable<h<?>>, a1.a.f {
    private static final String TAG = "DecodeJob";
    private b<R> callback;
    private com.bumptech.glide.load.g currentAttemptingKey;
    private Object currentData;
    private com.bumptech.glide.load.a currentDataSource;
    private com.bumptech.glide.load.data.d<?> currentFetcher;
    private volatile com.bumptech.glide.load.engine.f currentGenerator;
    private com.bumptech.glide.load.g currentSourceKey;
    private Thread currentThread;
    private final e diskCacheProvider;
    private j diskCacheStrategy;
    private com.bumptech.glide.d glideContext;
    private int height;
    private volatile boolean isCallbackNotified;
    private volatile boolean isCancelled;
    private n loadKey;
    private Object model;
    private boolean onlyRetrieveFromCache;
    private com.bumptech.glide.load.i options;
    private int order;
    private final Pools.Pool<h<?>> pool;
    private com.bumptech.glide.f priority;
    private g runReason;
    private com.bumptech.glide.load.g signature;
    private EnumC0126h stage;
    private long startFetchTime;
    private int width;
    private final com.bumptech.glide.load.engine.g<R> decodeHelper = new com.bumptech.glide.load.engine.g<>();
    private final List<Throwable> throwables = new ArrayList();
    private final a1.c stateVerifier = a1.c.a();
    private final d<?> deferredEncodeManager = new d<>();
    private final f releaseManager = new f();

    interface b<R> {
        void b(q qVar);

        void c(v<R> vVar, com.bumptech.glide.load.a aVar);

        void d(h<?> hVar);
    }

    private final class c<Z> implements i.a<Z> {
        private final com.bumptech.glide.load.a dataSource;

        c(com.bumptech.glide.load.a aVar) {
            this.dataSource = aVar;
        }

        @Override // com.bumptech.glide.load.engine.i.a
        @NonNull
        public v<Z> a(@NonNull v<Z> vVar) {
            return h.this.x(this.dataSource, vVar);
        }
    }

    private static class d<Z> {
        private com.bumptech.glide.load.l<Z> encoder;
        private com.bumptech.glide.load.g key;
        private u<Z> toEncode;

        void a() {
            this.key = null;
            this.encoder = null;
            this.toEncode = null;
        }

        boolean c() {
            return this.toEncode != null;
        }

        /* JADX WARN: Multi-variable type inference failed */
        <X> void d(com.bumptech.glide.load.g gVar, com.bumptech.glide.load.l<X> lVar, u<X> uVar) {
            this.key = gVar;
            this.encoder = lVar;
            this.toEncode = uVar;
        }

        void b(e eVar, com.bumptech.glide.load.i iVar) {
            a1.b.a("DecodeJob.encode");
            try {
                eVar.a().a(this.key, new com.bumptech.glide.load.engine.e(this.encoder, this.toEncode, iVar));
            } finally {
                this.toEncode.g();
                a1.b.d();
            }
        }

        d() {
        }
    }

    interface e {
        com.bumptech.glide.load.engine.cache.a a();
    }

    private enum g {
        INITIALIZE,
        SWITCH_TO_SOURCE_SERVICE,
        DECODE_DATA
    }

    /* JADX INFO: renamed from: com.bumptech.glide.load.engine.h$h, reason: collision with other inner class name */
    private enum EnumC0126h {
        INITIALIZE,
        RESOURCE_CACHE,
        DATA_CACHE,
        SOURCE,
        ENCODE,
        FINISHED
    }

    private void q(String str, long j6) {
        r(str, j6, null);
    }

    public void a() {
        this.isCancelled = true;
        com.bumptech.glide.load.engine.f fVar = this.currentGenerator;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // a1.a.f
    @NonNull
    public a1.c e() {
        return this.stateVerifier;
    }

    h<R> p(com.bumptech.glide.d dVar, Object obj, n nVar, com.bumptech.glide.load.g gVar, int i10, int i11, Class<?> cls, Class<R> cls2, com.bumptech.glide.f fVar, j jVar, Map<Class<?>, com.bumptech.glide.load.m<?>> map, boolean z6, boolean z10, boolean z11, com.bumptech.glide.load.i iVar, b<R> bVar, int i12) {
        this.decodeHelper.u(dVar, obj, gVar, i10, i11, jVar, cls, cls2, fVar, iVar, map, z6, z10, this.diskCacheProvider);
        this.glideContext = dVar;
        this.signature = gVar;
        this.priority = fVar;
        this.loadKey = nVar;
        this.width = i10;
        this.height = i11;
        this.diskCacheStrategy = jVar;
        this.onlyRetrieveFromCache = z11;
        this.options = iVar;
        this.callback = bVar;
        this.order = i12;
        this.runReason = g.INITIALIZE;
        this.model = obj;
        return this;
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] $SwitchMap$com$bumptech$glide$load$EncodeStrategy;
        static final /* synthetic */ int[] $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason;
        static final /* synthetic */ int[] $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage;

        static {
            int[] iArr = new int[com.bumptech.glide.load.c.values().length];
            $SwitchMap$com$bumptech$glide$load$EncodeStrategy = iArr;
            try {
                iArr[com.bumptech.glide.load.c.SOURCE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$bumptech$glide$load$EncodeStrategy[com.bumptech.glide.load.c.TRANSFORMED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[EnumC0126h.values().length];
            $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage = iArr2;
            try {
                iArr2[EnumC0126h.RESOURCE_CACHE.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage[EnumC0126h.DATA_CACHE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage[EnumC0126h.SOURCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage[EnumC0126h.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage[EnumC0126h.INITIALIZE.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[g.values().length];
            $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason = iArr3;
            try {
                iArr3[g.INITIALIZE.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason[g.SWITCH_TO_SOURCE_SERVICE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason[g.DECODE_DATA.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    private static class f {
        private boolean isEncodeComplete;
        private boolean isFailed;
        private boolean isReleased;

        private boolean a(boolean z6) {
            return (this.isFailed || z6 || this.isEncodeComplete) && this.isReleased;
        }

        synchronized boolean b() {
            this.isEncodeComplete = true;
            return a(false);
        }

        synchronized boolean c() {
            this.isFailed = true;
            return a(false);
        }

        synchronized boolean d(boolean z6) {
            this.isReleased = true;
            return a(z6);
        }

        synchronized void e() {
            this.isEncodeComplete = false;
            this.isReleased = false;
            this.isFailed = false;
        }

        f() {
        }
    }

    private void C() {
        int i10 = a.$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$RunReason[this.runReason.ordinal()];
        if (i10 == 1) {
            this.stage = l(EnumC0126h.INITIALIZE);
            this.currentGenerator = k();
            A();
        } else if (i10 == 2) {
            A();
        } else {
            if (i10 == 3) {
                j();
                return;
            }
            throw new IllegalStateException("Unrecognized run reason: " + this.runReason);
        }
    }

    private void D() {
        Throwable th;
        this.stateVerifier.c();
        if (!this.isCallbackNotified) {
            this.isCallbackNotified = true;
            return;
        }
        if (this.throwables.isEmpty()) {
            th = null;
        } else {
            List<Throwable> list = this.throwables;
            th = list.get(list.size() - 1);
        }
        throw new IllegalStateException("Already notified", th);
    }

    private <Data> v<R> h(com.bumptech.glide.load.data.d<?> dVar, Data data, com.bumptech.glide.load.a aVar) throws q {
        if (data == null) {
            dVar.b();
            return null;
        }
        try {
            long jB = com.bumptech.glide.util.f.b();
            v<R> vVarI = i(data, aVar);
            if (Log.isLoggable(TAG, 2)) {
                q("Decoded result " + vVarI, jB);
            }
            return vVarI;
        } finally {
            dVar.b();
        }
    }

    private <Data> v<R> i(Data data, com.bumptech.glide.load.a aVar) throws q {
        return B(data, aVar, this.decodeHelper.h(data.getClass()));
    }

    private void j() {
        v<R> vVarH;
        if (Log.isLoggable(TAG, 2)) {
            r("Retrieved data", this.startFetchTime, "data: " + this.currentData + ", cache key: " + this.currentSourceKey + ", fetcher: " + this.currentFetcher);
        }
        try {
            vVarH = h(this.currentFetcher, this.currentData, this.currentDataSource);
        } catch (q e2) {
            e2.i(this.currentAttemptingKey, this.currentDataSource);
            this.throwables.add(e2);
            vVarH = null;
        }
        if (vVarH != null) {
            t(vVarH, this.currentDataSource);
        } else {
            A();
        }
    }

    private com.bumptech.glide.load.engine.f k() {
        int i10 = a.$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage[this.stage.ordinal()];
        if (i10 == 1) {
            return new w(this.decodeHelper, this);
        }
        if (i10 == 2) {
            return new com.bumptech.glide.load.engine.c(this.decodeHelper, this);
        }
        if (i10 == 3) {
            return new z(this.decodeHelper, this);
        }
        if (i10 == 4) {
            return null;
        }
        throw new IllegalStateException("Unrecognized stage: " + this.stage);
    }

    private EnumC0126h l(EnumC0126h enumC0126h) {
        int i10 = a.$SwitchMap$com$bumptech$glide$load$engine$DecodeJob$Stage[enumC0126h.ordinal()];
        if (i10 == 1) {
            return this.diskCacheStrategy.a() ? EnumC0126h.DATA_CACHE : l(EnumC0126h.DATA_CACHE);
        }
        if (i10 == 2) {
            return this.onlyRetrieveFromCache ? EnumC0126h.FINISHED : EnumC0126h.SOURCE;
        }
        if (i10 == 3 || i10 == 4) {
            return EnumC0126h.FINISHED;
        }
        if (i10 == 5) {
            return this.diskCacheStrategy.b() ? EnumC0126h.RESOURCE_CACHE : l(EnumC0126h.RESOURCE_CACHE);
        }
        throw new IllegalArgumentException("Unrecognized stage: " + enumC0126h);
    }

    @NonNull
    private com.bumptech.glide.load.i n(com.bumptech.glide.load.a aVar) {
        com.bumptech.glide.load.i iVar = this.options;
        if (Build.VERSION.SDK_INT < 26) {
            return iVar;
        }
        boolean z6 = aVar == com.bumptech.glide.load.a.RESOURCE_DISK_CACHE || this.decodeHelper.w();
        com.bumptech.glide.load.h<Boolean> hVar = com.bumptech.glide.load.resource.bitmap.p.ALLOW_HARDWARE_CONFIG;
        Boolean bool = (Boolean) iVar.c(hVar);
        if (bool != null && (!bool.booleanValue() || z6)) {
            return iVar;
        }
        com.bumptech.glide.load.i iVar2 = new com.bumptech.glide.load.i();
        iVar2.d(this.options);
        iVar2.e(hVar, Boolean.valueOf(z6));
        return iVar2;
    }

    private int o() {
        return this.priority.ordinal();
    }

    private void r(String str, long j6, String str2) {
        String str3;
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" in ");
        sb.append(com.bumptech.glide.util.f.a(j6));
        sb.append(", load key: ");
        sb.append(this.loadKey);
        if (str2 != null) {
            str3 = ", " + str2;
        } else {
            str3 = "";
        }
        sb.append(str3);
        sb.append(", thread: ");
        sb.append(Thread.currentThread().getName());
        Log.v(TAG, sb.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void t(v<R> vVar, com.bumptech.glide.load.a aVar) {
        u uVar;
        if (vVar instanceof r) {
            ((r) vVar).initialize();
        }
        if (this.deferredEncodeManager.c()) {
            vVar = u.d(vVar);
            uVar = vVar;
        } else {
            uVar = 0;
        }
        s(vVar, aVar);
        this.stage = EnumC0126h.ENCODE;
        try {
            if (this.deferredEncodeManager.c()) {
                this.deferredEncodeManager.b(this.diskCacheProvider, this.options);
            }
            if (uVar != 0) {
                uVar.g();
            }
            v();
        } catch (Throwable th) {
            if (uVar != 0) {
                uVar.g();
            }
            throw th;
        }
    }

    private void v() {
        if (this.releaseManager.b()) {
            z();
        }
    }

    private void w() {
        if (this.releaseManager.c()) {
            z();
        }
    }

    private void z() {
        this.releaseManager.e();
        this.deferredEncodeManager.a();
        this.decodeHelper.a();
        this.isCallbackNotified = false;
        this.glideContext = null;
        this.signature = null;
        this.options = null;
        this.priority = null;
        this.loadKey = null;
        this.callback = null;
        this.stage = null;
        this.currentGenerator = null;
        this.currentThread = null;
        this.currentSourceKey = null;
        this.currentData = null;
        this.currentDataSource = null;
        this.currentFetcher = null;
        this.startFetchTime = 0L;
        this.isCancelled = false;
        this.model = null;
        this.throwables.clear();
        this.pool.b(this);
    }

    boolean E() {
        EnumC0126h enumC0126hL = l(EnumC0126h.INITIALIZE);
        return enumC0126hL == EnumC0126h.RESOURCE_CACHE || enumC0126hL == EnumC0126h.DATA_CACHE;
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public void c() {
        this.runReason = g.SWITCH_TO_SOURCE_SERVICE;
        this.callback.d(this);
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public void d(com.bumptech.glide.load.g gVar, Object obj, com.bumptech.glide.load.data.d<?> dVar, com.bumptech.glide.load.a aVar, com.bumptech.glide.load.g gVar2) {
        this.currentSourceKey = gVar;
        this.currentData = obj;
        this.currentFetcher = dVar;
        this.currentDataSource = aVar;
        this.currentAttemptingKey = gVar2;
        if (Thread.currentThread() != this.currentThread) {
            this.runReason = g.DECODE_DATA;
            this.callback.d(this);
        } else {
            a1.b.a("DecodeJob.decodeFromRetrievedData");
            try {
                j();
            } finally {
                a1.b.d();
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        a1.b.b("DecodeJob#run(model=%s)", this.model);
        com.bumptech.glide.load.data.d<?> dVar = this.currentFetcher;
        try {
            try {
                try {
                    if (this.isCancelled) {
                        u();
                        if (dVar != null) {
                            dVar.b();
                        }
                        a1.b.d();
                        return;
                    }
                    C();
                    if (dVar != null) {
                        dVar.b();
                    }
                    a1.b.d();
                } catch (Throwable th) {
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "DecodeJob threw unexpectedly, isCancelled: " + this.isCancelled + ", stage: " + this.stage, th);
                    }
                    if (this.stage != EnumC0126h.ENCODE) {
                        this.throwables.add(th);
                        u();
                    }
                    if (!this.isCancelled) {
                        throw th;
                    }
                    throw th;
                }
            } catch (com.bumptech.glide.load.engine.b e2) {
                throw e2;
            }
        } catch (Throwable th2) {
            if (dVar != null) {
                dVar.b();
            }
            a1.b.d();
            throw th2;
        }
    }

    void y(boolean z6) {
        if (this.releaseManager.d(z6)) {
            z();
        }
    }

    h(e eVar, Pools.Pool<h<?>> pool) {
        this.diskCacheProvider = eVar;
        this.pool = pool;
    }

    private void A() {
        this.currentThread = Thread.currentThread();
        this.startFetchTime = com.bumptech.glide.util.f.b();
        boolean zA = false;
        while (!this.isCancelled && this.currentGenerator != null && !(zA = this.currentGenerator.a())) {
            this.stage = l(this.stage);
            this.currentGenerator = k();
            if (this.stage == EnumC0126h.SOURCE) {
                c();
                return;
            }
        }
        if ((this.stage == EnumC0126h.FINISHED || this.isCancelled) && !zA) {
            u();
        }
    }

    private <Data, ResourceType> v<R> B(Data data, com.bumptech.glide.load.a aVar, t<Data, ResourceType, R> tVar) throws q {
        com.bumptech.glide.load.i iVarN = n(aVar);
        com.bumptech.glide.load.data.e<Data> eVarL = this.glideContext.g().l(data);
        try {
            return tVar.a(eVarL, iVarN, this.width, this.height, new c(aVar));
        } finally {
            eVarL.b();
        }
    }

    private void s(v<R> vVar, com.bumptech.glide.load.a aVar) {
        D();
        this.callback.c(vVar, aVar);
    }

    private void u() {
        D();
        this.callback.b(new q("Failed to load resource", new ArrayList(this.throwables)));
        w();
    }

    @Override // com.bumptech.glide.load.engine.f.a
    public void b(com.bumptech.glide.load.g gVar, Exception exc, com.bumptech.glide.load.data.d<?> dVar, com.bumptech.glide.load.a aVar) {
        dVar.b();
        q qVar = new q("Fetching data failed", exc);
        qVar.j(gVar, aVar, dVar.a());
        this.throwables.add(qVar);
        if (Thread.currentThread() != this.currentThread) {
            this.runReason = g.SWITCH_TO_SOURCE_SERVICE;
            this.callback.d(this);
        } else {
            A();
        }
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public int compareTo(@NonNull h<?> hVar) {
        int iO = o() - hVar.o();
        if (iO == 0) {
            return this.order - hVar.order;
        }
        return iO;
    }

    @NonNull
    <Z> v<Z> x(com.bumptech.glide.load.a aVar, @NonNull v<Z> vVar) {
        v<Z> vVarA;
        com.bumptech.glide.load.m<Z> mVar;
        com.bumptech.glide.load.c cVarB;
        com.bumptech.glide.load.g dVar;
        Class<?> cls = vVar.get().getClass();
        com.bumptech.glide.load.l<Z> lVarN = null;
        if (aVar != com.bumptech.glide.load.a.RESOURCE_DISK_CACHE) {
            com.bumptech.glide.load.m<Z> mVarR = this.decodeHelper.r(cls);
            mVar = mVarR;
            vVarA = mVarR.a(this.glideContext, vVar, this.width, this.height);
        } else {
            vVarA = vVar;
            mVar = null;
        }
        if (!vVar.equals(vVarA)) {
            vVar.a();
        }
        if (this.decodeHelper.v(vVarA)) {
            lVarN = this.decodeHelper.n(vVarA);
            cVarB = lVarN.b(this.options);
        } else {
            cVarB = com.bumptech.glide.load.c.NONE;
        }
        com.bumptech.glide.load.l lVar = lVarN;
        if (this.diskCacheStrategy.d(!this.decodeHelper.x(this.currentSourceKey), aVar, cVarB)) {
            if (lVar != null) {
                int i10 = a.$SwitchMap$com$bumptech$glide$load$EncodeStrategy[cVarB.ordinal()];
                if (i10 != 1) {
                    if (i10 == 2) {
                        dVar = new x(this.decodeHelper.b(), this.currentSourceKey, this.signature, this.width, this.height, mVar, cls, this.options);
                    } else {
                        throw new IllegalArgumentException("Unknown strategy: " + cVarB);
                    }
                } else {
                    dVar = new com.bumptech.glide.load.engine.d(this.currentSourceKey, this.signature);
                }
                u uVarD = u.d(vVarA);
                this.deferredEncodeManager.d(dVar, lVar, uVarD);
                return uVarD;
            }
            throw new com.bumptech.glide.h.d(vVarA.get().getClass());
        }
        return vVarA;
    }
}
