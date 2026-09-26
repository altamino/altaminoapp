package androidx.compose.foundation.gestures;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.State;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.util.VelocityTracker;
import androidx.compose.ui.input.pointer.util.VelocityTrackerKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.Velocity;
import e8.l;
import e8.p;
import e8.q;
import kotlin.coroutines.d;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.l0;
import w7.u;
import w7.w;

/* JADX INFO: loaded from: classes.dex */
public final class DraggableKt {
    @NotNull
    public static final Modifier h(@NotNull Modifier modifier, @NotNull DraggableState state, @NotNull Orientation orientation, boolean z6, @Nullable MutableInteractionSource mutableInteractionSource, boolean z10, @NotNull q<? super o0, ? super Offset, ? super d<? super l0>, ? extends Object> onDragStarted, @NotNull q<? super o0, ? super Float, ? super d<? super l0>, ? extends Object> onDragStopped, boolean z11) {
        t.j(modifier, "<this>");
        t.j(state, "state");
        t.j(orientation, "orientation");
        t.j(onDragStarted, "onDragStarted");
        t.j(onDragStopped, "onDragStopped");
        return i(modifier, new DraggableKt$draggable$3(state), DraggableKt$draggable$4.INSTANCE, orientation, z6, mutableInteractionSource, new DraggableKt$draggable$5(z10), onDragStarted, onDragStopped, z11);
    }

    @NotNull
    public static final DraggableState a(@NotNull l<? super Float, l0> onDelta) {
        t.j(onDelta, "onDelta");
        return new DefaultDraggableState(onDelta);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:36:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:38:0x010b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x010c  */
    /* JADX WARN: Code duplicated, block: B:41:0x0110  */
    /* JADX WARN: Code duplicated, block: B:43:0x0128 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:44:0x0129  */
    /* JADX WARN: Code duplicated, block: B:47:0x012e  */
    /* JADX WARN: Code duplicated, block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static final Object f(AwaitPointerEventScope awaitPointerEventScope, State<? extends l<? super PointerInputChange, Boolean>> state, State<? extends e8.a<Boolean>> state2, VelocityTracker velocityTracker, Orientation orientation, d<? super u<PointerInputChange, Float>> dVar) {
        DraggableKt$awaitDownAndSlop$1 draggableKt$awaitDownAndSlop$1;
        AwaitPointerEventScope awaitPointerEventScope2;
        VelocityTracker velocityTracker2;
        Orientation orientation2;
        PointerInputChange pointerInputChange;
        m0 m0Var;
        DraggableKt$awaitDownAndSlop$postPointerSlop$1 draggableKt$awaitDownAndSlop$postPointerSlop$1;
        m0 m0Var2;
        PointerInputChange pointerInputChange2;
        if (dVar instanceof DraggableKt$awaitDownAndSlop$1) {
            draggableKt$awaitDownAndSlop$1 = (DraggableKt$awaitDownAndSlop$1) dVar;
            int i10 = draggableKt$awaitDownAndSlop$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                draggableKt$awaitDownAndSlop$1.label = i10 - Integer.MIN_VALUE;
            } else {
                draggableKt$awaitDownAndSlop$1 = new DraggableKt$awaitDownAndSlop$1(dVar);
            }
        } else {
            draggableKt$awaitDownAndSlop$1 = new DraggableKt$awaitDownAndSlop$1(dVar);
        }
        DraggableKt$awaitDownAndSlop$1 draggableKt$awaitDownAndSlop$2 = draggableKt$awaitDownAndSlop$1;
        Object objF = draggableKt$awaitDownAndSlop$2.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = draggableKt$awaitDownAndSlop$2.label;
        if (i11 == 0) {
            w.b(objF);
            PointerEventPass pointerEventPass = PointerEventPass.Initial;
            draggableKt$awaitDownAndSlop$2.L$0 = awaitPointerEventScope;
            draggableKt$awaitDownAndSlop$2.L$1 = state;
            draggableKt$awaitDownAndSlop$2.L$2 = state2;
            draggableKt$awaitDownAndSlop$2.L$3 = velocityTracker;
            draggableKt$awaitDownAndSlop$2.L$4 = orientation;
            draggableKt$awaitDownAndSlop$2.label = 1;
            objF = TapGestureDetectorKt.f(awaitPointerEventScope, pointerEventPass, false, draggableKt$awaitDownAndSlop$2);
            if (objF == objE) {
                return objE;
            }
        } else {
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 == 3) {
                        m0Var2 = (m0) draggableKt$awaitDownAndSlop$2.L$0;
                        w.b(objF);
                        pointerInputChange2 = (PointerInputChange) objF;
                        if (pointerInputChange2 != null) {
                            return a0.a(pointerInputChange2, kotlin.coroutines.jvm.internal.b.c(m0Var2.element));
                        }
                        return null;
                    }
                    if (i11 != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    m0Var2 = (m0) draggableKt$awaitDownAndSlop$2.L$0;
                    w.b(objF);
                    pointerInputChange2 = (PointerInputChange) objF;
                    if (pointerInputChange2 != null) {
                        return a0.a(pointerInputChange2, kotlin.coroutines.jvm.internal.b.c(m0Var2.element));
                    }
                    return null;
                }
                orientation2 = (Orientation) draggableKt$awaitDownAndSlop$2.L$2;
                velocityTracker2 = (VelocityTracker) draggableKt$awaitDownAndSlop$2.L$1;
                awaitPointerEventScope2 = (AwaitPointerEventScope) draggableKt$awaitDownAndSlop$2.L$0;
                w.b(objF);
                pointerInputChange = (PointerInputChange) objF;
                VelocityTrackerKt.b(velocityTracker2, pointerInputChange);
                m0Var = new m0();
                draggableKt$awaitDownAndSlop$postPointerSlop$1 = new DraggableKt$awaitDownAndSlop$postPointerSlop$1(velocityTracker2, m0Var);
                if (orientation2 == Orientation.Vertical) {
                    long jE = pointerInputChange.e();
                    int iK = pointerInputChange.k();
                    draggableKt$awaitDownAndSlop$2.L$0 = m0Var;
                    draggableKt$awaitDownAndSlop$2.L$1 = null;
                    draggableKt$awaitDownAndSlop$2.L$2 = null;
                    draggableKt$awaitDownAndSlop$2.label = 3;
                    objF = DragGestureDetectorKt.j(awaitPointerEventScope2, jE, iK, draggableKt$awaitDownAndSlop$postPointerSlop$1, draggableKt$awaitDownAndSlop$2);
                    if (objF == objE) {
                        return objE;
                    }
                    m0Var2 = m0Var;
                    pointerInputChange2 = (PointerInputChange) objF;
                    if (pointerInputChange2 != null) {
                        return a0.a(pointerInputChange2, kotlin.coroutines.jvm.internal.b.c(m0Var2.element));
                    }
                    return null;
                }
                long jE2 = pointerInputChange.e();
                int iK2 = pointerInputChange.k();
                draggableKt$awaitDownAndSlop$2.L$0 = m0Var;
                draggableKt$awaitDownAndSlop$2.L$1 = null;
                draggableKt$awaitDownAndSlop$2.L$2 = null;
                draggableKt$awaitDownAndSlop$2.label = 4;
                objF = DragGestureDetectorKt.e(awaitPointerEventScope2, jE2, iK2, draggableKt$awaitDownAndSlop$postPointerSlop$1, draggableKt$awaitDownAndSlop$2);
                if (objF == objE) {
                    return objE;
                }
                m0Var2 = m0Var;
                pointerInputChange2 = (PointerInputChange) objF;
                if (pointerInputChange2 != null) {
                    return a0.a(pointerInputChange2, kotlin.coroutines.jvm.internal.b.c(m0Var2.element));
                }
                return null;
            }
            orientation = (Orientation) draggableKt$awaitDownAndSlop$2.L$4;
            velocityTracker = (VelocityTracker) draggableKt$awaitDownAndSlop$2.L$3;
            state2 = (State) draggableKt$awaitDownAndSlop$2.L$2;
            state = (State) draggableKt$awaitDownAndSlop$2.L$1;
            awaitPointerEventScope = (AwaitPointerEventScope) draggableKt$awaitDownAndSlop$2.L$0;
            w.b(objF);
        }
        PointerInputChange pointerInputChange3 = (PointerInputChange) objF;
        if (!state.getValue().invoke(pointerInputChange3).booleanValue()) {
            return null;
        }
        if (state2.getValue().invoke().booleanValue()) {
            pointerInputChange3.a();
            VelocityTrackerKt.b(velocityTracker, pointerInputChange3);
            return a0.a(pointerInputChange3, kotlin.coroutines.jvm.internal.b.c(0.0f));
        }
        draggableKt$awaitDownAndSlop$2.L$0 = awaitPointerEventScope;
        draggableKt$awaitDownAndSlop$2.L$1 = velocityTracker;
        draggableKt$awaitDownAndSlop$2.L$2 = orientation;
        draggableKt$awaitDownAndSlop$2.L$3 = null;
        draggableKt$awaitDownAndSlop$2.L$4 = null;
        draggableKt$awaitDownAndSlop$2.label = 2;
        objF = TapGestureDetectorKt.d(awaitPointerEventScope, false, draggableKt$awaitDownAndSlop$2);
        if (objF == objE) {
            return objE;
        }
        awaitPointerEventScope2 = awaitPointerEventScope;
        velocityTracker2 = velocityTracker;
        orientation2 = orientation;
        pointerInputChange = (PointerInputChange) objF;
        VelocityTrackerKt.b(velocityTracker2, pointerInputChange);
        m0Var = new m0();
        draggableKt$awaitDownAndSlop$postPointerSlop$1 = new DraggableKt$awaitDownAndSlop$postPointerSlop$1(velocityTracker2, m0Var);
        if (orientation2 == Orientation.Vertical) {
            long jE3 = pointerInputChange.e();
            int iK3 = pointerInputChange.k();
            draggableKt$awaitDownAndSlop$2.L$0 = m0Var;
            draggableKt$awaitDownAndSlop$2.L$1 = null;
            draggableKt$awaitDownAndSlop$2.L$2 = null;
            draggableKt$awaitDownAndSlop$2.label = 3;
            objF = DragGestureDetectorKt.j(awaitPointerEventScope2, jE3, iK3, draggableKt$awaitDownAndSlop$postPointerSlop$1, draggableKt$awaitDownAndSlop$2);
            if (objF == objE) {
                return objE;
            }
            m0Var2 = m0Var;
            pointerInputChange2 = (PointerInputChange) objF;
            if (pointerInputChange2 != null) {
                return a0.a(pointerInputChange2, kotlin.coroutines.jvm.internal.b.c(m0Var2.element));
            }
            return null;
        }
        long jE4 = pointerInputChange.e();
        int iK4 = pointerInputChange.k();
        draggableKt$awaitDownAndSlop$2.L$0 = m0Var;
        draggableKt$awaitDownAndSlop$2.L$1 = null;
        draggableKt$awaitDownAndSlop$2.L$2 = null;
        draggableKt$awaitDownAndSlop$2.label = 4;
        objF = DragGestureDetectorKt.e(awaitPointerEventScope2, jE4, iK4, draggableKt$awaitDownAndSlop$postPointerSlop$1, draggableKt$awaitDownAndSlop$2);
        if (objF == objE) {
            return objE;
        }
        m0Var2 = m0Var;
        pointerInputChange2 = (PointerInputChange) objF;
        if (pointerInputChange2 != null) {
            return a0.a(pointerInputChange2, kotlin.coroutines.jvm.internal.b.c(m0Var2.element));
        }
        return null;
    }

    @ComposableInferredTarget
    @NotNull
    public static final Modifier i(@NotNull Modifier modifier, @NotNull p<? super Composer, ? super Integer, ? extends PointerAwareDraggableState> stateFactory, @NotNull l<? super PointerInputChange, Boolean> canDrag, @NotNull Orientation orientation, boolean z6, @Nullable MutableInteractionSource mutableInteractionSource, @NotNull e8.a<Boolean> startDragImmediately, @NotNull q<? super o0, ? super Offset, ? super d<? super l0>, ? extends Object> onDragStarted, @NotNull q<? super o0, ? super Float, ? super d<? super l0>, ? extends Object> onDragStopped, boolean z10) {
        t.j(modifier, "<this>");
        t.j(stateFactory, "stateFactory");
        t.j(canDrag, "canDrag");
        t.j(orientation, "orientation");
        t.j(startDragImmediately, "startDragImmediately");
        t.j(onDragStarted, "onDragStarted");
        t.j(onDragStopped, "onDragStopped");
        return ComposedModifierKt.c(modifier, InspectableValueKt.c() ? new DraggableKt$draggable$$inlined$debugInspectorInfo$1(canDrag, orientation, z6, z10, mutableInteractionSource, startDragImmediately, onDragStarted, onDragStopped, stateFactory) : InspectableValueKt.a(), new DraggableKt$draggable$9(stateFactory, mutableInteractionSource, startDragImmediately, canDrag, onDragStarted, onDragStopped, orientation, z6, z10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float l(long j6, Orientation orientation) {
        return orientation == Orientation.Vertical ? Offset.n(j6) : Offset.m(j6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float m(long j6, Orientation orientation) {
        return orientation == Orientation.Vertical ? Velocity.i(j6) : Velocity.h(j6);
    }

    private static final long n(float f, Orientation orientation) {
        return orientation == Orientation.Vertical ? OffsetKt.a(0.0f, f) : OffsetKt.a(f, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object g(AwaitPointerEventScope awaitPointerEventScope, u<PointerInputChange, Float> uVar, VelocityTracker velocityTracker, kotlinx.coroutines.channels.u<? super DragEvent> uVar2, boolean z6, Orientation orientation, d<? super Boolean> dVar) {
        float fFloatValue = uVar.d().floatValue();
        PointerInputChange pointerInputChangeC = uVar.c();
        long jQ = Offset.q(pointerInputChangeC.f(), Offset.s(n(fFloatValue, orientation), Math.signum(l(pointerInputChangeC.f(), orientation))));
        uVar2.p(new DragEvent.DragStarted(jQ, null));
        if (z6) {
            fFloatValue *= -1;
        }
        uVar2.p(new DragEvent.DragDelta(fFloatValue, jQ, null));
        DraggableKt$awaitDrag$dragTick$1 draggableKt$awaitDrag$dragTick$1 = new DraggableKt$awaitDrag$dragTick$1(velocityTracker, orientation, uVar2, z6);
        if (orientation == Orientation.Vertical) {
            return DragGestureDetectorKt.r(awaitPointerEventScope, pointerInputChangeC.e(), draggableKt$awaitDrag$dragTick$1, dVar);
        }
        return DragGestureDetectorKt.o(awaitPointerEventScope, pointerInputChangeC.e(), draggableKt$awaitDrag$dragTick$1, dVar);
    }
}
