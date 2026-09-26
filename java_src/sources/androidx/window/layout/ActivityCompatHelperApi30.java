package androidx.window.layout;

import android.app.Activity;
import android.graphics.Rect;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
public final class ActivityCompatHelperApi30 {

    @NotNull
    public static final ActivityCompatHelperApi30 INSTANCE = new ActivityCompatHelperApi30();

    @NotNull
    public final Rect a(@NotNull Activity activity) {
        t.j(activity, "activity");
        Rect bounds = activity.getWindowManager().getCurrentWindowMetrics().getBounds();
        t.i(bounds, "activity.windowManager.currentWindowMetrics.bounds");
        return bounds;
    }

    private ActivityCompatHelperApi30() {
    }
}
