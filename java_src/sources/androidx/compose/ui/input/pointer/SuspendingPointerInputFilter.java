package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.Stable;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.IntSize;
import e8.l;
import e8.p;
import java.util.ArrayList;
import java.util.List;
import kotlin.coroutines.f;
import kotlin.coroutines.g;
import kotlin.coroutines.h;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
public final class SuspendingPointerInputFilter extends PointerInputFilter implements PointerInputModifier, PointerInputScope, Density {
    private final /* synthetic */ Density $$delegate_0;
    private long boundsSize;

    @NotNull
    private o0 coroutineScope;

    @NotNull
    private PointerEvent currentEvent;

    @NotNull
    private final MutableVector<PointerEventHandlerCoroutine<?>> dispatchingPointerHandlers;
    private boolean interceptOutOfBoundsChildEvents;

    @Nullable
    private PointerEvent lastPointerEvent;

    @NotNull
    private final MutableVector<PointerEventHandlerCoroutine<?>> pointerHandlers;

    @NotNull
    private final ViewConfiguration viewConfiguration;

    /* JADX INFO: Access modifiers changed from: private */
    final class PointerEventHandlerCoroutine<R> implements AwaitPointerEventScope, Density, kotlin.coroutines.d<R> {
        private final /* synthetic */ SuspendingPointerInputFilter $$delegate_0;

        @NotNull
        private PointerEventPass awaitPass;

        @NotNull
        private final kotlin.coroutines.d<R> completion;

        @NotNull
        private final g context;

        @Nullable
        private o<? super PointerEvent> pointerAwaiter;
        final /* synthetic */ SuspendingPointerInputFilter this$0;

        @Override // androidx.compose.ui.unit.Density
        public float E0() {
            return this.$$delegate_0.E0();
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        public float H0(float f) {
            return this.$$delegate_0.H0(f);
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        public int L0(long j6) {
            return this.$$delegate_0.L0(j6);
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        public float P(float f) {
            return this.$$delegate_0.P(f);
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        public long X(long j6) {
            return this.$$delegate_0.X(j6);
        }

        @Override // kotlin.coroutines.d
        @NotNull
        public g getContext() {
            return this.context;
        }

        @Override // androidx.compose.ui.unit.Density
        public float getDensity() {
            return this.$$delegate_0.getDensity();
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        public float j(int i10) {
            return this.$$delegate_0.j(i10);
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        public int j0(float f) {
            return this.$$delegate_0.j0(f);
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        public float p0(long j6) {
            return this.$$delegate_0.p0(j6);
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        public long q(long j6) {
            return this.$$delegate_0.q(j6);
        }

        @Override // androidx.compose.ui.unit.Density
        @Stable
        public float s(long j6) {
            return this.$$delegate_0.s(j6);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public PointerEventHandlerCoroutine(@NotNull SuspendingPointerInputFilter suspendingPointerInputFilter, kotlin.coroutines.d<? super R> completion) {
            t.j(completion, "completion");
            this.this$0 = suspendingPointerInputFilter;
            this.completion = completion;
            this.$$delegate_0 = suspendingPointerInputFilter;
            this.awaitPass = PointerEventPass.Main;
            this.context = h.INSTANCE;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        @Nullable
        public <T> Object F(long j6, @NotNull p<? super AwaitPointerEventScope, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
            SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1 suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1;
            if (dVar instanceof SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1) {
                suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1 = (SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1) dVar;
                int i10 = suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1.label = i10 - Integer.MIN_VALUE;
                } else {
                    suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1 = new SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1(this, dVar);
                }
            } else {
                suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1 = new SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1(this, dVar);
            }
            Object objM0 = suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1.result;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i11 = suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1.label;
            try {
                if (i11 == 0) {
                    w.b(objM0);
                    suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1.label = 1;
                    objM0 = m0(j6, pVar, suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeoutOrNull$1);
                    if (objM0 == objE) {
                        return objE;
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    w.b(objM0);
                }
                return objM0;
            } catch (PointerEventTimeoutCancellationException unused) {
                return null;
            }
        }

        public final void H(@Nullable Throwable th) {
            o<? super PointerEvent> oVar = this.pointerAwaiter;
            if (oVar != null) {
                oVar.e(th);
            }
            this.pointerAwaiter = null;
        }

        public final void I(@NotNull PointerEvent event, @NotNull PointerEventPass pass) {
            o<? super PointerEvent> oVar;
            t.j(event, "event");
            t.j(pass, "pass");
            if (pass != this.awaitPass || (oVar = this.pointerAwaiter) == null) {
                return;
            }
            this.pointerAwaiter = null;
            oVar.resumeWith(v.b(event));
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        public long a() {
            return this.this$0.boundsSize;
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        @NotNull
        public ViewConfiguration getViewConfiguration() {
            return this.this$0.getViewConfiguration();
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        public long i0() {
            return this.this$0.i0();
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r12v0, types: [long] */
        /* JADX WARN: Type inference failed for: r12v1, types: [kotlinx.coroutines.b2] */
        /* JADX WARN: Type inference failed for: r12v3, types: [kotlinx.coroutines.b2] */
        /* JADX WARN: Type inference failed for: r12v7 */
        /* JADX WARN: Type inference failed for: r12v8 */
        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        @Nullable
        public <T> Object m0(long j6, @NotNull p<? super AwaitPointerEventScope, ? super kotlin.coroutines.d<? super T>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super T> dVar) {
            SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1 suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1;
            o<? super PointerEvent> oVar;
            if (dVar instanceof SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1) {
                suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1 = (SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1) dVar;
                int i10 = suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1.label = i10 - Integer.MIN_VALUE;
                } else {
                    suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1 = new SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1(this, dVar);
                }
            } else {
                suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1 = new SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1(this, dVar);
            }
            Object objInvoke = suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1.result;
            Object objE = kotlin.coroutines.intrinsics.d.e();
            int i11 = suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1.label;
            try {
                if (i11 == 0) {
                    w.b(objInvoke);
                    if (j6 <= 0 && (oVar = this.pointerAwaiter) != null) {
                        v.a aVar = v.Companion;
                        oVar.resumeWith(v.b(w.a(new PointerEventTimeoutCancellationException(j6))));
                    }
                    b2 b2VarD = k.d(this.this$0.y0(), null, null, new SuspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$job$1(j6, this, null), 3, null);
                    suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1.L$0 = b2VarD;
                    suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1.label = 1;
                    objInvoke = pVar.invoke(this, suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1);
                    j6 = b2VarD;
                    if (objInvoke == objE) {
                        return objE;
                    }
                } else {
                    if (i11 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    b2 b2Var = (b2) suspendingPointerInputFilter$PointerEventHandlerCoroutine$withTimeout$1.L$0;
                    w.b(objInvoke);
                    j6 = b2Var;
                }
                b2.a.a(j6, null, 1, null);
                return objInvoke;
            } catch (Throwable th) {
                b2.a.a(j6, null, 1, null);
                throw th;
            }
        }

        @Override // kotlin.coroutines.d
        public void resumeWith(@NotNull Object obj) {
            MutableVector mutableVector = this.this$0.pointerHandlers;
            SuspendingPointerInputFilter suspendingPointerInputFilter = this.this$0;
            synchronized (mutableVector) {
                suspendingPointerInputFilter.pointerHandlers.s(this);
                l0 l0Var = l0.INSTANCE;
            }
            this.completion.resumeWith(obj);
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        @Nullable
        public Object u0(@NotNull PointerEventPass pointerEventPass, @NotNull kotlin.coroutines.d<? super PointerEvent> dVar) throws Throwable {
            kotlinx.coroutines.p pVar = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
            pVar.x();
            this.awaitPass = pointerEventPass;
            this.pointerAwaiter = pVar;
            Object objU = pVar.u();
            if (objU == kotlin.coroutines.intrinsics.d.e()) {
                kotlin.coroutines.jvm.internal.h.c(dVar);
            }
            return objU;
        }

        @Override // androidx.compose.ui.input.pointer.AwaitPointerEventScope
        @NotNull
        public PointerEvent v0() {
            return this.this$0.currentEvent;
        }
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PointerEventPass.values().length];
            iArr[PointerEventPass.Initial.ordinal()] = 1;
            iArr[PointerEventPass.Final.ordinal()] = 2;
            iArr[PointerEventPass.Main.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ SuspendingPointerInputFilter(ViewConfiguration viewConfiguration, Density density, int i10, kotlin.jvm.internal.k kVar) {
        this(viewConfiguration, (i10 & 2) != 0 ? DensityKt.b(1.0f, 0.0f, 2, null) : density);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Modifier B(Modifier modifier) {
        return androidx.compose.ui.a.a(this, modifier);
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputModifier
    @NotNull
    public PointerInputFilter B0() {
        return this;
    }

    @Override // androidx.compose.ui.unit.Density
    public float E0() {
        return this.$$delegate_0.E0();
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float H0(float f) {
        return this.$$delegate_0.H0(f);
    }

    public final void J0(@NotNull o0 o0Var) {
        t.j(o0Var, "<set-?>");
        this.coroutineScope = o0Var;
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public int L0(long j6) {
        return this.$$delegate_0.L0(j6);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float P(float f) {
        return this.$$delegate_0.P(f);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object V(Object obj, p pVar) {
        return androidx.compose.ui.b.c(this, obj, pVar);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public long X(long j6) {
        return this.$$delegate_0.X(j6);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ Object a0(Object obj, p pVar) {
        return androidx.compose.ui.b.b(this, obj, pVar);
    }

    @Override // androidx.compose.ui.Modifier
    public /* synthetic */ boolean d0(l lVar) {
        return androidx.compose.ui.b.a(this, lVar);
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.$$delegate_0.getDensity();
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputScope
    @NotNull
    public ViewConfiguration getViewConfiguration() {
        return this.viewConfiguration;
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float j(int i10) {
        return this.$$delegate_0.j(i10);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public int j0(float f) {
        return this.$$delegate_0.j0(f);
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputFilter
    public boolean p() {
        return this.interceptOutOfBoundsChildEvents;
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float p0(long j6) {
        return this.$$delegate_0.p0(j6);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public long q(long j6) {
        return this.$$delegate_0.q(j6);
    }

    @Override // androidx.compose.ui.unit.Density
    @Stable
    public float s(long j6) {
        return this.$$delegate_0.s(j6);
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputScope
    public void t0(boolean z6) {
        this.interceptOutOfBoundsChildEvents = z6;
    }

    @NotNull
    public final o0 y0() {
        return this.coroutineScope;
    }

    private final void w0(PointerEvent pointerEvent, PointerEventPass pointerEventPass) {
        MutableVector<PointerEventHandlerCoroutine<?>> mutableVector;
        int iN;
        synchronized (this.pointerHandlers) {
            MutableVector<PointerEventHandlerCoroutine<?>> mutableVector2 = this.dispatchingPointerHandlers;
            mutableVector2.c(mutableVector2.n(), this.pointerHandlers);
        }
        try {
            int i10 = WhenMappings.$EnumSwitchMapping$0[pointerEventPass.ordinal()];
            if (i10 == 1 || i10 == 2) {
                MutableVector<PointerEventHandlerCoroutine<?>> mutableVector3 = this.dispatchingPointerHandlers;
                int iN2 = mutableVector3.n();
                if (iN2 > 0) {
                    PointerEventHandlerCoroutine<?>[] pointerEventHandlerCoroutineArrM = mutableVector3.m();
                    int i11 = 0;
                    do {
                        pointerEventHandlerCoroutineArrM[i11].I(pointerEvent, pointerEventPass);
                        i11++;
                    } while (i11 < iN2);
                }
            } else if (i10 == 3 && (iN = (mutableVector = this.dispatchingPointerHandlers).n()) > 0) {
                int i12 = iN - 1;
                PointerEventHandlerCoroutine<?>[] pointerEventHandlerCoroutineArrM2 = mutableVector.m();
                do {
                    pointerEventHandlerCoroutineArrM2[i12].I(pointerEvent, pointerEventPass);
                    i12--;
                } while (i12 >= 0);
            }
        } finally {
            this.dispatchingPointerHandlers.h();
        }
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputFilter
    public void I() {
        PointerEvent pointerEvent = this.lastPointerEvent;
        if (pointerEvent == null) {
            return;
        }
        List<PointerInputChange> listC = pointerEvent.c();
        int size = listC.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!(!listC.get(i10).g())) {
                List<PointerInputChange> listC2 = pointerEvent.c();
                ArrayList arrayList = new ArrayList(listC2.size());
                int size2 = listC2.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    PointerInputChange pointerInputChange = listC2.get(i11);
                    arrayList.add(new PointerInputChange(pointerInputChange.e(), pointerInputChange.l(), pointerInputChange.f(), false, pointerInputChange.l(), pointerInputChange.f(), pointerInputChange.g(), pointerInputChange.g(), 0, 0L, 768, (kotlin.jvm.internal.k) null));
                }
                PointerEvent pointerEvent2 = new PointerEvent(arrayList);
                this.currentEvent = pointerEvent2;
                w0(pointerEvent2, PointerEventPass.Initial);
                w0(pointerEvent2, PointerEventPass.Main);
                w0(pointerEvent2, PointerEventPass.Final);
                this.lastPointerEvent = null;
                return;
            }
        }
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputScope
    @Nullable
    public <R> Object J(@NotNull p<? super AwaitPointerEventScope, ? super kotlin.coroutines.d<? super R>, ? extends Object> pVar, @NotNull kotlin.coroutines.d<? super R> dVar) throws Throwable {
        kotlinx.coroutines.p pVar2 = new kotlinx.coroutines.p(kotlin.coroutines.intrinsics.c.c(dVar), 1);
        pVar2.x();
        PointerEventHandlerCoroutine pointerEventHandlerCoroutine = new PointerEventHandlerCoroutine(this, pVar2);
        synchronized (this.pointerHandlers) {
            this.pointerHandlers.b(pointerEventHandlerCoroutine);
            kotlin.coroutines.d<l0> dVarA = f.a(pVar, pointerEventHandlerCoroutine, pointerEventHandlerCoroutine);
            v.a aVar = v.Companion;
            dVarA.resumeWith(v.b(l0.INSTANCE));
        }
        pVar2.S(new SuspendingPointerInputFilter$awaitPointerEventScope$2$2(pointerEventHandlerCoroutine));
        Object objU = pVar2.u();
        if (objU == kotlin.coroutines.intrinsics.d.e()) {
            kotlin.coroutines.jvm.internal.h.c(dVar);
        }
        return objU;
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputFilter
    public void U(@NotNull PointerEvent pointerEvent, @NotNull PointerEventPass pass, long j6) {
        t.j(pointerEvent, "pointerEvent");
        t.j(pass, "pass");
        this.boundsSize = j6;
        if (pass == PointerEventPass.Initial) {
            this.currentEvent = pointerEvent;
        }
        w0(pointerEvent, pass);
        List<PointerInputChange> listC = pointerEvent.c();
        int size = listC.size();
        boolean z6 = false;
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                z6 = true;
                break;
            } else if (!PointerEventKt.d(listC.get(i10))) {
                break;
            } else {
                i10++;
            }
        }
        if (!(!z6)) {
            pointerEvent = null;
        }
        this.lastPointerEvent = pointerEvent;
    }

    public SuspendingPointerInputFilter(@NotNull ViewConfiguration viewConfiguration, @NotNull Density density) {
        t.j(viewConfiguration, "viewConfiguration");
        t.j(density, "density");
        this.viewConfiguration = viewConfiguration;
        this.$$delegate_0 = density;
        this.currentEvent = SuspendingPointerInputFilterKt.EmptyPointerEvent;
        this.pointerHandlers = new MutableVector<>(new PointerEventHandlerCoroutine[16], 0);
        this.dispatchingPointerHandlers = new MutableVector<>(new PointerEventHandlerCoroutine[16], 0);
        this.boundsSize = IntSize.Companion.a();
        this.coroutineScope = t1.INSTANCE;
    }

    public long i0() {
        long jX = X(getViewConfiguration().e());
        long jA = a();
        return SizeKt.a(Math.max(0.0f, Size.i(jX) - IntSize.g(jA)) / 2.0f, Math.max(0.0f, Size.g(jX) - IntSize.f(jA)) / 2.0f);
    }
}
