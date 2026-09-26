package androidx.compose.runtime.snapshots;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface StateObject {

    public static final class DefaultImpls {
    }

    void a(@NotNull StateRecord stateRecord);

    @Nullable
    StateRecord e(@NotNull StateRecord stateRecord, @NotNull StateRecord stateRecord2, @NotNull StateRecord stateRecord3);

    @NotNull
    StateRecord m();
}
