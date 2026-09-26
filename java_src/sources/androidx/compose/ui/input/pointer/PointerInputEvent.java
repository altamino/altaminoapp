package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class PointerInputEvent {

    @NotNull
    private final MotionEvent motionEvent;

    @NotNull
    private final List<PointerInputEventData> pointers;
    private final long uptime;

    @NotNull
    public final MotionEvent a() {
        return this.motionEvent;
    }

    @NotNull
    public final List<PointerInputEventData> b() {
        return this.pointers;
    }

    public PointerInputEvent(long j6, @NotNull List<PointerInputEventData> pointers, @NotNull MotionEvent motionEvent) {
        t.j(pointers, "pointers");
        t.j(motionEvent, "motionEvent");
        this.uptime = j6;
        this.pointers = pointers;
        this.motionEvent = motionEvent;
    }
}
