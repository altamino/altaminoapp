package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import kotlin.collections.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class SnapshotStateKt__SnapshotStateKt {
    @NotNull
    public static final <T> SnapshotStateList<T> a() {
        return new SnapshotStateList<>();
    }

    @NotNull
    public static final <T> SnapshotStateList<T> b(@NotNull T... elements) {
        t.j(elements, "elements");
        SnapshotStateList<T> snapshotStateList = new SnapshotStateList<>();
        snapshotStateList.addAll(p.t0(elements));
        return snapshotStateList;
    }

    @NotNull
    public static final <K, V> SnapshotStateMap<K, V> c() {
        return new SnapshotStateMap<>();
    }

    @NotNull
    public static final <T> MutableState<T> d(T t5, @NotNull SnapshotMutationPolicy<T> policy) {
        t.j(policy, "policy");
        return ActualAndroid_androidKt.a(t5, policy);
    }

    public static /* synthetic */ MutableState e(Object obj, SnapshotMutationPolicy snapshotMutationPolicy, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            snapshotMutationPolicy = SnapshotStateKt.p();
        }
        return SnapshotStateKt.g(obj, snapshotMutationPolicy);
    }

    @Composable
    @NotNull
    public static final <T> State<T> f(T t5, @Nullable Composer composer, int i10) {
        composer.G(-1058319986);
        composer.G(-492369756);
        Object objH = composer.H();
        if (objH == Composer.Companion.a()) {
            objH = e(t5, null, 2, null);
            composer.z(objH);
        }
        composer.Q();
        MutableState mutableState = (MutableState) objH;
        mutableState.setValue(t5);
        composer.Q();
        return mutableState;
    }
}
