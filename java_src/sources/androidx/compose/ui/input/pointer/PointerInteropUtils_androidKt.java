package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import androidx.compose.ui.geometry.Offset;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class PointerInteropUtils_androidKt {
    public static final void a(long j6, @NotNull l<? super MotionEvent, l0> block) {
        t.j(block, "block");
        MotionEvent motionEvent = MotionEvent.obtain(j6, j6, 3, 0.0f, 0.0f, 0);
        motionEvent.setSource(0);
        t.i(motionEvent, "motionEvent");
        block.invoke(motionEvent);
        motionEvent.recycle();
    }

    public static final void b(@NotNull PointerEvent toCancelMotionEventScope, long j6, @NotNull l<? super MotionEvent, l0> block) {
        t.j(toCancelMotionEventScope, "$this$toCancelMotionEventScope");
        t.j(block, "block");
        d(toCancelMotionEventScope, j6, block, true);
    }

    public static final void c(@NotNull PointerEvent toMotionEventScope, long j6, @NotNull l<? super MotionEvent, l0> block) {
        t.j(toMotionEventScope, "$this$toMotionEventScope");
        t.j(block, "block");
        d(toMotionEventScope, j6, block, false);
    }

    private static final void d(PointerEvent pointerEvent, long j6, l<? super MotionEvent, l0> lVar, boolean z6) {
        MotionEvent motionEventE = pointerEvent.e();
        if (motionEventE != null) {
            int action = motionEventE.getAction();
            if (z6) {
                motionEventE.setAction(3);
            }
            motionEventE.offsetLocation(-Offset.m(j6), -Offset.n(j6));
            lVar.invoke(motionEventE);
            motionEventE.offsetLocation(Offset.m(j6), Offset.n(j6));
            motionEventE.setAction(action);
            return;
        }
        throw new IllegalArgumentException("The PointerEvent receiver cannot have a null MotionEvent.".toString());
    }
}
