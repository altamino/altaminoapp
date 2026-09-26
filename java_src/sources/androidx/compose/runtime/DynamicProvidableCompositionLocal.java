package androidx.compose.runtime;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class DynamicProvidableCompositionLocal<T> extends ProvidableCompositionLocal<T> {

    @NotNull
    private final SnapshotMutationPolicy<T> policy;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicProvidableCompositionLocal(@NotNull SnapshotMutationPolicy<T> policy, @NotNull e8.a<? extends T> defaultFactory) {
        super(defaultFactory);
        t.j(policy, "policy");
        t.j(defaultFactory, "defaultFactory");
        this.policy = policy;
    }

    @Override // androidx.compose.runtime.CompositionLocal
    @Composable
    @NotNull
    public State<T> b(T t5, @Nullable Composer composer, int i10) {
        composer.G(-84026900);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = SnapshotStateKt.g(t5, this.policy);
            composer.z(objH);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH;
        mutableState.setValue(t5);
        composer.Q();
        return mutableState;
    }
}
