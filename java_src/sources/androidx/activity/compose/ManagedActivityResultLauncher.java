package androidx.activity.compose;

import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.core.app.ActivityOptionsCompat;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@StabilityInferred
public final class ManagedActivityResultLauncher<I, O> extends ActivityResultLauncher<I> {
    public static final int $stable = 8;

    @NotNull
    private final State<ActivityResultContract<I, O>> contract;

    @NotNull
    private final ActivityResultLauncherHolder<I> launcher;

    /* JADX WARN: Multi-variable type inference failed */
    public ManagedActivityResultLauncher(@NotNull ActivityResultLauncherHolder<I> launcher, @NotNull State<? extends ActivityResultContract<I, O>> contract) {
        t.j(launcher, "launcher");
        t.j(contract, "contract");
        this.launcher = launcher;
        this.contract = contract;
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public void b(I i10, @Nullable ActivityOptionsCompat activityOptionsCompat) {
        this.launcher.a(i10, activityOptionsCompat);
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public void c() {
        throw new UnsupportedOperationException("Registration is automatically handled by rememberLauncherForActivityResult");
    }
}
