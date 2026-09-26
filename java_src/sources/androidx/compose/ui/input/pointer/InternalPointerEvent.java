package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class InternalPointerEvent {

    @NotNull
    private final Map<PointerId, PointerInputChange> changes;

    @NotNull
    private final PointerInputEvent pointerInputEvent;
    private boolean suppressMovementConsumption;

    @NotNull
    public final Map<PointerId, PointerInputChange> a() {
        return this.changes;
    }

    public final boolean c() {
        return this.suppressMovementConsumption;
    }

    public final void e(boolean z6) {
        this.suppressMovementConsumption = z6;
    }

    public InternalPointerEvent(@NotNull Map<PointerId, PointerInputChange> changes, @NotNull PointerInputEvent pointerInputEvent) {
        t.j(changes, "changes");
        t.j(pointerInputEvent, "pointerInputEvent");
        this.changes = changes;
        this.pointerInputEvent = pointerInputEvent;
    }

    @NotNull
    public final MotionEvent b() {
        return this.pointerInputEvent.a();
    }

    public final boolean d(long j6) {
        PointerInputEventData pointerInputEventData;
        List<PointerInputEventData> listB = this.pointerInputEvent.b();
        int size = listB.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                pointerInputEventData = null;
                break;
            }
            pointerInputEventData = listB.get(i10);
            if (PointerId.d(pointerInputEventData.c(), j6)) {
                break;
            }
            i10++;
        }
        PointerInputEventData pointerInputEventData2 = pointerInputEventData;
        if (pointerInputEventData2 != null) {
            return pointerInputEventData2.d();
        }
        return false;
    }
}
