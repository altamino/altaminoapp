package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Dp;
import e8.l;
import e8.p;
import java.util.List;
import kotlin.coroutines.d;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.d3;
import kotlinx.coroutines.f3;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.w;

/* JADX INFO: loaded from: classes2.dex */
public final class DragGestureDetectorKt {
    private static final float defaultTouchSlop;
    private static final float mouseSlop;
    private static final float mouseToTouchSlopRatio;

    static {
        float f = Dp.f((float) 0.125d);
        mouseSlop = f;
        float f6 = Dp.f(18);
        defaultTouchSlop = f6;
        mouseToTouchSlopRatio = f / f6;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x007a  */
    /* JADX WARN: Code duplicated, block: B:27:0x008e A[LOOP:0: B:23:0x0078->B:27:0x008e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:54:0x0092 A[EDGE_INSN: B:54:0x0092->B:29:0x0092 BREAK  A[LOOP:0: B:23:0x0078->B:27:0x008e], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0067 -> B:22:0x006c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public static final java.lang.Object c(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, long r18, @org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super androidx.compose.ui.input.pointer.PointerInputChange> r20) {
        /*
            Method dump skipped, instruction units count: 216
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.c(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:24:0x007a  */
    /* JADX WARN: Code duplicated, block: B:27:0x008e A[LOOP:0: B:23:0x0078->B:27:0x008e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:57:0x0092 A[EDGE_INSN: B:57:0x0092->B:29:0x0092 BREAK  A[LOOP:0: B:23:0x0078->B:27:0x008e], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0067 -> B:22:0x006c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public static final java.lang.Object d(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, long r18, @org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super androidx.compose.ui.input.pointer.PointerInputChange> r20) {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.d(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:29:0x00dd A[LOOP:0: B:25:0x00c6->B:29:0x00dd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x00e5 A[EDGE_INSN: B:67:0x00e5->B:31:0x00e5 BREAK  A[LOOP:0: B:25:0x00c6->B:29:0x00dd], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x011c -> B:50:0x0128). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x015e -> B:57:0x0161). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x0181 -> B:50:0x0128). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public static final java.lang.Object e(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r19, long r20, int r22, @org.jetbrains.annotations.NotNull e8.p<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super java.lang.Float, w7.l0> r23, @org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super androidx.compose.ui.input.pointer.PointerInputChange> r24) {
        /*
            Method dump skipped, instruction units count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.e(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, int, e8.p, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:29:0x00e1 A[LOOP:0: B:25:0x00ca->B:29:0x00e1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x00e9 A[EDGE_INSN: B:67:0x00e9->B:31:0x00e9 BREAK  A[LOOP:0: B:25:0x00ca->B:29:0x00e1], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0120 -> B:50:0x012c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0162 -> B:57:0x0165). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x0185 -> B:50:0x012c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public static final java.lang.Object f(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r19, long r20, @org.jetbrains.annotations.NotNull e8.p<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super java.lang.Float, w7.l0> r22, @org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super androidx.compose.ui.input.pointer.PointerInputChange> r23) {
        /*
            Method dump skipped, instruction units count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.f(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, e8.p, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v0, types: [T, androidx.compose.ui.input.pointer.PointerInputChange, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v4, types: [androidx.compose.ui.input.pointer.PointerInputChange] */
    public static final Object g(PointerInputScope pointerInputScope, PointerInputChange pointerInputChange, d<? super PointerInputChange> dVar) {
        DragGestureDetectorKt$awaitLongPressOrCancellation$1 dragGestureDetectorKt$awaitLongPressOrCancellation$1;
        p0 p0Var;
        if (dVar instanceof DragGestureDetectorKt$awaitLongPressOrCancellation$1) {
            dragGestureDetectorKt$awaitLongPressOrCancellation$1 = (DragGestureDetectorKt$awaitLongPressOrCancellation$1) dVar;
            int i10 = dragGestureDetectorKt$awaitLongPressOrCancellation$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$awaitLongPressOrCancellation$1.label = i10 - Integer.MIN_VALUE;
            } else {
                dragGestureDetectorKt$awaitLongPressOrCancellation$1 = new DragGestureDetectorKt$awaitLongPressOrCancellation$1(dVar);
            }
        } else {
            dragGestureDetectorKt$awaitLongPressOrCancellation$1 = new DragGestureDetectorKt$awaitLongPressOrCancellation$1(dVar);
        }
        Object obj = dragGestureDetectorKt$awaitLongPressOrCancellation$1.result;
        Object objE = kotlin.coroutines.intrinsics.d.e();
        int i11 = dragGestureDetectorKt$awaitLongPressOrCancellation$1.label;
        if (i11 == 0) {
            w.b(obj);
            p0 p0Var2 = new p0();
            p0 p0Var3 = new p0();
            p0Var3.element = pointerInputChange;
            long jD = pointerInputScope.getViewConfiguration().d();
            try {
                DragGestureDetectorKt$awaitLongPressOrCancellation$2 dragGestureDetectorKt$awaitLongPressOrCancellation$2 = new DragGestureDetectorKt$awaitLongPressOrCancellation$2(pointerInputScope, p0Var3, p0Var2, null);
                dragGestureDetectorKt$awaitLongPressOrCancellation$1.L$0 = pointerInputChange;
                dragGestureDetectorKt$awaitLongPressOrCancellation$1.L$1 = p0Var2;
                dragGestureDetectorKt$awaitLongPressOrCancellation$1.label = 1;
                if (f3.c(jD, dragGestureDetectorKt$awaitLongPressOrCancellation$2, dragGestureDetectorKt$awaitLongPressOrCancellation$1) == objE) {
                    return objE;
                }
                return null;
            } catch (d3 unused) {
                p0Var = p0Var2;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            p0Var = (p0) dragGestureDetectorKt$awaitLongPressOrCancellation$1.L$1;
            pointerInputChange = (PointerInputChange) dragGestureDetectorKt$awaitLongPressOrCancellation$1.L$0;
            try {
                w.b(obj);
                return null;
            } catch (d3 unused2) {
            }
        }
        PointerInputChange pointerInputChange2 = (PointerInputChange) p0Var.element;
        return pointerInputChange2 == null ? pointerInputChange : pointerInputChange2;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:30:0x00d8 A[LOOP:0: B:26:0x00bf->B:30:0x00d8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:70:0x00df A[EDGE_INSN: B:70:0x00df->B:32:0x00df BREAK  A[LOOP:0: B:26:0x00bf->B:30:0x00d8], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0115 -> B:51:0x0121). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:64:0x0171 -> B:65:0x0178). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public static final java.lang.Object h(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r19, long r20, int r22, @org.jetbrains.annotations.NotNull e8.p<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super androidx.compose.ui.geometry.Offset, w7.l0> r23, @org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super androidx.compose.ui.input.pointer.PointerInputChange> r24) {
        /*
            Method dump skipped, instruction units count: 386
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.h(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, int, e8.p, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:24:0x007a  */
    /* JADX WARN: Code duplicated, block: B:27:0x008e A[LOOP:0: B:23:0x0078->B:27:0x008e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:57:0x0092 A[EDGE_INSN: B:57:0x0092->B:29:0x0092 BREAK  A[LOOP:0: B:23:0x0078->B:27:0x008e], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0067 -> B:22:0x006c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public static final java.lang.Object i(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r17, long r18, @org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super androidx.compose.ui.input.pointer.PointerInputChange> r20) {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.i(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:29:0x00dd A[LOOP:0: B:25:0x00c6->B:29:0x00dd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x00e5 A[EDGE_INSN: B:67:0x00e5->B:31:0x00e5 BREAK  A[LOOP:0: B:25:0x00c6->B:29:0x00dd], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x011c -> B:50:0x0128). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x015e -> B:57:0x0161). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x0181 -> B:50:0x0128). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public static final java.lang.Object j(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r19, long r20, int r22, @org.jetbrains.annotations.NotNull e8.p<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super java.lang.Float, w7.l0> r23, @org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super androidx.compose.ui.input.pointer.PointerInputChange> r24) {
        /*
            Method dump skipped, instruction units count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.j(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, int, e8.p, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:26:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:29:0x00e1 A[LOOP:0: B:25:0x00ca->B:29:0x00e1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:67:0x00e9 A[EDGE_INSN: B:67:0x00e9->B:31:0x00e9 BREAK  A[LOOP:0: B:25:0x00ca->B:29:0x00e1], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0120 -> B:50:0x012c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0162 -> B:57:0x0165). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:65:0x0185 -> B:50:0x012c). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public static final java.lang.Object k(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r19, long r20, @org.jetbrains.annotations.NotNull e8.p<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super java.lang.Float, w7.l0> r22, @org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super androidx.compose.ui.input.pointer.PointerInputChange> r23) {
        /*
            Method dump skipped, instruction units count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.k(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, e8.p, kotlin.coroutines.d):java.lang.Object");
    }

    @Nullable
    public static final Object l(@NotNull PointerInputScope pointerInputScope, @NotNull l<? super Offset, l0> lVar, @NotNull e8.a<l0> aVar, @NotNull e8.a<l0> aVar2, @NotNull p<? super PointerInputChange, ? super Offset, l0> pVar, @NotNull d<? super l0> dVar) {
        Object objD = ForEachGestureKt.d(pointerInputScope, new DragGestureDetectorKt$detectDragGestures$5(lVar, pVar, aVar2, aVar, null), dVar);
        return objD == kotlin.coroutines.intrinsics.d.e() ? objD : l0.INSTANCE;
    }

    @Nullable
    public static final Object m(@NotNull PointerInputScope pointerInputScope, @NotNull l<? super Offset, l0> lVar, @NotNull e8.a<l0> aVar, @NotNull e8.a<l0> aVar2, @NotNull p<? super PointerInputChange, ? super Offset, l0> pVar, @NotNull d<? super l0> dVar) {
        Object objD = ForEachGestureKt.d(pointerInputScope, new DragGestureDetectorKt$detectDragGesturesAfterLongPress$5(lVar, aVar2, aVar, pVar, null), dVar);
        return objD == kotlin.coroutines.intrinsics.d.e() ? objD : l0.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x004a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:22:0x0055  */
    /* JADX WARN: Code duplicated, block: B:24:0x005b  */
    /* JADX WARN: Code duplicated, block: B:26:0x0060  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0048 -> B:18:0x004b). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public static final java.lang.Object n(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r4, long r5, @org.jetbrains.annotations.NotNull e8.l<? super androidx.compose.ui.input.pointer.PointerInputChange, w7.l0> r7, @org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super java.lang.Boolean> r8) {
        /*
            boolean r0 = r8 instanceof androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1 r0 = (androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1 r0 = new androidx.compose.foundation.gestures.DragGestureDetectorKt$drag$1
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.b.e()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r4 = r0.L$1
            e8.l r4 = (e8.l) r4
            java.lang.Object r5 = r0.L$0
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
            w7.w.b(r8)
            r7 = r4
            r4 = r5
            goto L4b
        L33:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3b:
            w7.w.b(r8)
        L3e:
            r0.L$0 = r4
            r0.L$1 = r7
            r0.label = r3
            java.lang.Object r8 = c(r4, r5, r0)
            if (r8 != r1) goto L4b
            return r1
        L4b:
            androidx.compose.ui.input.pointer.PointerInputChange r8 = (androidx.compose.ui.input.pointer.PointerInputChange) r8
            if (r8 != 0) goto L55
            r4 = 0
            java.lang.Boolean r4 = kotlin.coroutines.jvm.internal.b.a(r4)
            return r4
        L55:
            boolean r5 = androidx.compose.ui.input.pointer.PointerEventKt.d(r8)
            if (r5 == 0) goto L60
            java.lang.Boolean r4 = kotlin.coroutines.jvm.internal.b.a(r3)
            return r4
        L60:
            r7.invoke(r8)
            long r5 = r8.e()
            goto L3e
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.n(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, e8.l, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0095  */
    /* JADX WARN: Code duplicated, block: B:28:0x00a9 A[LOOP:0: B:24:0x0093->B:28:0x00a9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:65:0x00af A[EDGE_INSN: B:65:0x00af->B:30:0x00af BREAK  A[LOOP:0: B:24:0x0093->B:28:0x00a9], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0082 -> B:23:0x0088). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public static final java.lang.Object o(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r18, long r19, @org.jetbrains.annotations.NotNull e8.l<? super androidx.compose.ui.input.pointer.PointerInputChange, w7.l0> r21, @org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super java.lang.Boolean> r22) {
        /*
            Method dump skipped, instruction units count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.o(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, e8.l, kotlin.coroutines.d):java.lang.Object");
    }

    public static final float q(@NotNull ViewConfiguration pointerSlop, int i10) {
        t.j(pointerSlop, "$this$pointerSlop");
        return PointerType.h(i10, PointerType.Companion.b()) ? pointerSlop.b() * mouseToTouchSlopRatio : pointerSlop.b();
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0095  */
    /* JADX WARN: Code duplicated, block: B:28:0x00a9 A[LOOP:0: B:24:0x0093->B:28:0x00a9, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:65:0x00af A[EDGE_INSN: B:65:0x00af->B:30:0x00af BREAK  A[LOOP:0: B:24:0x0093->B:28:0x00a9], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0082 -> B:23:0x0088). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public static final java.lang.Object r(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r18, long r19, @org.jetbrains.annotations.NotNull e8.l<? super androidx.compose.ui.input.pointer.PointerInputChange, w7.l0> r21, @org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super java.lang.Boolean> r22) {
        /*
            Method dump skipped, instruction units count: 302
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.r(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, e8.l, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean p(PointerEvent pointerEvent, long j6) {
        PointerInputChange pointerInputChange;
        List<PointerInputChange> listC = pointerEvent.c();
        int size = listC.size();
        boolean z6 = false;
        int i10 = 0;
        while (true) {
            if (i10 < size) {
                pointerInputChange = listC.get(i10);
                if (PointerId.d(pointerInputChange.e(), j6)) {
                    break;
                }
                i10++;
            } else {
                pointerInputChange = null;
                break;
            }
        }
        PointerInputChange pointerInputChange2 = pointerInputChange;
        if (pointerInputChange2 != null && pointerInputChange2.g()) {
            z6 = true;
        }
        return true ^ z6;
    }
}
