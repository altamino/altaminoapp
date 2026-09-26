package androidx.compose.foundation.gestures;

import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.geometry.Offset;
import e8.q;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes4.dex */
final class DragLogic {

    @NotNull
    private final MutableState<DragInteraction.Start> dragStartInteraction;

    @Nullable
    private final MutableInteractionSource interactionSource;

    @NotNull
    private final q<o0, Offset, d<? super l0>, Object> onDragStarted;

    @NotNull
    private final q<o0, Float, d<? super l0>, Object> onDragStopped;

    /* JADX WARN: Multi-variable type inference failed */
    public DragLogic(@NotNull q<? super o0, ? super Offset, ? super d<? super l0>, ? extends Object> onDragStarted, @NotNull q<? super o0, ? super Float, ? super d<? super l0>, ? extends Object> onDragStopped, @NotNull MutableState<DragInteraction.Start> dragStartInteraction, @Nullable MutableInteractionSource mutableInteractionSource) {
        t.j(onDragStarted, "onDragStarted");
        t.j(onDragStopped, "onDragStopped");
        t.j(dragStartInteraction, "dragStartInteraction");
        this.onDragStarted = onDragStarted;
        this.onDragStopped = onDragStopped;
        this.dragStartInteraction = dragStartInteraction;
        this.interactionSource = mutableInteractionSource;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x007f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object a(@NotNull o0 o0Var, @NotNull d<? super l0> dVar) {
        DragLogic$processDragCancel$1 dragLogic$processDragCancel$1;
        DragLogic dragLogic;
        q<o0, Float, d<? super l0>, Object> qVar;
        Float fC;
        if (dVar instanceof DragLogic$processDragCancel$1) {
            dragLogic$processDragCancel$1 = (DragLogic$processDragCancel$1) dVar;
            int i10 = dragLogic$processDragCancel$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                dragLogic$processDragCancel$1.label = i10 - Integer.MIN_VALUE;
            } else {
                dragLogic$processDragCancel$1 = new DragLogic$processDragCancel$1(this, dVar);
            }
        } else {
            dragLogic$processDragCancel$1 = new DragLogic$processDragCancel$1(this, dVar);
        }
        Object obj = dragLogic$processDragCancel$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = dragLogic$processDragCancel$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                o0Var = (o0) dragLogic$processDragCancel$1.L$1;
                dragLogic = (DragLogic) dragLogic$processDragCancel$1.L$0;
                w.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.b(obj);
            }
            return l0.INSTANCE;
        }
        w.b(obj);
        DragInteraction.Start value = this.dragStartInteraction.getValue();
        if (value != null) {
            MutableInteractionSource mutableInteractionSource = this.interactionSource;
            if (mutableInteractionSource != null) {
                DragInteraction.Cancel cancel = new DragInteraction.Cancel(value);
                dragLogic$processDragCancel$1.L$0 = this;
                dragLogic$processDragCancel$1.L$1 = o0Var;
                dragLogic$processDragCancel$1.label = 1;
                if (mutableInteractionSource.b(cancel, dragLogic$processDragCancel$1) == objE) {
                    return objE;
                }
            }
            dragLogic = this;
        } else {
            dragLogic = this;
        }
        qVar = dragLogic.onDragStopped;
        fC = kotlin.coroutines.jvm.internal.b.c(0.0f);
        dragLogic$processDragCancel$1.L$0 = null;
        dragLogic$processDragCancel$1.L$1 = null;
        dragLogic$processDragCancel$1.label = 2;
        if (qVar.invoke(o0Var, fC, dragLogic$processDragCancel$1) == objE) {
            return objE;
        }
        return l0.INSTANCE;
        dragLogic.dragStartInteraction.setValue(null);
        qVar = dragLogic.onDragStopped;
        fC = kotlin.coroutines.jvm.internal.b.c(0.0f);
        dragLogic$processDragCancel$1.L$0 = null;
        dragLogic$processDragCancel$1.L$1 = null;
        dragLogic$processDragCancel$1.label = 2;
        if (qVar.invoke(o0Var, fC, dragLogic$processDragCancel$1) == objE) {
            return objE;
        }
        return l0.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00c3 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object b(@NotNull o0 o0Var, @NotNull DragEvent.DragStarted dragStarted, @NotNull d<? super l0> dVar) {
        DragLogic$processDragStart$1 dragLogic$processDragStart$1;
        DragLogic dragLogic;
        MutableInteractionSource mutableInteractionSource;
        DragInteraction.Start start;
        DragLogic dragLogic2;
        o0 o0Var2;
        DragInteraction.Start start2;
        q<o0, Offset, d<? super l0>, Object> qVar;
        Offset offsetD;
        if (dVar instanceof DragLogic$processDragStart$1) {
            dragLogic$processDragStart$1 = (DragLogic$processDragStart$1) dVar;
            int i10 = dragLogic$processDragStart$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                dragLogic$processDragStart$1.label = i10 - Integer.MIN_VALUE;
            } else {
                dragLogic$processDragStart$1 = new DragLogic$processDragStart$1(this, dVar);
            }
        } else {
            dragLogic$processDragStart$1 = new DragLogic$processDragStart$1(this, dVar);
        }
        Object obj = dragLogic$processDragStart$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = dragLogic$processDragStart$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                dragStarted = (DragEvent.DragStarted) dragLogic$processDragStart$1.L$2;
                o0Var = (o0) dragLogic$processDragStart$1.L$1;
                dragLogic = (DragLogic) dragLogic$processDragStart$1.L$0;
                w.b(obj);
            } else if (i11 == 2) {
                start2 = (DragInteraction.Start) dragLogic$processDragStart$1.L$3;
                dragStarted = (DragEvent.DragStarted) dragLogic$processDragStart$1.L$2;
                o0Var2 = (o0) dragLogic$processDragStart$1.L$1;
                dragLogic2 = (DragLogic) dragLogic$processDragStart$1.L$0;
                w.b(obj);
                start = start2;
                o0Var = o0Var2;
                dragLogic = dragLogic2;
                dragLogic.dragStartInteraction.setValue(start);
                qVar = dragLogic.onDragStarted;
                offsetD = Offset.d(dragStarted.a());
                dragLogic$processDragStart$1.L$0 = null;
                dragLogic$processDragStart$1.L$1 = null;
                dragLogic$processDragStart$1.L$2 = null;
                dragLogic$processDragStart$1.L$3 = null;
                dragLogic$processDragStart$1.label = 3;
                if (qVar.invoke(o0Var, offsetD, dragLogic$processDragStart$1) == objE) {
                    return objE;
                }
            } else {
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.b(obj);
            }
            return l0.INSTANCE;
        }
        w.b(obj);
        DragInteraction.Start value = this.dragStartInteraction.getValue();
        if (value != null && (mutableInteractionSource = this.interactionSource) != null) {
            DragInteraction.Cancel cancel = new DragInteraction.Cancel(value);
            dragLogic$processDragStart$1.L$0 = this;
            dragLogic$processDragStart$1.L$1 = o0Var;
            dragLogic$processDragStart$1.L$2 = dragStarted;
            dragLogic$processDragStart$1.label = 1;
            if (mutableInteractionSource.b(cancel, dragLogic$processDragStart$1) == objE) {
                return objE;
            }
        }
        dragLogic = this;
        start = new DragInteraction.Start();
        MutableInteractionSource mutableInteractionSource2 = dragLogic.interactionSource;
        if (mutableInteractionSource2 != null) {
            dragLogic$processDragStart$1.L$0 = dragLogic;
            dragLogic$processDragStart$1.L$1 = o0Var;
            dragLogic$processDragStart$1.L$2 = dragStarted;
            dragLogic$processDragStart$1.L$3 = start;
            dragLogic$processDragStart$1.label = 2;
            if (mutableInteractionSource2.b(start, dragLogic$processDragStart$1) == objE) {
                return objE;
            }
            dragLogic2 = dragLogic;
            o0Var2 = o0Var;
            start2 = start;
            start = start2;
            o0Var = o0Var2;
            dragLogic = dragLogic2;
        }
        dragLogic.dragStartInteraction.setValue(start);
        qVar = dragLogic.onDragStarted;
        offsetD = Offset.d(dragStarted.a());
        dragLogic$processDragStart$1.L$0 = null;
        dragLogic$processDragStart$1.L$1 = null;
        dragLogic$processDragStart$1.L$2 = null;
        dragLogic$processDragStart$1.L$3 = null;
        dragLogic$processDragStart$1.label = 3;
        if (qVar.invoke(o0Var, offsetD, dragLogic$processDragStart$1) == objE) {
            return objE;
        }
        return l0.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x008b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Nullable
    public final Object c(@NotNull o0 o0Var, @NotNull DragEvent.DragStopped dragStopped, @NotNull d<? super l0> dVar) {
        DragLogic$processDragStop$1 dragLogic$processDragStop$1;
        DragLogic dragLogic;
        q<o0, Float, d<? super l0>, Object> qVar;
        Float fC;
        if (dVar instanceof DragLogic$processDragStop$1) {
            dragLogic$processDragStop$1 = (DragLogic$processDragStop$1) dVar;
            int i10 = dragLogic$processDragStop$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                dragLogic$processDragStop$1.label = i10 - Integer.MIN_VALUE;
            } else {
                dragLogic$processDragStop$1 = new DragLogic$processDragStop$1(this, dVar);
            }
        } else {
            dragLogic$processDragStop$1 = new DragLogic$processDragStop$1(this, dVar);
        }
        Object obj = dragLogic$processDragStop$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = dragLogic$processDragStop$1.label;
        if (i11 != 0) {
            if (i11 == 1) {
                dragStopped = (DragEvent.DragStopped) dragLogic$processDragStop$1.L$2;
                o0Var = (o0) dragLogic$processDragStop$1.L$1;
                dragLogic = (DragLogic) dragLogic$processDragStop$1.L$0;
                w.b(obj);
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                w.b(obj);
            }
            return l0.INSTANCE;
        }
        w.b(obj);
        DragInteraction.Start value = this.dragStartInteraction.getValue();
        if (value != null) {
            MutableInteractionSource mutableInteractionSource = this.interactionSource;
            if (mutableInteractionSource != null) {
                DragInteraction.Stop stop = new DragInteraction.Stop(value);
                dragLogic$processDragStop$1.L$0 = this;
                dragLogic$processDragStop$1.L$1 = o0Var;
                dragLogic$processDragStop$1.L$2 = dragStopped;
                dragLogic$processDragStop$1.label = 1;
                if (mutableInteractionSource.b(stop, dragLogic$processDragStop$1) == objE) {
                    return objE;
                }
            }
            dragLogic = this;
        } else {
            dragLogic = this;
        }
        qVar = dragLogic.onDragStopped;
        fC = kotlin.coroutines.jvm.internal.b.c(dragStopped.a());
        dragLogic$processDragStop$1.L$0 = null;
        dragLogic$processDragStop$1.L$1 = null;
        dragLogic$processDragStop$1.L$2 = null;
        dragLogic$processDragStop$1.label = 2;
        if (qVar.invoke(o0Var, fC, dragLogic$processDragStop$1) == objE) {
            return objE;
        }
        return l0.INSTANCE;
        dragLogic.dragStartInteraction.setValue(null);
        qVar = dragLogic.onDragStopped;
        fC = kotlin.coroutines.jvm.internal.b.c(dragStopped.a());
        dragLogic$processDragStop$1.L$0 = null;
        dragLogic$processDragStop$1.L$1 = null;
        dragLogic$processDragStop$1.L$2 = null;
        dragLogic$processDragStop$1.label = 2;
        if (qVar.invoke(o0Var, fC, dragLogic$processDragStop$1) == objE) {
            return objE;
        }
        return l0.INSTANCE;
    }
}
