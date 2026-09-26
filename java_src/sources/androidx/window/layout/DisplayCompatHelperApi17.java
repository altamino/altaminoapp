package androidx.window.layout;

import android.graphics.Point;
import android.view.Display;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@RequiresApi
public final class DisplayCompatHelperApi17 {

    @NotNull
    public static final DisplayCompatHelperApi17 INSTANCE = new DisplayCompatHelperApi17();

    public final void a(@NotNull Display display, @NotNull Point point) {
        t.j(display, "display");
        t.j(point, "point");
        display.getRealSize(point);
    }

    private DisplayCompatHelperApi17() {
    }
}
