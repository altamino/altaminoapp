package androidx.compose.runtime;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class StructuralEqualityPolicy implements SnapshotMutationPolicy<Object> {

    @NotNull
    public static final StructuralEqualityPolicy INSTANCE = new StructuralEqualityPolicy();

    @Override // androidx.compose.runtime.SnapshotMutationPolicy
    public /* synthetic */ Object b(Object obj, Object obj2, Object obj3) {
        return c.a(this, obj, obj2, obj3);
    }

    @NotNull
    public String toString() {
        return "StructuralEqualityPolicy";
    }

    private StructuralEqualityPolicy() {
    }

    @Override // androidx.compose.runtime.SnapshotMutationPolicy
    public boolean a(@Nullable Object obj, @Nullable Object obj2) {
        return t.e(obj, obj2);
    }
}
