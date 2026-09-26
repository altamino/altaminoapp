package androidx.window.layout;

import android.view.DisplayCutout;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
@RequiresApi
public final class DisplayCompatHelperApi28 {

    @NotNull
    public static final DisplayCompatHelperApi28 INSTANCE = new DisplayCompatHelperApi28();

    public final int a(@NotNull DisplayCutout displayCutout) {
        t.j(displayCutout, "displayCutout");
        return displayCutout.getSafeInsetBottom();
    }

    public final int b(@NotNull DisplayCutout displayCutout) {
        t.j(displayCutout, "displayCutout");
        return displayCutout.getSafeInsetLeft();
    }

    public final int c(@NotNull DisplayCutout displayCutout) {
        t.j(displayCutout, "displayCutout");
        return displayCutout.getSafeInsetRight();
    }

    public final int d(@NotNull DisplayCutout displayCutout) {
        t.j(displayCutout, "displayCutout");
        return displayCutout.getSafeInsetTop();
    }

    private DisplayCompatHelperApi28() {
    }
}
