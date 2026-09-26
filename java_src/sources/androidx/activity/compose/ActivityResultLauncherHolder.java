package androidx.activity.compose;

import androidx.activity.result.ActivityResultLauncher;
import androidx.core.app.ActivityOptionsCompat;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class ActivityResultLauncherHolder<I> {

    @Nullable
    private ActivityResultLauncher<I> launcher;

    public final void b(@Nullable ActivityResultLauncher<I> activityResultLauncher) {
        this.launcher = activityResultLauncher;
    }

    public final void a(@Nullable I i10, @Nullable ActivityOptionsCompat activityOptionsCompat) {
        l0 l0Var;
        ActivityResultLauncher<I> activityResultLauncher = this.launcher;
        if (activityResultLauncher != null) {
            activityResultLauncher.b(i10, activityOptionsCompat);
            l0Var = l0.INSTANCE;
        } else {
            l0Var = null;
        }
        if (l0Var == null) {
            throw new IllegalStateException("Launcher has not been initialized".toString());
        }
    }

    public final void c() {
        l0 l0Var;
        ActivityResultLauncher<I> activityResultLauncher = this.launcher;
        if (activityResultLauncher != null) {
            activityResultLauncher.c();
            l0Var = l0.INSTANCE;
        } else {
            l0Var = null;
        }
        if (l0Var == null) {
            throw new IllegalStateException("Launcher has not been initialized".toString());
        }
    }
}
