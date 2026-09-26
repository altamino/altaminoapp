package androidx.compose.runtime;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final /* synthetic */ class SnapshotStateKt__SnapshotMutationPolicyKt {
    @NotNull
    public static final <T> SnapshotMutationPolicy<T> a() {
        return NeverEqualPolicy.INSTANCE;
    }

    @NotNull
    public static final <T> SnapshotMutationPolicy<T> b() {
        return ReferentialEqualityPolicy.INSTANCE;
    }

    @NotNull
    public static final <T> SnapshotMutationPolicy<T> c() {
        return StructuralEqualityPolicy.INSTANCE;
    }
}
