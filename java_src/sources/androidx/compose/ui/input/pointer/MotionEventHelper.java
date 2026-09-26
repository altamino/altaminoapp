package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.geometry.OffsetKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
final class MotionEventHelper {

    @NotNull
    public static final MotionEventHelper INSTANCE = new MotionEventHelper();

    @DoNotInline
    public final long a(@NotNull MotionEvent motionEvent, int i10) {
        t.j(motionEvent, "motionEvent");
        return OffsetKt.a(motionEvent.getRawX(i10), motionEvent.getRawY(i10));
    }

    private MotionEventHelper() {
    }
}
