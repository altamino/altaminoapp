package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.StateObject;
import java.util.Set;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public interface DerivedState<T> extends State<T> {
    T h();

    @NotNull
    Set<StateObject> i();
}
