package coil.compose;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidImageBitmap_androidKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.BitmapPainterKt;
import androidx.compose.ui.graphics.painter.ColorPainter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import coil.request.p;
import e8.l;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.n;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.flow.n0;
import kotlinx.coroutines.flow.x;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.y2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.s;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
@Stable
public final class b extends Painter implements RememberObserver {

    @NotNull
    public static final C0090b Companion = new C0090b(null);

    @NotNull
    private static final l<c, c> DefaultTransform = a.INSTANCE;

    @Nullable
    private Painter _painter;

    @NotNull
    private c _state;

    @NotNull
    private ContentScale contentScale;
    private int filterQuality;

    @NotNull
    private final MutableState imageLoader$delegate;
    private boolean isPreview;

    @Nullable
    private l<? super c, l0> onState;

    @Nullable
    private o0 rememberScope;

    @NotNull
    private final MutableState request$delegate;

    @NotNull
    private final MutableState state$delegate;

    @NotNull
    private l<? super c, ? extends c> transform;

    @NotNull
    private final x<Size> drawSize = n0.a(Size.c(Size.Companion.b()));

    @NotNull
    private final MutableState painter$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);

    @NotNull
    private final MutableState alpha$delegate = SnapshotStateKt__SnapshotStateKt.e(Float.valueOf(1.0f), null, 2, null);

    @NotNull
    private final MutableState colorFilter$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);

    static final class a extends v implements l<c, c> {
        public static final a INSTANCE = new a();

        a() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final c invoke(@NotNull c cVar) {
            return cVar;
        }
    }

    /* JADX INFO: renamed from: coil.compose.b$b, reason: collision with other inner class name */
    public static final class C0090b {
        public /* synthetic */ C0090b(k kVar) {
            this();
        }

        private C0090b() {
        }

        @NotNull
        public final l<c, c> a() {
            return b.DefaultTransform;
        }
    }

    @StabilityInferred
    public static abstract class c {
        public static final int $stable = 0;

        @StabilityInferred
        public static final class a extends c {
            public static final int $stable = 0;

            @NotNull
            public static final a INSTANCE = new a();

            private a() {
                super(null);
            }

            @Override // coil.compose.b.c
            @Nullable
            public Painter a() {
                return null;
            }
        }

        /* JADX INFO: renamed from: coil.compose.b$c$b, reason: collision with other inner class name */
        @StabilityInferred
        public static final class C0091b extends c {
            public static final int $stable = 8;

            @Nullable
            private final Painter painter;

            @NotNull
            private final coil.request.e result;

            public C0091b(@Nullable Painter painter, @NotNull coil.request.e eVar) {
                super(null);
                this.painter = painter;
                this.result = eVar;
            }

            @Override // coil.compose.b.c
            @Nullable
            public Painter a() {
                return this.painter;
            }

            @NotNull
            public final coil.request.e b() {
                return this.result;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof C0091b)) {
                    return false;
                }
                C0091b c0091b = (C0091b) obj;
                return t.e(a(), c0091b.a()) && t.e(this.result, c0091b.result);
            }

            public int hashCode() {
                return ((a() == null ? 0 : a().hashCode()) * 31) + this.result.hashCode();
            }

            @NotNull
            public String toString() {
                return "Error(painter=" + a() + ", result=" + this.result + ')';
            }
        }

        /* JADX INFO: renamed from: coil.compose.b$c$c, reason: collision with other inner class name */
        @StabilityInferred
        public static final class C0092c extends c {
            public static final int $stable = 8;

            @Nullable
            private final Painter painter;

            public C0092c(@Nullable Painter painter) {
                super(null);
                this.painter = painter;
            }

            @Override // coil.compose.b.c
            @Nullable
            public Painter a() {
                return this.painter;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof C0092c) && t.e(a(), ((C0092c) obj).a());
            }

            public int hashCode() {
                if (a() == null) {
                    return 0;
                }
                return a().hashCode();
            }

            @NotNull
            public String toString() {
                return "Loading(painter=" + a() + ')';
            }
        }

        @StabilityInferred
        public static final class d extends c {
            public static final int $stable = 8;

            @NotNull
            private final Painter painter;

            @NotNull
            private final p result;

            public d(@NotNull Painter painter, @NotNull p pVar) {
                super(null);
                this.painter = painter;
                this.result = pVar;
            }

            @Override // coil.compose.b.c
            @NotNull
            public Painter a() {
                return this.painter;
            }

            @NotNull
            public final p b() {
                return this.result;
            }

            public boolean equals(@Nullable Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof d)) {
                    return false;
                }
                d dVar = (d) obj;
                return t.e(a(), dVar.a()) && t.e(this.result, dVar.result);
            }

            public int hashCode() {
                return (a().hashCode() * 31) + this.result.hashCode();
            }

            @NotNull
            public String toString() {
                return "Success(painter=" + a() + ", result=" + this.result + ')';
            }
        }

        public /* synthetic */ c(k kVar) {
            this();
        }

        @Nullable
        public abstract Painter a();

        private c() {
        }
    }

    @kotlin.coroutines.jvm.internal.f(c = "coil.compose.AsyncImagePainter$onRemembered$1", f = "AsyncImagePainter.kt", l = {246}, m = "invokeSuspend")
    static final class d extends kotlin.coroutines.jvm.internal.l implements e8.p<o0, kotlin.coroutines.d<? super l0>, Object> {
        int label;

        static final class a extends v implements e8.a<coil.request.h> {
            final /* synthetic */ b this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(b bVar) {
                super(0);
                this.this$0 = bVar;
            }

            @Override // e8.a
            @NotNull
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public final coil.request.h invoke() {
                return this.this$0.y();
            }
        }

        /* synthetic */ class c implements kotlinx.coroutines.flow.h, n {
            final /* synthetic */ b $tmp0;

            c(b bVar) {
                this.$tmp0 = bVar;
            }

            public final boolean equals(@Nullable Object obj) {
                if ((obj instanceof kotlinx.coroutines.flow.h) && (obj instanceof n)) {
                    return t.e(getFunctionDelegate(), ((n) obj).getFunctionDelegate());
                }
                return false;
            }

            @Override // kotlin.jvm.internal.n
            @NotNull
            public final w7.g<?> getFunctionDelegate() {
                return new kotlin.jvm.internal.a(2, this.$tmp0, b.class, "updateState", "updateState(Lcoil/compose/AsyncImagePainter$State;)V", 4);
            }

            public final int hashCode() {
                return getFunctionDelegate().hashCode();
            }

            @Override // kotlinx.coroutines.flow.h
            @Nullable
            /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
            public final Object emit(@NotNull c cVar, @NotNull kotlin.coroutines.d<? super l0> dVar) {
                Object objG = d.g(this.$tmp0, cVar, dVar);
                return objG == kotlin.coroutines.intrinsics.d.e() ? objG : l0.INSTANCE;
            }
        }

        d(kotlin.coroutines.d<? super d> dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
            return b.this.new d(dVar);
        }

        /* JADX INFO: renamed from: coil.compose.b$d$b, reason: collision with other inner class name */
        @kotlin.coroutines.jvm.internal.f(c = "coil.compose.AsyncImagePainter$onRemembered$1$2", f = "AsyncImagePainter.kt", l = {245}, m = "invokeSuspend")
        static final class C0093b extends kotlin.coroutines.jvm.internal.l implements e8.p<coil.request.h, kotlin.coroutines.d<? super c>, Object> {
            Object L$0;
            int label;
            final /* synthetic */ b this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0093b(b bVar, kotlin.coroutines.d<? super C0093b> dVar) {
                super(2, dVar);
                this.this$0 = bVar;
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @NotNull
            public final kotlin.coroutines.d<l0> create(@Nullable Object obj, @NotNull kotlin.coroutines.d<?> dVar) {
                return new C0093b(this.this$0, dVar);
            }

            @Override // e8.p
            @Nullable
            /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
            public final Object invoke(@NotNull coil.request.h hVar, @Nullable kotlin.coroutines.d<? super c> dVar) {
                return ((C0093b) create(hVar, dVar)).invokeSuspend(l0.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.a
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                b bVar;
                Object objE = kotlin.coroutines.intrinsics.d.e();
                int i10 = this.label;
                if (i10 != 0) {
                    if (i10 == 1) {
                        bVar = (b) this.L$0;
                        w.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    w.b(obj);
                    b bVar2 = this.this$0;
                    coil.e eVarW = bVar2.w();
                    b bVar3 = this.this$0;
                    coil.request.h hVarP = bVar3.P(bVar3.y());
                    this.L$0 = bVar2;
                    this.label = 1;
                    Object objC = eVarW.c(hVarP, this);
                    if (objC == objE) {
                        return objE;
                    }
                    bVar = bVar2;
                    obj = objC;
                }
                return bVar.O((coil.request.i) obj);
            }
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull o0 o0Var, @Nullable kotlin.coroutines.d<? super l0> dVar) {
            return ((d) create(o0Var, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final /* synthetic */ Object g(b bVar, c cVar, kotlin.coroutines.d dVar) {
            bVar.Q(cVar);
            return l0.INSTANCE;
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
                kotlinx.coroutines.flow.g gVarD = kotlinx.coroutines.flow.i.D(SnapshotStateKt.o(new a(b.this)), new C0093b(b.this, null));
                c cVar = new c(b.this);
                this.label = 1;
                if (gVarD.collect(cVar, this) == objE) {
                    return objE;
                }
            }
            return l0.INSTANCE;
        }
    }

    public static final class e implements f0.a {
        @Override // f0.a
        public void a(@NotNull Drawable drawable) {
        }

        @Override // f0.a
        public void c(@Nullable Drawable drawable) {
        }

        public e() {
        }

        @Override // f0.a
        public void b(@Nullable Drawable drawable) {
            b.this.Q(new c.C0092c(drawable != null ? b.this.N(drawable) : null));
        }
    }

    static final class f implements coil.size.j {

        public static final class a implements kotlinx.coroutines.flow.g<coil.size.i> {
            final /* synthetic */ kotlinx.coroutines.flow.g $this_unsafeTransform$inlined;

            /* JADX INFO: renamed from: coil.compose.b$f$a$a, reason: collision with other inner class name */
            public static final class C0094a<T> implements kotlinx.coroutines.flow.h {
                final /* synthetic */ kotlinx.coroutines.flow.h $this_unsafeFlow;

                /* JADX INFO: renamed from: coil.compose.b$f$a$a$a, reason: collision with other inner class name */
                @kotlin.coroutines.jvm.internal.f(c = "coil.compose.AsyncImagePainter$updateRequest$2$1$size$$inlined$mapNotNull$1$2", f = "AsyncImagePainter.kt", l = {225}, m = "emit")
                public static final class C0095a extends kotlin.coroutines.jvm.internal.d {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public C0095a(kotlin.coroutines.d dVar) {
                        super(dVar);
                    }

                    @Override // kotlin.coroutines.jvm.internal.a
                    @Nullable
                    public final Object invokeSuspend(@NotNull Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return C0094a.this.emit(null, this);
                    }
                }

                public C0094a(kotlinx.coroutines.flow.h hVar) {
                    this.$this_unsafeFlow = hVar;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.h
                @Nullable
                public final Object emit(Object obj, @NotNull kotlin.coroutines.d dVar) {
                    C0095a c0095a;
                    if (dVar instanceof C0095a) {
                        c0095a = (C0095a) dVar;
                        int i10 = c0095a.label;
                        if ((i10 & Integer.MIN_VALUE) != 0) {
                            c0095a.label = i10 - Integer.MIN_VALUE;
                        } else {
                            c0095a = new C0095a(dVar);
                        }
                    } else {
                        c0095a = new C0095a(dVar);
                    }
                    Object obj2 = c0095a.result;
                    Object objE = kotlin.coroutines.intrinsics.d.e();
                    int i11 = c0095a.label;
                    if (i11 == 0) {
                        w.b(obj2);
                        kotlinx.coroutines.flow.h hVar = this.$this_unsafeFlow;
                        coil.size.i iVarE = coil.compose.c.e(((Size) obj).m());
                        if (iVarE != null) {
                            c0095a.label = 1;
                            if (hVar.emit(iVarE, c0095a) == objE) {
                                return objE;
                            }
                        }
                    } else {
                        if (i11 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        w.b(obj2);
                    }
                    return l0.INSTANCE;
                }
            }

            public a(kotlinx.coroutines.flow.g gVar) {
                this.$this_unsafeTransform$inlined = gVar;
            }

            @Override // kotlinx.coroutines.flow.g
            @Nullable
            public Object collect(@NotNull kotlinx.coroutines.flow.h<? super coil.size.i> hVar, @NotNull kotlin.coroutines.d dVar) {
                Object objCollect = this.$this_unsafeTransform$inlined.collect(new C0094a(hVar), dVar);
                return objCollect == kotlin.coroutines.intrinsics.d.e() ? objCollect : l0.INSTANCE;
            }
        }

        f() {
        }

        @Override // coil.size.j
        @Nullable
        public final Object b(@NotNull kotlin.coroutines.d<? super coil.size.i> dVar) {
            return kotlinx.coroutines.flow.i.v(new a(b.this.drawSize), dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final coil.request.h P(coil.request.h hVar) {
        coil.request.h.a aVarL = coil.request.h.R(hVar, null, 1, null).l(new e());
        if (hVar.q().m() == null) {
            aVarL.k(new f());
        }
        if (hVar.q().l() == null) {
            aVarL.j(j.f(this.contentScale));
        }
        if (hVar.q().k() != coil.size.e.EXACT) {
            aVarL.d(coil.size.e.INEXACT);
        }
        return aVarL.a();
    }

    public final void C(@NotNull ContentScale contentScale) {
        this.contentScale = contentScale;
    }

    public final void D(int i10) {
        this.filterQuality = i10;
    }

    public final void F(@Nullable l<? super c, l0> lVar) {
        this.onState = lVar;
    }

    public final void H(boolean z6) {
        this.isPreview = z6;
    }

    public final void K(@NotNull l<? super c, ? extends c> lVar) {
        this.transform = lVar;
    }

    private final void A(float f6) {
        this.alpha$delegate.setValue(Float.valueOf(f6));
    }

    private final void B(ColorFilter colorFilter) {
        this.colorFilter$delegate.setValue(colorFilter);
    }

    private final void G(Painter painter) {
        this.painter$delegate.setValue(painter);
    }

    private final void J(c cVar) {
        this.state$delegate.setValue(cVar);
    }

    private final void L(Painter painter) {
        this._painter = painter;
        G(painter);
    }

    private final void M(c cVar) {
        this._state = cVar;
        J(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Painter N(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return BitmapPainterKt.b(AndroidImageBitmap_androidKt.c(((BitmapDrawable) drawable).getBitmap()), 0L, 0L, this.filterQuality, 6, null);
        }
        return drawable instanceof ColorDrawable ? new ColorPainter(ColorKt.b(((ColorDrawable) drawable).getColor()), null) : new com.google.accompanist.drawablepainter.a(drawable.mutate());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final c O(coil.request.i iVar) {
        if (iVar instanceof p) {
            p pVar = (p) iVar;
            return new c.d(N(pVar.a()), pVar);
        }
        if (!(iVar instanceof coil.request.e)) {
            throw new s();
        }
        Drawable drawableA = iVar.a();
        return new c.C0091b(drawableA != null ? N(drawableA) : null, (coil.request.e) iVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q(c cVar) {
        c cVar2 = this._state;
        c cVarInvoke = this.transform.invoke(cVar);
        M(cVarInvoke);
        Painter painterZ = z(cVar2, cVarInvoke);
        if (painterZ == null) {
            painterZ = cVarInvoke.a();
        }
        L(painterZ);
        if (this.rememberScope != null && cVar2.a() != cVarInvoke.a()) {
            Object objA = cVar2.a();
            RememberObserver rememberObserver = objA instanceof RememberObserver ? (RememberObserver) objA : null;
            if (rememberObserver != null) {
                rememberObserver.d();
            }
            Object objA2 = cVarInvoke.a();
            RememberObserver rememberObserver2 = objA2 instanceof RememberObserver ? (RememberObserver) objA2 : null;
            if (rememberObserver2 != null) {
                rememberObserver2.b();
            }
        }
        l<? super c, l0> lVar = this.onState;
        if (lVar != null) {
            lVar.invoke(cVarInvoke);
        }
    }

    private final void t() {
        o0 o0Var = this.rememberScope;
        if (o0Var != null) {
            p0.e(o0Var, null, 1, null);
        }
        this.rememberScope = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final float u() {
        return ((Number) this.alpha$delegate.getValue()).floatValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final ColorFilter v() {
        return (ColorFilter) this.colorFilter$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Painter x() {
        return (Painter) this.painter$delegate.getValue();
    }

    private final coil.compose.f z(c cVar, c cVar2) {
        coil.request.i iVarB;
        if (!(cVar2 instanceof c.d)) {
            if (cVar2 instanceof c.C0091b) {
                iVarB = ((c.C0091b) cVar2).b();
            }
            return null;
        }
        iVarB = ((c.d) cVar2).b();
        coil.transition.c cVarA = iVarB.b().P().a(coil.compose.c.FakeTransitionTarget, iVarB);
        if (cVarA instanceof coil.transition.a) {
            coil.transition.a aVar = (coil.transition.a) cVarA;
            return new coil.compose.f(cVar instanceof c.C0092c ? cVar.a() : null, cVar2.a(), this.contentScale, aVar.b(), ((iVarB instanceof p) && ((p) iVarB).d()) ? false : true, aVar.c());
        }
        return null;
    }

    public final void E(@NotNull coil.e eVar) {
        this.imageLoader$delegate.setValue(eVar);
    }

    public final void I(@NotNull coil.request.h hVar) {
        this.request$delegate.setValue(hVar);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void b() {
        if (this.rememberScope != null) {
            return;
        }
        o0 o0VarA = p0.a(y2.b(null, 1, null).plus(e1.c().getImmediate()));
        this.rememberScope = o0VarA;
        Object obj = this._painter;
        RememberObserver rememberObserver = obj instanceof RememberObserver ? (RememberObserver) obj : null;
        if (rememberObserver != null) {
            rememberObserver.b();
        }
        if (!this.isPreview) {
            kotlinx.coroutines.k.d(o0VarA, null, null, new d(null), 3, null);
        } else {
            Drawable drawableF = coil.request.h.R(y(), null, 1, null).c(w().a()).a().F();
            Q(new c.C0092c(drawableF != null ? N(drawableF) : null));
        }
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected void m(@NotNull DrawScope drawScope) {
        this.drawSize.setValue(Size.c(drawScope.c()));
        Painter painterX = x();
        if (painterX != null) {
            painterX.j(drawScope, drawScope.c(), u(), v());
        }
    }

    @NotNull
    public final coil.e w() {
        return (coil.e) this.imageLoader$delegate.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public final coil.request.h y() {
        return (coil.request.h) this.request$delegate.getValue();
    }

    public b(@NotNull coil.request.h hVar, @NotNull coil.e eVar) {
        c.a aVar = c.a.INSTANCE;
        this._state = aVar;
        this.transform = DefaultTransform;
        this.contentScale = ContentScale.Companion.b();
        this.filterQuality = DrawScope.Companion.b();
        this.state$delegate = SnapshotStateKt__SnapshotStateKt.e(aVar, null, 2, null);
        this.request$delegate = SnapshotStateKt__SnapshotStateKt.e(hVar, null, 2, null);
        this.imageLoader$delegate = SnapshotStateKt__SnapshotStateKt.e(eVar, null, 2, null);
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean a(float f6) {
        A(f6);
        return true;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void c() {
        RememberObserver rememberObserver;
        t();
        Object obj = this._painter;
        if (obj instanceof RememberObserver) {
            rememberObserver = (RememberObserver) obj;
        } else {
            rememberObserver = null;
        }
        if (rememberObserver != null) {
            rememberObserver.c();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void d() {
        RememberObserver rememberObserver;
        t();
        Object obj = this._painter;
        if (obj instanceof RememberObserver) {
            rememberObserver = (RememberObserver) obj;
        } else {
            rememberObserver = null;
        }
        if (rememberObserver != null) {
            rememberObserver.d();
        }
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    protected boolean e(@Nullable ColorFilter colorFilter) {
        B(colorFilter);
        return true;
    }

    @Override // androidx.compose.ui.graphics.painter.Painter
    public long k() {
        Painter painterX = x();
        if (painterX != null) {
            return painterX.k();
        }
        return Size.Companion.a();
    }
}
