package androidx.compose.ui.input.pointer;

import android.os.SystemClock;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class PointerInteropFilter$pointerInputFilter$1 extends PointerInputFilter {

    @NotNull
    private PointerInteropFilter.DispatchToViewState state = PointerInteropFilter.DispatchToViewState.Unknown;
    final /* synthetic */ PointerInteropFilter this$0;

    @Override // androidx.compose.ui.input.pointer.PointerInputFilter
    public boolean x() {
        return true;
    }

    PointerInteropFilter$pointerInputFilter$1(PointerInteropFilter pointerInteropFilter) {
        this.this$0 = pointerInteropFilter;
    }

    private final void r0() {
        this.state = PointerInteropFilter.DispatchToViewState.Unknown;
        this.this$0.c(false);
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputFilter
    public void I() {
        if (this.state == PointerInteropFilter.DispatchToViewState.Dispatching) {
            PointerInteropUtils_androidKt.a(SystemClock.uptimeMillis(), new PointerInteropFilter$pointerInputFilter$1$onCancel$1(this.this$0));
            r0();
        }
    }

    @Override // androidx.compose.ui.input.pointer.PointerInputFilter
    public void U(@NotNull PointerEvent pointerEvent, @NotNull PointerEventPass pass, long j6) {
        boolean z6;
        t.j(pointerEvent, "pointerEvent");
        t.j(pass, "pass");
        List<PointerInputChange> listC = pointerEvent.c();
        if (this.this$0.a()) {
            z6 = true;
            break;
        }
        int size = listC.size();
        int i10 = 0;
        while (true) {
            if (i10 >= size) {
                z6 = false;
                break;
            }
            PointerInputChange pointerInputChange = listC.get(i10);
            if (PointerEventKt.b(pointerInputChange) || PointerEventKt.d(pointerInputChange)) {
                z6 = true;
                break;
            }
            i10++;
        }
        if (this.state != PointerInteropFilter.DispatchToViewState.NotDispatching) {
            if (pass == PointerEventPass.Initial && z6) {
                l0(pointerEvent);
            }
            if (pass == PointerEventPass.Final && !z6) {
                l0(pointerEvent);
            }
        }
        if (pass == PointerEventPass.Final) {
            int size2 = listC.size();
            for (int i11 = 0; i11 < size2; i11++) {
                if (!PointerEventKt.d(listC.get(i11))) {
                    return;
                }
            }
            r0();
        }
    }

    private final void l0(PointerEvent pointerEvent) {
        List<PointerInputChange> listC = pointerEvent.c();
        int size = listC.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (listC.get(i10).m()) {
                if (this.state == PointerInteropFilter.DispatchToViewState.Dispatching) {
                    LayoutCoordinates layoutCoordinatesU = u();
                    if (layoutCoordinatesU != null) {
                        PointerInteropUtils_androidKt.b(pointerEvent, layoutCoordinatesU.K(Offset.Companion.c()), new PointerInteropFilter$pointerInputFilter$1$dispatchToView$2(this.this$0));
                    } else {
                        throw new IllegalStateException("layoutCoordinates not set".toString());
                    }
                }
                this.state = PointerInteropFilter.DispatchToViewState.NotDispatching;
                return;
            }
        }
        LayoutCoordinates layoutCoordinatesU2 = u();
        if (layoutCoordinatesU2 != null) {
            PointerInteropUtils_androidKt.c(pointerEvent, layoutCoordinatesU2.K(Offset.Companion.c()), new PointerInteropFilter$pointerInputFilter$1$dispatchToView$3(this, this.this$0));
            if (this.state == PointerInteropFilter.DispatchToViewState.Dispatching) {
                int size2 = listC.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    listC.get(i11).a();
                }
                InternalPointerEvent internalPointerEventD = pointerEvent.d();
                if (internalPointerEventD != null) {
                    internalPointerEventD.e(!this.this$0.a());
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalStateException("layoutCoordinates not set".toString());
    }
}
