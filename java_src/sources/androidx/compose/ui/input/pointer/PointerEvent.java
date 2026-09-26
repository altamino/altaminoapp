package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import androidx.compose.runtime.internal.StabilityInferred;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@StabilityInferred
public final class PointerEvent {
    public static final int $stable = 8;
    private final int buttons;

    @NotNull
    private final List<PointerInputChange> changes;

    @Nullable
    private final InternalPointerEvent internalPointerEvent;
    private final int keyboardModifiers;
    private int type;

    public PointerEvent(@NotNull List<PointerInputChange> changes, @Nullable InternalPointerEvent internalPointerEvent) {
        t.j(changes, "changes");
        this.changes = changes;
        this.internalPointerEvent = internalPointerEvent;
        MotionEvent motionEventE = e();
        this.buttons = PointerButtons.a(motionEventE != null ? motionEventE.getButtonState() : 0);
        MotionEvent motionEventE2 = e();
        this.keyboardModifiers = PointerKeyboardModifiers.a(motionEventE2 != null ? motionEventE2.getMetaState() : 0);
        this.type = a();
    }

    public final int b() {
        return this.buttons;
    }

    @NotNull
    public final List<PointerInputChange> c() {
        return this.changes;
    }

    @Nullable
    public final InternalPointerEvent d() {
        return this.internalPointerEvent;
    }

    public final int f() {
        return this.type;
    }

    public final void g(int i10) {
        this.type = i10;
    }

    @Nullable
    public final MotionEvent e() {
        InternalPointerEvent internalPointerEvent = this.internalPointerEvent;
        if (internalPointerEvent != null) {
            return internalPointerEvent.b();
        }
        return null;
    }

    private final int a() {
        MotionEvent motionEventE = e();
        if (motionEventE != null) {
            int actionMasked = motionEventE.getActionMasked();
            if (actionMasked != 0) {
                if (actionMasked != 1) {
                    if (actionMasked != 2) {
                        switch (actionMasked) {
                            case 5:
                                break;
                            case 6:
                                break;
                            case 7:
                                break;
                            case 8:
                                return PointerEventType.Companion.f();
                            case 9:
                                return PointerEventType.Companion.a();
                            case 10:
                                return PointerEventType.Companion.b();
                            default:
                                return PointerEventType.Companion.g();
                        }
                    }
                    return PointerEventType.Companion.c();
                }
                return PointerEventType.Companion.e();
            }
            return PointerEventType.Companion.d();
        }
        List<PointerInputChange> list = this.changes;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            PointerInputChange pointerInputChange = list.get(i10);
            if (PointerEventKt.d(pointerInputChange)) {
                return PointerEventType.Companion.e();
            }
            if (PointerEventKt.b(pointerInputChange)) {
                return PointerEventType.Companion.d();
            }
        }
        return PointerEventType.Companion.c();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PointerEvent(@NotNull List<PointerInputChange> changes) {
        this(changes, null);
        t.j(changes, "changes");
    }
}
