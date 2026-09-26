package androidx.compose.runtime;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
final class ReferentialEqualityPolicy implements SnapshotMutationPolicy<Object> {

    @NotNull
    public static final ReferentialEqualityPolicy INSTANCE = new ReferentialEqualityPolicy();

    @Override // androidx.compose.runtime.SnapshotMutationPolicy
    public boolean a(@Nullable Object obj, @Nullable Object obj2) {
        return obj == obj2;
    }

    @Override // androidx.compose.runtime.SnapshotMutationPolicy
    public /* synthetic */ Object b(Object obj, Object obj2, Object obj3) {
        return c.a(this, obj, obj2, obj3);
    }

    @NotNull
    public String toString() {
        return "ReferentialEqualityPolicy";
    }

    private ReferentialEqualityPolicy() {
    }
}
