package androidx.compose.runtime;

import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public interface SnapshotMutationPolicy<T> {

    public static final class DefaultImpls {
    }

    boolean a(T t5, T t10);

    @Nullable
    T b(T t5, T t10, T t11);
}
