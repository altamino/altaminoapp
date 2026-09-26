package androidx.compose.animation;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@StabilityInferred
@ExperimentalAnimationApi
public final class ContentTransform {
    public static final int $stable = 8;

    @NotNull
    private final ExitTransition initialContentExit;

    @Nullable
    private SizeTransform sizeTransform;

    @NotNull
    private final EnterTransition targetContentEnter;

    @NotNull
    private final MutableState targetContentZIndex$delegate;

    public ContentTransform(@NotNull EnterTransition targetContentEnter, @NotNull ExitTransition initialContentExit, float f, @Nullable SizeTransform sizeTransform) {
        t.j(targetContentEnter, "targetContentEnter");
        t.j(initialContentExit, "initialContentExit");
        this.targetContentEnter = targetContentEnter;
        this.initialContentExit = initialContentExit;
        this.targetContentZIndex$delegate = SnapshotStateKt__SnapshotStateKt.e(Float.valueOf(f), null, 2, null);
        this.sizeTransform = sizeTransform;
    }

    @NotNull
    public final ExitTransition a() {
        return this.initialContentExit;
    }

    @Nullable
    public final SizeTransform b() {
        return this.sizeTransform;
    }

    @NotNull
    public final EnterTransition c() {
        return this.targetContentEnter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final float d() {
        return ((Number) this.targetContentZIndex$delegate.getValue()).floatValue();
    }

    public /* synthetic */ ContentTransform(EnterTransition enterTransition, ExitTransition exitTransition, float f, SizeTransform sizeTransform, int i10, k kVar) {
        this(enterTransition, exitTransition, (i10 & 4) != 0 ? 0.0f : f, (i10 & 8) != 0 ? AnimatedContentKt.d(false, null, 3, null) : sizeTransform);
    }
}
