package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class AndroidConfig implements ScrollConfig {

    @NotNull
    public static final AndroidConfig INSTANCE = new AndroidConfig();

    @Override // androidx.compose.foundation.gestures.ScrollConfig
    public long a(@NotNull Density calculateMouseWheelScroll, @NotNull PointerEvent event, long j6) {
        t.j(calculateMouseWheelScroll, "$this$calculateMouseWheelScroll");
        t.j(event, "event");
        List<PointerInputChange> listC = event.c();
        Offset offsetD = Offset.d(Offset.Companion.c());
        int size = listC.size();
        for (int i10 = 0; i10 < size; i10++) {
            offsetD = Offset.d(Offset.r(offsetD.u(), listC.get(i10).j()));
        }
        return Offset.s(offsetD.u(), -calculateMouseWheelScroll.H0(Dp.f(64)));
    }

    private AndroidConfig() {
    }
}
