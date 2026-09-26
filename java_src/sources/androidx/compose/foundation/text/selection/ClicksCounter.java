package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.platform.ViewConfiguration;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class ClicksCounter {
    private int clicks;

    @Nullable
    private PointerInputChange prevClick;

    @NotNull
    private final ViewConfiguration viewConfiguration;

    public final int a() {
        return this.clicks;
    }

    public ClicksCounter(@NotNull ViewConfiguration viewConfiguration) {
        t.j(viewConfiguration, "viewConfiguration");
        this.viewConfiguration = viewConfiguration;
    }

    public final boolean b(@NotNull PointerInputChange prevClick, @NotNull PointerInputChange newClick) {
        t.j(prevClick, "prevClick");
        t.j(newClick, "newClick");
        return ((double) Offset.k(Offset.q(newClick.f(), prevClick.f()))) < 100.0d;
    }

    public final boolean c(@NotNull PointerInputChange prevClick, @NotNull PointerInputChange newClick) {
        t.j(prevClick, "prevClick");
        t.j(newClick, "newClick");
        return newClick.l() - prevClick.l() < this.viewConfiguration.c();
    }

    public final void d(@NotNull PointerEvent event) {
        t.j(event, "event");
        PointerInputChange pointerInputChange = this.prevClick;
        PointerInputChange pointerInputChange2 = event.c().get(0);
        if (pointerInputChange != null && c(pointerInputChange, pointerInputChange2) && b(pointerInputChange, pointerInputChange2)) {
            this.clicks++;
        } else {
            this.clicks = 1;
        }
        this.prevClick = pointerInputChange2;
    }
}
