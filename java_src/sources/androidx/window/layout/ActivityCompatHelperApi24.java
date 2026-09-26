package androidx.window.layout;

import android.app.Activity;
import androidx.annotation.RequiresApi;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
public final class ActivityCompatHelperApi24 {

    @NotNull
    public static final ActivityCompatHelperApi24 INSTANCE = new ActivityCompatHelperApi24();

    public final boolean a(@NotNull Activity activity) {
        t.j(activity, "activity");
        return activity.isInMultiWindowMode();
    }

    private ActivityCompatHelperApi24() {
    }
}
