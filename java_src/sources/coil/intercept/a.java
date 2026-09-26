package coil.intercept;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import coil.memory.MemoryCache;
import coil.request.m;
import coil.request.o;
import coil.util.q;
import e8.p;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.p0;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.s;
import w7.u;
import w7.w;

/* JADX INFO: loaded from: classes9.dex */
public final class a implements coil.intercept.b {

    @NotNull
    public static final C0102a Companion = new C0102a(null);

    @NotNull
    private static final String TAG = "EngineInterceptor";

    @NotNull
    private final coil.e imageLoader;

    @Nullable
    private final q logger;

    @NotNull
    private final coil.memory.c memoryCacheService;

    @NotNull
    private final o requestService;

    /* JADX INFO: renamed from: coil.intercept.a$a, reason: collision with other inner class name */
    public static final class C0102a {
        public /* synthetic */ C0102a(k kVar) {
            this();
        }

        private C0102a() {
        }
    }

    public static final class b {

        @NotNull
        private final coil.decode.f dataSource;

        @Nullable
        private final String diskCacheKey;

        @NotNull
        private final Drawable drawable;
        private final boolean isSampled;

        @NotNull
        public final coil.decode.f c() {
            return this.dataSource;
        }

        @Nullable
        public final String d() {
            return this.diskCacheKey;
        }

        @NotNull
        public final Drawable e() {
            return this.drawable;
        }

        public final boolean f() {
            return this.isSampled;
        }

        public static /* synthetic */ b b(b bVar, Drawable drawable, boolean z6, coil.decode.f fVar, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                drawable = bVar.drawable;
            }
            if ((i10 & 2) != 0) {
                z6 = bVar.isSampled;
            }
            if ((i10 & 4) != 0) {
                fVar = bVar.dataSource;
            }
            if ((i10 & 8) != 0) {
                str = bVar.diskCacheKey;
            }
            return bVar.a(drawable, z6, fVar, str);
        }

        @NotNull
        public final b a(@NotNull Drawable drawable, boolean z6, @NotNull coil.decode.f fVar, @Nullable String str) {
            return new b(drawable, z6, fVar, str);
        }

        public b(@NotNull Drawable drawable, boolean z6, @NotNull coil.decode.f fVar, @Nullable String str) {
            this.drawable = drawable;
            this.isSampled = z6;
            this.dataSource = fVar;
            this.diskCacheKey = str;
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "coil.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {199}, m = "decode")
    static final class c extends kotlin.coroutines.jvm.internal.d {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        int label;
        /* synthetic */ Object result;

        c(kotlin.coroutines.d<? super c> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return a.this.h(null, null, null, null, null, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "coil.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {122, 126, 144}, m = "execute")
    static final class d extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        int label;
        /* synthetic */ Object result;

        d(kotlin.coroutines.d<? super d> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return a.this.i(null, null, null, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "coil.intercept.EngineInterceptor$execute$executeResult$1", f = "EngineInterceptor.kt", l = {127}, m = "invokeSuspend")
    static final class e extends l implements p<o0, kotlin.coroutines.d<? super b>, Object> {
        final /* synthetic */ p0<coil.b> $components;
        final /* synthetic */ coil.c $eventListener;
        final /* synthetic */ p0<coil.fetch.h> $fetchResult;
        final /* synthetic */ Object $mappedData;
        final /* synthetic */ p0<m> $options;
        final /* synthetic */ coil.request.h $request;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(p0<coil.fetch.h> p0Var, p0<coil.b> p0Var2, coil.request.h hVar, Object obj, p0<m> p0Var3, coil.c cVar, kotlin.coroutines.d<? super e> dVar) {
            super(2, dVar);
            this.$fetchResult = p0Var;
            this.$components = p0Var2;
            this.$request = hVar;
            this.$mappedData = obj;
            this.$options = p0Var3;
            this.$eventListener = cVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return a.this.new e(this.$fetchResult, this.$components, this.$request, this.$mappedData, this.$options, this.$eventListener, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super b> dVar) {
            return ((e) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w.b(obj);
                a aVar = a.this;
                coil.fetch.m mVar = (coil.fetch.m) this.$fetchResult.element;
                coil.b bVar = this.$components.element;
                coil.request.h hVar = this.$request;
                Object obj2 = this.$mappedData;
                m mVar2 = this.$options.element;
                coil.c cVar = this.$eventListener;
                this.label = 1;
                obj = aVar.h(mVar, bVar, hVar, obj2, mVar2, cVar, this);
                if (obj == objE) {
                    return objE;
                }
            }
            return obj;
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "coil.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {165}, m = com.google.firebase.remoteconfig.c.FETCH_FILE_NAME)
    static final class f extends kotlin.coroutines.jvm.internal.d {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        int label;
        /* synthetic */ Object result;

        f(kotlin.coroutines.d<? super f> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return a.this.j(null, null, null, null, null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "coil.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {73}, m = "intercept")
    static final class g extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        g(kotlin.coroutines.d<? super g> dVar) {
            super(dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return a.this.a(null, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "coil.intercept.EngineInterceptor$intercept$2", f = "EngineInterceptor.kt", l = {75}, m = "invokeSuspend")
    static final class h extends l implements p<o0, kotlin.coroutines.d<? super coil.request.p>, Object> {
        final /* synthetic */ MemoryCache.Key $cacheKey;
        final /* synthetic */ coil.intercept.b.a $chain;
        final /* synthetic */ coil.c $eventListener;
        final /* synthetic */ Object $mappedData;
        final /* synthetic */ m $options;
        final /* synthetic */ coil.request.h $request;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(coil.request.h hVar, Object obj, m mVar, coil.c cVar, MemoryCache.Key key, coil.intercept.b.a aVar, kotlin.coroutines.d<? super h> dVar) {
            super(2, dVar);
            this.$request = hVar;
            this.$mappedData = obj;
            this.$options = mVar;
            this.$eventListener = cVar;
            this.$cacheKey = key;
            this.$chain = aVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return a.this.new h(this.$request, this.$mappedData, this.$options, this.$eventListener, this.$cacheKey, this.$chain, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super coil.request.p> dVar) {
            return ((h) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) throws Throwable {
            MemoryCache.Key key;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    w.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                w.b(obj);
                a aVar = a.this;
                coil.request.h hVar = this.$request;
                Object obj2 = this.$mappedData;
                m mVar = this.$options;
                coil.c cVar = this.$eventListener;
                this.label = 1;
                obj = aVar.i(hVar, obj2, mVar, cVar, this);
                if (obj == objE) {
                    return objE;
                }
            }
            b bVar = (b) obj;
            boolean zH = a.this.memoryCacheService.h(this.$cacheKey, this.$request, bVar);
            Drawable drawableE = bVar.e();
            coil.request.h hVar2 = this.$request;
            coil.decode.f fVarC = bVar.c();
            MemoryCache.Key key2 = this.$cacheKey;
            if (zH) {
                key = key2;
            } else {
                key = null;
            }
            return new coil.request.p(drawableE, hVar2, fVarC, key, bVar.d(), bVar.f(), coil.util.i.v(this.$chain));
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "coil.intercept.EngineInterceptor$transform$3", f = "EngineInterceptor.kt", l = {242}, m = "invokeSuspend")
    static final class i extends l implements p<o0, kotlin.coroutines.d<? super b>, Object> {
        final /* synthetic */ coil.c $eventListener;
        final /* synthetic */ m $options;
        final /* synthetic */ coil.request.h $request;
        final /* synthetic */ b $result;
        final /* synthetic */ List<g0.a> $transformations;
        int I$0;
        int I$1;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        i(b bVar, m mVar, List<? extends g0.a> list, coil.c cVar, coil.request.h hVar, kotlin.coroutines.d<? super i> dVar) {
            super(2, dVar);
            this.$result = bVar;
            this.$options = mVar;
            this.$transformations = list;
            this.$eventListener = cVar;
            this.$request = hVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            i iVar = a.this.new i(this.$result, this.$options, this.$transformations, this.$eventListener, this.$request, dVar);
            iVar.L$0 = obj;
            return iVar;
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super b> dVar) {
            return ((i) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:10:0x0061  */
        /* JADX WARN: Code duplicated, block: B:12:0x007d A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x007b -> B:13:0x007e). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.a
        @org.jetbrains.annotations.Nullable
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r19) {
            /*
                r18 = this;
                r0 = r18
                java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L2f
                if (r2 != r3) goto L27
                int r2 = r0.I$1
                int r4 = r0.I$0
                java.lang.Object r5 = r0.L$2
                coil.request.m r5 = (coil.request.m) r5
                java.lang.Object r6 = r0.L$1
                java.util.List r6 = (java.util.List) r6
                java.lang.Object r7 = r0.L$0
                kotlinx.coroutines.o0 r7 = (kotlinx.coroutines.o0) r7
                w7.w.b(r19)
                r9 = r0
                r8 = r7
                r7 = r6
                r6 = r5
                r5 = r19
                goto L7e
            L27:
                java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r1
            L2f:
                w7.w.b(r19)
                java.lang.Object r2 = r0.L$0
                kotlinx.coroutines.o0 r2 = (kotlinx.coroutines.o0) r2
                coil.intercept.a r4 = coil.intercept.a.this
                coil.intercept.a$b r5 = r0.$result
                android.graphics.drawable.Drawable r5 = r5.e()
                coil.request.m r6 = r0.$options
                java.util.List<g0.a> r7 = r0.$transformations
                android.graphics.Bitmap r4 = coil.intercept.a.b(r4, r5, r6, r7)
                coil.c r5 = r0.$eventListener
                coil.request.h r6 = r0.$request
                r5.n(r6, r4)
                java.util.List<g0.a> r5 = r0.$transformations
                coil.request.m r6 = r0.$options
                int r7 = r5.size()
                r8 = 0
                r9 = r0
                r17 = r8
                r8 = r2
                r2 = r7
                r7 = r5
                r5 = r4
                r4 = r17
            L5f:
                if (r4 >= r2) goto L85
                java.lang.Object r10 = r7.get(r4)
                g0.a r10 = (g0.a) r10
                coil.size.i r11 = r6.n()
                r9.L$0 = r8
                r9.L$1 = r7
                r9.L$2 = r6
                r9.I$0 = r4
                r9.I$1 = r2
                r9.label = r3
                java.lang.Object r5 = r10.b(r5, r11, r9)
                if (r5 != r1) goto L7e
                return r1
            L7e:
                android.graphics.Bitmap r5 = (android.graphics.Bitmap) r5
                kotlinx.coroutines.p0.g(r8)
                int r4 = r4 + r3
                goto L5f
            L85:
                coil.c r1 = r9.$eventListener
                coil.request.h r2 = r9.$request
                r1.p(r2, r5)
                coil.intercept.a$b r10 = r9.$result
                coil.request.h r1 = r9.$request
                android.content.Context r1 = r1.l()
                android.content.res.Resources r1 = r1.getResources()
                android.graphics.drawable.BitmapDrawable r11 = new android.graphics.drawable.BitmapDrawable
                r11.<init>(r1, r5)
                r12 = 0
                r13 = 0
                r14 = 0
                r15 = 14
                r16 = 0
                coil.intercept.a$b r1 = coil.intercept.a.b.b(r10, r11, r12, r13, r14, r15, r16)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: coil.intercept.a.i.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Bitmap g(Drawable drawable, m mVar, List<? extends g0.a> list) {
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            if (kotlin.collections.p.F(coil.util.i.q(), coil.util.a.c(bitmap))) {
                return bitmap;
            }
        }
        return coil.util.k.INSTANCE.a(drawable, mVar.f(), mVar.n(), mVar.m(), mVar.c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x007c  */
    /* JADX WARN: Code duplicated, block: B:19:0x00aa A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:23:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:25:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:26:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:28:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:31:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x00ab -> B:21:0x00b4). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object h(coil.fetch.m r17, coil.b r18, coil.request.h r19, java.lang.Object r20, coil.request.m r21, coil.c r22, kotlin.coroutines.d<? super coil.intercept.a.b> r23) {
        /*
            Method dump skipped, instruction units count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.intercept.a.h(coil.fetch.m, coil.b, coil.request.h, java.lang.Object, coil.request.m, coil.c, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:50:0x0162 A[Catch: all -> 0x00e1, TRY_LEAVE, TryCatch #0 {all -> 0x00e1, blocks: (B:48:0x0157, B:50:0x0162, B:56:0x01a2, B:58:0x01a6, B:79:0x0212, B:80:0x0217, B:28:0x00a6, B:30:0x00b2, B:33:0x00e5, B:35:0x00eb, B:44:0x011a, B:37:0x00f1, B:39:0x0100, B:40:0x0107, B:42:0x010d, B:43:0x0114), top: B:89:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0191 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:53:0x0192  */
    /* JADX WARN: Code duplicated, block: B:56:0x01a2 A[Catch: all -> 0x00e1, TRY_ENTER, TryCatch #0 {all -> 0x00e1, blocks: (B:48:0x0157, B:50:0x0162, B:56:0x01a2, B:58:0x01a6, B:79:0x0212, B:80:0x0217, B:28:0x00a6, B:30:0x00b2, B:33:0x00e5, B:35:0x00eb, B:44:0x011a, B:37:0x00f1, B:39:0x0100, B:40:0x0107, B:42:0x010d, B:43:0x0114), top: B:89:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x01a6 A[Catch: all -> 0x00e1, TRY_LEAVE, TryCatch #0 {all -> 0x00e1, blocks: (B:48:0x0157, B:50:0x0162, B:56:0x01a2, B:58:0x01a6, B:79:0x0212, B:80:0x0217, B:28:0x00a6, B:30:0x00b2, B:33:0x00e5, B:35:0x00eb, B:44:0x011a, B:37:0x00f1, B:39:0x0100, B:40:0x0107, B:42:0x010d, B:43:0x0114), top: B:89:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:63:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:65:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:70:0x01f8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:79:0x0212 A[Catch: all -> 0x00e1, TRY_ENTER, TryCatch #0 {all -> 0x00e1, blocks: (B:48:0x0157, B:50:0x0162, B:56:0x01a2, B:58:0x01a6, B:79:0x0212, B:80:0x0217, B:28:0x00a6, B:30:0x00b2, B:33:0x00e5, B:35:0x00eb, B:44:0x011a, B:37:0x00f1, B:39:0x0100, B:40:0x0107, B:42:0x010d, B:43:0x0114), top: B:89:0x00a6 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x021e  */
    /* JADX WARN: Code duplicated, block: B:85:0x0223  */
    /* JADX WARN: Code duplicated, block: B:8:0x0018  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v13, types: [T, coil.b] */
    /* JADX WARN: Type inference failed for: r1v20, types: [T, coil.request.m] */
    /* JADX WARN: Type inference failed for: r1v6, types: [T, coil.b] */
    public final Object i(coil.request.h hVar, Object obj, m mVar, coil.c cVar, kotlin.coroutines.d<? super b> dVar) throws Throwable {
        d dVar2;
        p0 p0Var;
        p0 p0Var2;
        Object obj2;
        coil.c cVar2;
        p0 p0Var3;
        p0 p0Var4;
        p0 p0Var5;
        coil.request.h hVar2;
        a aVar;
        T t5;
        T t10;
        coil.fetch.h hVar3;
        p0 p0Var6;
        coil.request.h hVar4;
        b bVar;
        a aVar2;
        Object objG;
        coil.c cVar3;
        coil.request.h hVar5;
        a aVar3;
        coil.fetch.m mVar2;
        coil.decode.p pVarB;
        T t11;
        coil.fetch.m mVar3;
        Object objK;
        coil.decode.p pVarB2;
        Object obj3;
        Object obj4;
        Bitmap bitmap;
        if (dVar instanceof d) {
            dVar2 = (d) dVar;
            int i10 = dVar2.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                dVar2.label = i10 - Integer.MIN_VALUE;
            } else {
                dVar2 = new d(dVar);
            }
        } else {
            dVar2 = new d(dVar);
        }
        d dVar3 = dVar2;
        Object obj5 = dVar3.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = dVar3.label;
        if (i11 == 0) {
            w.b(obj5);
            p0 p0Var7 = new p0();
            p0Var7.element = mVar;
            p0 p0Var8 = new p0();
            p0Var8.element = this.imageLoader.getComponents();
            p0Var = new p0();
            try {
                if (!this.requestService.a((m) p0Var7.element)) {
                    m mVar4 = (m) p0Var7.element;
                    p0Var7.element = mVar4.a((32765 & 1) != 0 ? mVar4.context : null, (32765 & 2) != 0 ? mVar4.config : Bitmap.Config.ARGB_8888, (32765 & 4) != 0 ? mVar4.colorSpace : null, (32765 & 8) != 0 ? mVar4.size : null, (32765 & 16) != 0 ? mVar4.scale : null, (32765 & 32) != 0 ? mVar4.allowInexactSize : false, (32765 & 64) != 0 ? mVar4.allowRgb565 : false, (32765 & 128) != 0 ? mVar4.premultipliedAlpha : false, (32765 & 256) != 0 ? mVar4.diskCacheKey : null, (32765 & 512) != 0 ? mVar4.headers : null, (32765 & 1024) != 0 ? mVar4.tags : null, (32765 & 2048) != 0 ? mVar4.parameters : null, (32765 & 4096) != 0 ? mVar4.memoryCachePolicy : null, (32765 & 8192) != 0 ? mVar4.diskCachePolicy : null, (32765 & 16384) != 0 ? mVar4.networkCachePolicy : null);
                }
                if (hVar.w() != null || hVar.o() != null) {
                    coil.b.a aVarH = ((coil.b) p0Var8.element).h();
                    u<coil.fetch.i.a<?>, Class<?>> uVarW = hVar.w();
                    if (uVarW != null) {
                        aVarH.g().add(0, uVarW);
                    }
                    coil.decode.i.a aVarO = hVar.o();
                    if (aVarO != null) {
                        aVarH.f().add(0, aVarO);
                    }
                    p0Var8.element = aVarH.e();
                }
                coil.b bVar2 = (coil.b) p0Var8.element;
                m mVar5 = (m) p0Var7.element;
                dVar3.L$0 = this;
                dVar3.L$1 = hVar;
                dVar3.L$2 = obj;
                dVar3.L$3 = cVar;
                dVar3.L$4 = p0Var7;
                dVar3.L$5 = p0Var8;
                dVar3.L$6 = p0Var;
                dVar3.L$7 = p0Var;
                dVar3.label = 1;
                Object objJ = j(bVar2, hVar, obj, mVar5, cVar, dVar3);
                if (objJ == objE) {
                    return objE;
                }
                obj2 = obj;
                cVar2 = cVar;
                p0Var3 = p0Var7;
                p0Var4 = p0Var8;
                p0Var5 = p0Var;
                hVar2 = hVar;
                aVar = this;
                t5 = objJ;
                p0Var5.element = t5;
                t10 = p0Var.element;
                hVar3 = (coil.fetch.h) t10;
                if (hVar3 instanceof coil.fetch.m) {
                    k0 k0VarN = hVar2.n();
                    e eVar = aVar.new e(p0Var, p0Var4, hVar2, obj2, p0Var3, cVar2, null);
                    dVar3.L$0 = aVar;
                    dVar3.L$1 = hVar2;
                    dVar3.L$2 = cVar2;
                    dVar3.L$3 = p0Var3;
                    dVar3.L$4 = p0Var;
                    dVar3.L$5 = null;
                    dVar3.L$6 = null;
                    dVar3.L$7 = null;
                    dVar3.label = 2;
                    objG = kotlinx.coroutines.i.g(k0VarN, eVar, dVar3);
                    if (objG == objE) {
                        return objE;
                    }
                    cVar3 = cVar2;
                    hVar5 = hVar2;
                    aVar3 = aVar;
                    p0Var2 = p0Var;
                    obj3 = objG;
                    p0Var = p0Var2;
                    aVar2 = aVar3;
                    cVar2 = cVar3;
                    hVar4 = hVar5;
                    p0 p0Var9 = p0Var3;
                    bVar = (b) obj3;
                    p0Var6 = p0Var9;
                } else {
                    if (hVar3 instanceof coil.fetch.g) {
                        throw new s();
                    }
                    b bVar3 = new b(((coil.fetch.g) t10).b(), ((coil.fetch.g) p0Var.element).c(), ((coil.fetch.g) p0Var.element).a(), null);
                    p0Var6 = p0Var3;
                    hVar4 = hVar2;
                    bVar = bVar3;
                    aVar2 = aVar;
                }
                t11 = p0Var.element;
                if (t11 instanceof coil.fetch.m) {
                    mVar3 = (coil.fetch.m) t11;
                } else {
                    mVar3 = null;
                }
                if (mVar3 != null) {
                    coil.util.i.d(pVarB2);
                }
                m mVar6 = (m) p0Var6.element;
                dVar3.L$0 = null;
                dVar3.L$1 = null;
                dVar3.L$2 = null;
                dVar3.L$3 = null;
                dVar3.L$4 = null;
                dVar3.L$5 = null;
                dVar3.L$6 = null;
                dVar3.L$7 = null;
                dVar3.label = 3;
                objK = aVar2.k(bVar, hVar4, mVar6, cVar2, dVar3);
                obj4 = objK;
                if (objK == objE) {
                    return objE;
                }
            } catch (Throwable th) {
                th = th;
                p0Var2 = p0Var;
                T t12 = p0Var2.element;
                if (t12 instanceof coil.fetch.m) {
                }
                if (mVar2 != null && (pVarB = mVar2.b()) != null) {
                    coil.util.i.d(pVarB);
                }
                throw th;
            }
        } else if (i11 == 1) {
            p0Var5 = (p0) dVar3.L$7;
            p0 p0Var10 = (p0) dVar3.L$6;
            p0 p0Var11 = (p0) dVar3.L$5;
            p0 p0Var12 = (p0) dVar3.L$4;
            cVar2 = (coil.c) dVar3.L$3;
            Object obj6 = dVar3.L$2;
            hVar2 = (coil.request.h) dVar3.L$1;
            aVar = (a) dVar3.L$0;
            try {
                w.b(obj5);
                p0Var = p0Var10;
                p0Var4 = p0Var11;
                p0Var3 = p0Var12;
                obj2 = obj6;
                t5 = obj5;
                p0Var5.element = t5;
                t10 = p0Var.element;
                hVar3 = (coil.fetch.h) t10;
                if (hVar3 instanceof coil.fetch.m) {
                    k0 k0VarN2 = hVar2.n();
                    e eVar2 = aVar.new e(p0Var, p0Var4, hVar2, obj2, p0Var3, cVar2, null);
                    dVar3.L$0 = aVar;
                    dVar3.L$1 = hVar2;
                    dVar3.L$2 = cVar2;
                    dVar3.L$3 = p0Var3;
                    dVar3.L$4 = p0Var;
                    dVar3.L$5 = null;
                    dVar3.L$6 = null;
                    dVar3.L$7 = null;
                    dVar3.label = 2;
                    objG = kotlinx.coroutines.i.g(k0VarN2, eVar2, dVar3);
                    if (objG == objE) {
                        return objE;
                    }
                    cVar3 = cVar2;
                    hVar5 = hVar2;
                    aVar3 = aVar;
                    p0Var2 = p0Var;
                    obj3 = objG;
                    p0Var = p0Var2;
                    aVar2 = aVar3;
                    cVar2 = cVar3;
                    hVar4 = hVar5;
                    p0 p0Var13 = p0Var3;
                    bVar = (b) obj3;
                    p0Var6 = p0Var13;
                } else {
                    if (hVar3 instanceof coil.fetch.g) {
                        throw new s();
                    }
                    b bVar4 = new b(((coil.fetch.g) t10).b(), ((coil.fetch.g) p0Var.element).c(), ((coil.fetch.g) p0Var.element).a(), null);
                    p0Var6 = p0Var3;
                    hVar4 = hVar2;
                    bVar = bVar4;
                    aVar2 = aVar;
                }
                t11 = p0Var.element;
                if (t11 instanceof coil.fetch.m) {
                    mVar3 = (coil.fetch.m) t11;
                } else {
                    mVar3 = null;
                }
                if (mVar3 != null) {
                    coil.util.i.d(pVarB2);
                }
                m mVar7 = (m) p0Var6.element;
                dVar3.L$0 = null;
                dVar3.L$1 = null;
                dVar3.L$2 = null;
                dVar3.L$3 = null;
                dVar3.L$4 = null;
                dVar3.L$5 = null;
                dVar3.L$6 = null;
                dVar3.L$7 = null;
                dVar3.label = 3;
                objK = aVar2.k(bVar, hVar4, mVar7, cVar2, dVar3);
                obj4 = objK;
                if (objK == objE) {
                    return objE;
                }
            } catch (Throwable th2) {
                th = th2;
                p0Var2 = p0Var10;
                T t13 = p0Var2.element;
                if (t13 instanceof coil.fetch.m) {
                }
                if (mVar2 != null) {
                    coil.util.i.d(pVarB);
                }
                throw th;
            }
        } else if (i11 == 2) {
            p0Var2 = (p0) dVar3.L$4;
            p0Var3 = (p0) dVar3.L$3;
            cVar3 = (coil.c) dVar3.L$2;
            hVar5 = (coil.request.h) dVar3.L$1;
            aVar3 = (a) dVar3.L$0;
            try {
                w.b(obj5);
                obj3 = obj5;
                p0Var = p0Var2;
                aVar2 = aVar3;
                cVar2 = cVar3;
                hVar4 = hVar5;
                p0 p0Var14 = p0Var3;
                bVar = (b) obj3;
                p0Var6 = p0Var14;
                t11 = p0Var.element;
                if (t11 instanceof coil.fetch.m) {
                    mVar3 = (coil.fetch.m) t11;
                } else {
                    mVar3 = null;
                }
                if (mVar3 != null && (pVarB2 = mVar3.b()) != null) {
                    coil.util.i.d(pVarB2);
                }
                m mVar8 = (m) p0Var6.element;
                dVar3.L$0 = null;
                dVar3.L$1 = null;
                dVar3.L$2 = null;
                dVar3.L$3 = null;
                dVar3.L$4 = null;
                dVar3.L$5 = null;
                dVar3.L$6 = null;
                dVar3.L$7 = null;
                dVar3.label = 3;
                objK = aVar2.k(bVar, hVar4, mVar8, cVar2, dVar3);
                obj4 = objK;
                if (objK == objE) {
                    return objE;
                }
            } catch (Throwable th3) {
                th = th3;
                T t14 = p0Var2.element;
                mVar2 = t14 instanceof coil.fetch.m ? (coil.fetch.m) t14 : null;
                if (mVar2 != null) {
                    coil.util.i.d(pVarB);
                }
                throw th;
            }
        } else {
            if (i11 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            w.b(obj5);
            obj4 = obj5;
        }
        b bVar5 = (b) obj4;
        Drawable drawableE = bVar5.e();
        BitmapDrawable bitmapDrawable = drawableE instanceof BitmapDrawable ? (BitmapDrawable) drawableE : null;
        if (bitmapDrawable != null && (bitmap = bitmapDrawable.getBitmap()) != null) {
            bitmap.prepareToDraw();
        }
        return bVar5;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:17:0x0065  */
    /* JADX WARN: Code duplicated, block: B:19:0x0091 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:20:0x0092  */
    /* JADX WARN: Code duplicated, block: B:24:0x009e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:25:0x009f  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0092 -> B:21:0x0097). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object j(coil.b r10, coil.request.h r11, java.lang.Object r12, coil.request.m r13, coil.c r14, kotlin.coroutines.d<? super coil.fetch.h> r15) {
        /*
            Method dump skipped, instruction units count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: coil.intercept.a.j(coil.b, coil.request.h, java.lang.Object, coil.request.m, coil.c, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:36:0x00af  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // coil.intercept.b
    @Nullable
    public Object a(@NotNull coil.intercept.b.a aVar, @NotNull kotlin.coroutines.d<? super coil.request.i> dVar) throws Throwable {
        g gVar;
        a aVar2;
        if (dVar instanceof g) {
            gVar = (g) dVar;
            int i10 = gVar.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                gVar.label = i10 - Integer.MIN_VALUE;
            } else {
                gVar = new g(dVar);
            }
        } else {
            gVar = new g(dVar);
        }
        Object objG = gVar.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = gVar.label;
        if (i11 != 0) {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar = (coil.intercept.b.a) gVar.L$1;
            aVar2 = (a) gVar.L$0;
            try {
                w.b(objG);
            } catch (Throwable th) {
                th = th;
                if (th instanceof CancellationException) {
                    throw th;
                }
                return aVar2.requestService.b(aVar.a(), th);
            }
        }
        w.b(objG);
        try {
            coil.request.h hVarA = aVar.a();
            Object objM = hVarA.m();
            coil.size.i size = aVar.getSize();
            coil.c cVarH = coil.util.i.h(aVar);
            m mVarF = this.requestService.f(hVarA, size);
            coil.size.h hVarM = mVarF.m();
            cVarH.l(hVarA, objM);
            Object objG2 = this.imageLoader.getComponents().g(objM, mVarF);
            cVarH.g(hVarA, objG2);
            MemoryCache.Key keyF = this.memoryCacheService.f(hVarA, objG2, mVarF, cVarH);
            MemoryCache.b bVarA = keyF != null ? this.memoryCacheService.a(hVarA, keyF, size, hVarM) : null;
            if (bVarA != null) {
                return this.memoryCacheService.g(aVar, hVarA, keyF, bVarA);
            }
            k0 k0VarV = hVarA.v();
            h hVar = new h(hVarA, objG2, mVarF, cVarH, keyF, aVar, null);
            gVar.L$0 = this;
            gVar.L$1 = aVar;
            gVar.label = 1;
            objG = kotlinx.coroutines.i.g(k0VarV, hVar, gVar);
            return objG == objE ? objE : objG;
        } catch (Throwable th2) {
            th = th2;
            aVar2 = this;
            if (th instanceof CancellationException) {
                return aVar2.requestService.b(aVar.a(), th);
            }
            throw th;
        }
    }

    public a(@NotNull coil.e eVar, @NotNull o oVar, @Nullable q qVar) {
        this.imageLoader = eVar;
        this.requestService = oVar;
        this.memoryCacheService = new coil.memory.c(eVar, oVar, null);
    }

    @VisibleForTesting
    @Nullable
    public final Object k(@NotNull b bVar, @NotNull coil.request.h hVar, @NotNull m mVar, @NotNull coil.c cVar, @NotNull kotlin.coroutines.d<? super b> dVar) {
        List<g0.a> listO = hVar.O();
        if (listO.isEmpty()) {
            return bVar;
        }
        if (!(bVar.e() instanceof BitmapDrawable) && !hVar.g()) {
            return bVar;
        }
        return kotlinx.coroutines.i.g(hVar.N(), new i(bVar, mVar, listO, cVar, hVar, null), dVar);
    }
}
