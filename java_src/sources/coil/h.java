package coil;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.MainThread;
import androidx.lifecycle.Lifecycle;
import coil.memory.MemoryCache;
import coil.request.RequestDelegate;
import coil.request.i;
import coil.request.j;
import coil.request.o;
import coil.util.Lifecycles;
import coil.util.n;
import coil.util.q;
import coil.util.s;
import com.narvii.util.ws.WsMessage;
import e8.p;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.d0;
import kotlin.coroutines.jvm.internal.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.f2;
import kotlinx.coroutines.k0;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.v0;
import kotlinx.coroutines.y2;
import okhttp3.Call;
import okhttp3.HttpUrl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.w;

/* JADX INFO: loaded from: classes6.dex */
public final class h implements coil.e {

    @NotNull
    public static final a Companion = new a(null);
    private static final int REQUEST_TYPE_ENQUEUE = 0;
    private static final int REQUEST_TYPE_EXECUTE = 1;

    @NotNull
    private static final String TAG = "RealImageLoader";

    @NotNull
    private final m<Call.Factory> callFactoryLazy;

    @NotNull
    private final coil.b componentRegistry;

    @NotNull
    private final coil.b components;

    @NotNull
    private final Context context;

    @NotNull
    private final coil.request.b defaults;

    @NotNull
    private final m diskCache$delegate;

    @NotNull
    private final m<coil.disk.a> diskCacheLazy;

    @NotNull
    private final coil.c.d eventListenerFactory;

    @NotNull
    private final List<coil.intercept.b> interceptors;

    @NotNull
    private final AtomicBoolean isShutdown;

    @Nullable
    private final q logger;

    @NotNull
    private final m memoryCache$delegate;

    @NotNull
    private final m<MemoryCache> memoryCacheLazy;

    @NotNull
    private final n options;

    @NotNull
    private final o requestService;

    @NotNull
    private final o0 scope = p0.a(y2.b(null, 1, null).plus(e1.c().getImmediate()).plus(new f(l0.Key, this)));

    @NotNull
    private final s systemCallbacks;

    public static final class a {
        public /* synthetic */ a(k kVar) {
            this();
        }

        private a() {
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "coil.RealImageLoader$enqueue$job$1", f = "RealImageLoader.kt", l = {123}, m = "invokeSuspend")
    static final class b extends l implements p<o0, kotlin.coroutines.d<? super i>, Object> {
        final /* synthetic */ coil.request.h $request;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(coil.request.h hVar, kotlin.coroutines.d<? super b> dVar) {
            super(2, dVar);
            this.$request = hVar;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return h.this.new b(this.$request, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super i> dVar) {
            return ((b) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
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
                h hVar = h.this;
                coil.request.h hVar2 = this.$request;
                this.label = 1;
                obj = hVar.g(hVar2, 0, this);
                if (obj == objE) {
                    return objE;
                }
            }
            h hVar3 = h.this;
            if (((i) obj) instanceof coil.request.e) {
                hVar3.m();
            }
            return obj;
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "coil.RealImageLoader$execute$2", f = "RealImageLoader.kt", l = {146}, m = "invokeSuspend")
    static final class c extends l implements p<o0, kotlin.coroutines.d<? super i>, Object> {
        final /* synthetic */ coil.request.h $request;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ h this$0;

        @kotlin.coroutines.jvm.internal.f(c = "coil.RealImageLoader$execute$2$job$1", f = "RealImageLoader.kt", l = {WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE}, m = "invokeSuspend")
        static final class a extends l implements p<o0, kotlin.coroutines.d<? super i>, Object> {
            final /* synthetic */ coil.request.h $request;
            int label;
            final /* synthetic */ h this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(h hVar, coil.request.h hVar2, kotlin.coroutines.d<? super a> dVar) {
                super(2, dVar);
                this.this$0 = hVar;
                this.$request = hVar2;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                return new a(this.this$0, this.$request, dVar);
            }

            @Override // e8.p
            @Nullable
            public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super i> dVar) {
                return ((a) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
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
                    h hVar = this.this$0;
                    coil.request.h hVar2 = this.$request;
                    this.label = 1;
                    obj = hVar.g(hVar2, 1, this);
                    if (obj == objE) {
                        return objE;
                    }
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(coil.request.h hVar, h hVar2, kotlin.coroutines.d<? super c> dVar) {
            super(2, dVar);
            this.$request = hVar;
            this.this$0 = hVar2;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            c cVar = new c(this.$request, this.this$0, dVar);
            cVar.L$0 = obj;
            return cVar;
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super i> dVar) {
            return ((c) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
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
                v0<? extends i> v0VarB = kotlinx.coroutines.k.b((o0) this.L$0, e1.c().getImmediate(), null, new a(this.this$0, this.$request, null), 2, null);
                if (this.$request.M() instanceof f0.b) {
                    coil.util.i.n(((f0.b) this.$request.M()).getView()).b(v0VarB);
                }
                this.label = 1;
                obj = v0VarB.i(this);
                if (obj == objE) {
                    return objE;
                }
            }
            return obj;
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "coil.RealImageLoader", f = "RealImageLoader.kt", l = {169, 180, 184}, m = "executeMain")
    static final class d extends kotlin.coroutines.jvm.internal.d {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
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
            return h.this.g(null, 0, this);
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "coil.RealImageLoader$executeMain$result$1", f = "RealImageLoader.kt", l = {193}, m = "invokeSuspend")
    static final class e extends l implements p<o0, kotlin.coroutines.d<? super i>, Object> {
        final /* synthetic */ coil.c $eventListener;
        final /* synthetic */ Bitmap $placeholderBitmap;
        final /* synthetic */ coil.request.h $request;
        final /* synthetic */ coil.size.i $size;
        int label;
        final /* synthetic */ h this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(coil.request.h hVar, h hVar2, coil.size.i iVar, coil.c cVar, Bitmap bitmap, kotlin.coroutines.d<? super e> dVar) {
            super(2, dVar);
            this.$request = hVar;
            this.this$0 = hVar2;
            this.$size = iVar;
            this.$eventListener = cVar;
            this.$placeholderBitmap = bitmap;
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<w7.l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return new e(this.$request, this.this$0, this.$size, this.$eventListener, this.$placeholderBitmap, dVar);
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super i> dVar) {
            return ((e) create(o0Var, dVar)).invokeSuspend(w7.l0.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            boolean z6;
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
                coil.request.h hVar = this.$request;
                List list = this.this$0.interceptors;
                coil.request.h hVar2 = this.$request;
                coil.size.i iVar = this.$size;
                coil.c cVar = this.$eventListener;
                if (this.$placeholderBitmap != null) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                coil.intercept.c cVar2 = new coil.intercept.c(hVar, list, 0, hVar2, iVar, cVar, z6);
                coil.request.h hVar3 = this.$request;
                this.label = 1;
                obj = cVar2.g(hVar3, this);
                if (obj == objE) {
                    return objE;
                }
            }
            return obj;
        }
    }

    public static final class f extends kotlin.coroutines.a implements l0 {
        final /* synthetic */ h this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(l0.b bVar, h hVar) {
            super(bVar);
            this.this$0 = hVar;
        }

        @Override // kotlinx.coroutines.l0
        public void handleException(@NotNull kotlin.coroutines.g gVar, @NotNull Throwable th) {
            this.this$0.m();
        }
    }

    @Override // coil.e
    @NotNull
    public coil.request.b a() {
        return this.defaults;
    }

    @Override // coil.e
    @NotNull
    public coil.b getComponents() {
        return this.components;
    }

    @NotNull
    public final m<Call.Factory> h() {
        return this.callFactoryLazy;
    }

    @NotNull
    public final coil.b i() {
        return this.componentRegistry;
    }

    @NotNull
    public final Context j() {
        return this.context;
    }

    @NotNull
    public final m<coil.disk.a> k() {
        return this.diskCacheLazy;
    }

    @NotNull
    public final coil.c.d l() {
        return this.eventListenerFactory;
    }

    @Nullable
    public final q m() {
        return null;
    }

    @NotNull
    public final m<MemoryCache> n() {
        return this.memoryCacheLazy;
    }

    @NotNull
    public final n o() {
        return this.options;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:54:0x0114  */
    /* JADX WARN: Code duplicated, block: B:70:0x0189 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:71:0x018a  */
    /* JADX WARN: Code duplicated, block: B:74:0x0194 A[Catch: all -> 0x004b, TryCatch #3 {all -> 0x004b, blocks: (B:14:0x0046, B:72:0x018e, B:74:0x0194, B:75:0x019f, B:77:0x01a3), top: B:99:0x0046 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x019f A[Catch: all -> 0x004b, TryCatch #3 {all -> 0x004b, blocks: (B:14:0x0046, B:72:0x018e, B:74:0x0194, B:75:0x019f, B:77:0x01a3), top: B:99:0x0046 }] */
    /* JADX WARN: Code duplicated, block: B:77:0x01a3 A[Catch: all -> 0x004b, TRY_LEAVE, TryCatch #3 {all -> 0x004b, blocks: (B:14:0x0046, B:72:0x018e, B:74:0x0194, B:75:0x019f, B:77:0x01a3), top: B:99:0x0046 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code duplicated, block: B:84:0x01bb A[Catch: all -> 0x01cc, TRY_LEAVE, TryCatch #4 {all -> 0x01cc, blocks: (B:82:0x01b7, B:84:0x01bb, B:89:0x01ce, B:90:0x01d1), top: B:100:0x01b7 }] */
    /* JADX WARN: Code duplicated, block: B:89:0x01ce A[Catch: all -> 0x01cc, TRY_ENTER, TryCatch #4 {all -> 0x01cc, blocks: (B:82:0x01b7, B:84:0x01bb, B:89:0x01ce, B:90:0x01d1), top: B:100:0x01b7 }] */
    @MainThread
    public final Object g(coil.request.h hVar, int i10, kotlin.coroutines.d<? super i> dVar) {
        d dVar2;
        RequestDelegate requestDelegateG;
        coil.request.h hVarA;
        h hVar2;
        RequestDelegate requestDelegate;
        coil.c cVar;
        h hVar3;
        coil.request.h hVar4;
        coil.c cVar2;
        RequestDelegate requestDelegate2;
        Bitmap bitmapA;
        Bitmap bitmap;
        h hVar5;
        RequestDelegate requestDelegate3;
        coil.request.h hVar6;
        i iVar;
        if (dVar instanceof d) {
            dVar2 = (d) dVar;
            int i11 = dVar2.label;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                dVar2.label = i11 - Integer.MIN_VALUE;
            } else {
                dVar2 = new d(dVar);
            }
        } else {
            dVar2 = new d(dVar);
        }
        Object objG = dVar2.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i12 = dVar2.label;
        try {
            if (i12 == 0) {
                w.b(objG);
                requestDelegateG = this.requestService.g(hVar, f2.l(dVar2.getContext()));
                requestDelegateG.a();
                hVarA = coil.request.h.R(hVar, null, 1, null).c(a()).a();
                coil.c cVarA = this.eventListenerFactory.a(hVarA);
                try {
                    if (t.e(hVarA.m(), j.INSTANCE)) {
                        throw new coil.request.k();
                    }
                    requestDelegateG.c();
                    if (i10 == 0) {
                        Lifecycle lifecycleZ = hVarA.z();
                        dVar2.L$0 = this;
                        dVar2.L$1 = requestDelegateG;
                        dVar2.L$2 = hVarA;
                        dVar2.L$3 = cVarA;
                        dVar2.label = 1;
                        if (Lifecycles.a(lifecycleZ, dVar2) == objE) {
                            return objE;
                        }
                        hVar3 = this;
                        hVar4 = hVarA;
                        cVar2 = cVarA;
                        requestDelegate2 = requestDelegateG;
                        requestDelegateG = requestDelegate2;
                    } else {
                        hVar3 = this;
                        hVar4 = hVarA;
                        cVar2 = cVarA;
                    }
                } catch (Throwable th) {
                    th = th;
                    hVar2 = this;
                    requestDelegate = requestDelegateG;
                    cVar = cVarA;
                    if (th instanceof CancellationException) {
                        hVar2.p(hVarA, cVar);
                        throw th;
                    }
                    coil.request.e eVarB = hVar2.requestService.b(hVarA, th);
                    hVar2.q(eVarB, hVarA.M(), cVar);
                    requestDelegate.b();
                    return eVarB;
                }
            } else {
                if (i12 != 1) {
                    if (i12 == 2) {
                        Bitmap bitmap2 = (Bitmap) dVar2.L$4;
                        cVar2 = (coil.c) dVar2.L$3;
                        hVar6 = (coil.request.h) dVar2.L$2;
                        requestDelegate3 = (RequestDelegate) dVar2.L$1;
                        hVar5 = (h) dVar2.L$0;
                        try {
                            w.b(objG);
                            bitmap = bitmap2;
                            coil.size.i iVar2 = (coil.size.i) objG;
                            cVar2.o(hVar6, iVar2);
                            k0 k0VarY = hVar6.y();
                            e eVar = new e(hVar6, hVar5, iVar2, cVar2, bitmap, null);
                            dVar2.L$0 = hVar5;
                            dVar2.L$1 = requestDelegate3;
                            dVar2.L$2 = hVar6;
                            dVar2.L$3 = cVar2;
                            dVar2.L$4 = null;
                            dVar2.label = 3;
                            objG = kotlinx.coroutines.i.g(k0VarY, eVar, dVar2);
                            if (objG == objE) {
                                return objE;
                            }
                            cVar = cVar2;
                            hVarA = hVar6;
                            requestDelegate = requestDelegate3;
                            hVar2 = hVar5;
                        } catch (Throwable th2) {
                            th = th2;
                            cVar = cVar2;
                            hVarA = hVar6;
                            requestDelegate = requestDelegate3;
                            hVar2 = hVar5;
                            if (th instanceof CancellationException) {
                                hVar2.p(hVarA, cVar);
                                throw th;
                            }
                            coil.request.e eVarB2 = hVar2.requestService.b(hVarA, th);
                            hVar2.q(eVarB2, hVarA.M(), cVar);
                            requestDelegate.b();
                            return eVarB2;
                        }
                    } else {
                        if (i12 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        cVar = (coil.c) dVar2.L$3;
                        hVarA = (coil.request.h) dVar2.L$2;
                        requestDelegate = (RequestDelegate) dVar2.L$1;
                        hVar2 = (h) dVar2.L$0;
                        try {
                            w.b(objG);
                        } catch (Throwable th3) {
                            th = th3;
                            try {
                                if (th instanceof CancellationException) {
                                    hVar2.p(hVarA, cVar);
                                    throw th;
                                }
                                coil.request.e eVarB3 = hVar2.requestService.b(hVarA, th);
                                hVar2.q(eVarB3, hVarA.M(), cVar);
                                requestDelegate.b();
                                return eVarB3;
                            } catch (Throwable th4) {
                                requestDelegate.b();
                                throw th4;
                            }
                        }
                    }
                    iVar = (i) objG;
                    if (iVar instanceof coil.request.p) {
                        hVar2.r((coil.request.p) iVar, hVarA.M(), cVar);
                    } else if (iVar instanceof coil.request.e) {
                        hVar2.q((coil.request.e) iVar, hVarA.M(), cVar);
                    }
                    requestDelegate.b();
                    return iVar;
                }
                cVar2 = (coil.c) dVar2.L$3;
                hVar4 = (coil.request.h) dVar2.L$2;
                requestDelegate2 = (RequestDelegate) dVar2.L$1;
                hVar3 = (h) dVar2.L$0;
                try {
                    w.b(objG);
                    requestDelegateG = requestDelegate2;
                } catch (Throwable th5) {
                    th = th5;
                    cVar = cVar2;
                    hVarA = hVar4;
                    requestDelegate = requestDelegate2;
                    hVar2 = hVar3;
                    if (th instanceof CancellationException) {
                        hVar2.p(hVarA, cVar);
                        throw th;
                    }
                    coil.request.e eVarB4 = hVar2.requestService.b(hVarA, th);
                    hVar2.q(eVarB4, hVarA.M(), cVar);
                    requestDelegate.b();
                    return eVarB4;
                }
            }
            MemoryCache memoryCacheD = hVar3.d();
            if (memoryCacheD == null) {
                bitmapA = null;
            } else {
                MemoryCache.Key keyG = hVar4.G();
                MemoryCache.b bVarB = keyG != null ? memoryCacheD.b(keyG) : null;
                if (bVarB != null) {
                    bitmapA = bVarB.a();
                } else {
                    bitmapA = null;
                }
            }
            Drawable bitmapDrawable = bitmapA != null ? new BitmapDrawable(hVar4.l().getResources(), bitmapA) : hVar4.F();
            f0.a aVarM = hVar4.M();
            if (aVarM != null) {
                aVarM.b(bitmapDrawable);
            }
            cVar2.b(hVar4);
            coil.request.h.b bVarA = hVar4.A();
            if (bVarA != null) {
                bVarA.b(hVar4);
            }
            cVar2.r(hVar4);
            coil.size.j jVarK = hVar4.K();
            dVar2.L$0 = hVar3;
            dVar2.L$1 = requestDelegateG;
            dVar2.L$2 = hVar4;
            dVar2.L$3 = cVar2;
            dVar2.L$4 = bitmapA;
            dVar2.label = 2;
            Object objB = jVarK.b(dVar2);
            if (objB == objE) {
                return objE;
            }
            bitmap = bitmapA;
            hVar5 = hVar3;
            coil.request.h hVar7 = hVar4;
            requestDelegate3 = requestDelegateG;
            objG = objB;
            hVar6 = hVar7;
            coil.size.i iVar3 = (coil.size.i) objG;
            cVar2.o(hVar6, iVar3);
            k0 k0VarY2 = hVar6.y();
            e eVar2 = new e(hVar6, hVar5, iVar3, cVar2, bitmap, null);
            dVar2.L$0 = hVar5;
            dVar2.L$1 = requestDelegate3;
            dVar2.L$2 = hVar6;
            dVar2.L$3 = cVar2;
            dVar2.L$4 = null;
            dVar2.label = 3;
            objG = kotlinx.coroutines.i.g(k0VarY2, eVar2, dVar2);
            if (objG == objE) {
                return objE;
            }
            cVar = cVar2;
            hVarA = hVar6;
            requestDelegate = requestDelegate3;
            hVar2 = hVar5;
            iVar = (i) objG;
            if (iVar instanceof coil.request.p) {
                hVar2.r((coil.request.p) iVar, hVarA.M(), cVar);
            } else if (iVar instanceof coil.request.e) {
                hVar2.q((coil.request.e) iVar, hVarA.M(), cVar);
            }
            requestDelegate.b();
            return iVar;
        } catch (Throwable th6) {
            th = th6;
            requestDelegate = requestDelegateG;
            cVar = cVar2;
            hVarA = hVar4;
            hVar2 = hVar3;
            if (th instanceof CancellationException) {
                hVar2.p(hVarA, cVar);
                throw th;
            }
            coil.request.e eVarB5 = hVar2.requestService.b(hVarA, th);
            hVar2.q(eVarB5, hVarA.M(), cVar);
            requestDelegate.b();
            return eVarB5;
        }
    }

    @Override // coil.e
    @NotNull
    public coil.request.d b(@NotNull coil.request.h hVar) {
        v0<? extends i> v0VarB = kotlinx.coroutines.k.b(this.scope, null, null, new b(hVar, null), 3, null);
        return hVar.M() instanceof f0.b ? coil.util.i.n(((f0.b) hVar.M()).getView()).b(v0VarB) : new coil.request.l(v0VarB);
    }

    @Override // coil.e
    @Nullable
    public Object c(@NotNull coil.request.h hVar, @NotNull kotlin.coroutines.d<? super i> dVar) {
        return p0.f(new c(hVar, this, null), dVar);
    }

    @Override // coil.e
    @Nullable
    public MemoryCache d() {
        return (MemoryCache) this.memoryCache$delegate.getValue();
    }

    public final void s(int i10) {
        MemoryCache value;
        m<MemoryCache> mVar = this.memoryCacheLazy;
        if (mVar == null || (value = mVar.getValue()) == null) {
            return;
        }
        value.a(i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public h(@NotNull Context context, @NotNull coil.request.b bVar, @NotNull m<? extends MemoryCache> mVar, @NotNull m<? extends coil.disk.a> mVar2, @NotNull m<? extends Call.Factory> mVar3, @NotNull coil.c.d dVar, @NotNull coil.b bVar2, @NotNull n nVar, @Nullable q qVar) {
        this.context = context;
        this.defaults = bVar;
        this.memoryCacheLazy = mVar;
        this.diskCacheLazy = mVar2;
        this.callFactoryLazy = mVar3;
        this.eventListenerFactory = dVar;
        this.componentRegistry = bVar2;
        this.options = nVar;
        s sVar = new s(this, context, nVar.d());
        this.systemCallbacks = sVar;
        o oVar = new o(this, sVar, null);
        this.requestService = oVar;
        this.memoryCache$delegate = mVar;
        this.diskCache$delegate = mVar2;
        this.components = bVar2.h().d(new e0.c(), HttpUrl.class).d(new e0.g(), String.class).d(new e0.b(), Uri.class).d(new e0.f(), Uri.class).d(new e0.e(), Integer.class).d(new e0.a(), byte[].class).c(new d0.c(), Uri.class).c(new d0.a(nVar.a()), File.class).b(new coil.fetch.k.b(mVar3, mVar2, nVar.e()), Uri.class).b(new coil.fetch.j.a(), File.class).b(new coil.fetch.a.C0101a(), Uri.class).b(new coil.fetch.e.a(), Uri.class).b(new coil.fetch.l.b(), Uri.class).b(new coil.fetch.f.a(), Drawable.class).b(new coil.fetch.b.a(), Bitmap.class).b(new coil.fetch.c.a(), ByteBuffer.class).a(new coil.decode.d.c(nVar.c(), nVar.b())).e();
        this.interceptors = d0.E0(getComponents().c(), new coil.intercept.a(this, oVar, null));
        this.isShutdown = new AtomicBoolean(false);
        sVar.c();
    }

    private final void p(coil.request.h hVar, coil.c cVar) {
        cVar.a(hVar);
        coil.request.h.b bVarA = hVar.A();
        if (bVarA != null) {
            bVarA.a(hVar);
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001e  */
    private final void q(coil.request.e eVar, f0.a aVar, coil.c cVar) {
        coil.request.h hVarB = eVar.b();
        if (!(aVar instanceof coil.transition.d)) {
            if (aVar != null) {
                aVar.c(eVar.a());
            }
        } else {
            coil.transition.c cVarA = eVar.b().P().a((coil.transition.d) aVar, eVar);
            if (cVarA instanceof coil.transition.b) {
                aVar.c(eVar.a());
            } else {
                cVar.j(eVar.b(), cVarA);
                cVarA.a();
                cVar.k(eVar.b(), cVarA);
            }
        }
        cVar.c(hVarB, eVar);
        coil.request.h.b bVarA = hVarB.A();
        if (bVarA != null) {
            bVarA.c(hVarB, eVar);
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0021  */
    private final void r(coil.request.p pVar, f0.a aVar, coil.c cVar) {
        coil.request.h hVarB = pVar.b();
        pVar.c();
        if (!(aVar instanceof coil.transition.d)) {
            if (aVar != null) {
                aVar.a(pVar.a());
            }
        } else {
            coil.transition.c cVarA = pVar.b().P().a((coil.transition.d) aVar, pVar);
            if (cVarA instanceof coil.transition.b) {
                aVar.a(pVar.a());
            } else {
                cVar.j(pVar.b(), cVarA);
                cVarA.a();
                cVar.k(pVar.b(), cVarA);
            }
        }
        cVar.d(hVarB, pVar);
        coil.request.h.b bVarA = hVarB.A();
        if (bVarA != null) {
            bVarA.d(hVarB, pVar);
        }
    }
}
