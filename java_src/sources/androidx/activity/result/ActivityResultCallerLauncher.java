package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContract;
import androidx.core.app.ActivityOptionsCompat;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes8.dex */
public final class ActivityResultCallerLauncher<I, O> extends ActivityResultLauncher<l0> {

    @NotNull
    private final ActivityResultContract<I, O> callerContract;
    private final I callerInput;

    @NotNull
    private final ActivityResultLauncher<I> launcher;

    @NotNull
    private final m resultContract$delegate;

    @NotNull
    public final ActivityResultContract<I, O> d() {
        return this.callerContract;
    }

    public final I e() {
        return this.callerInput;
    }

    public ActivityResultCallerLauncher(@NotNull ActivityResultLauncher<I> launcher, @NotNull ActivityResultContract<I, O> callerContract, I i10) {
        t.j(launcher, "launcher");
        t.j(callerContract, "callerContract");
        this.launcher = launcher;
        this.callerContract = callerContract;
        this.callerInput = i10;
        this.resultContract$delegate = o.a(new ActivityResultCallerLauncher$resultContract$2(this));
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public void c() {
        this.launcher.c();
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public void b(@NotNull l0 input, @Nullable ActivityOptionsCompat activityOptionsCompat) {
        t.j(input, "input");
        this.launcher.b(this.callerInput, activityOptionsCompat);
    }
}
