package androidx.compose.material;

import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Dp;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class DragGestureDetectorCopyKt {
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

    /* JADX WARN: Code duplicated, block: B:26:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:29:0x00dd A[LOOP:0: B:25:0x00c6->B:29:0x00dd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:64:0x00e5 A[EDGE_INSN: B:64:0x00e5->B:31:0x00e5 BREAK  A[LOOP:0: B:25:0x00c6->B:29:0x00dd], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x011c -> B:47:0x0128). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x015e -> B:54:0x0161). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x0181 -> B:47:0x0128). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @org.jetbrains.annotations.Nullable
    public static final java.lang.Object a(@org.jetbrains.annotations.NotNull androidx.compose.ui.input.pointer.AwaitPointerEventScope r19, long r20, int r22, @org.jetbrains.annotations.NotNull e8.p<? super androidx.compose.ui.input.pointer.PointerInputChange, ? super java.lang.Float, w7.l0> r23, @org.jetbrains.annotations.NotNull kotlin.coroutines.d<? super androidx.compose.ui.input.pointer.PointerInputChange> r24) {
        /*
            Method dump skipped, instruction units count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material.DragGestureDetectorCopyKt.a(androidx.compose.ui.input.pointer.AwaitPointerEventScope, long, int, e8.p, kotlin.coroutines.d):java.lang.Object");
    }

    public static final float c(@NotNull ViewConfiguration pointerSlop, int i10) {
        t.j(pointerSlop, "$this$pointerSlop");
        return PointerType.h(i10, PointerType.Companion.b()) ? pointerSlop.b() * mouseToTouchSlopRatio : pointerSlop.b();
    }

    private static final boolean b(PointerEvent pointerEvent, long j6) {
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
