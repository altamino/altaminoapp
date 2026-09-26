package androidx.compose.runtime.saveable;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
final class RememberSaveableKt$mutableStateSaver$1$1 extends v implements p<SaverScope, MutableState<Object>, MutableState<Object>> {
    final /* synthetic */ Saver<Object, Object> $this_with;

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final MutableState<Object> invoke(@NotNull SaverScope Saver, @NotNull MutableState<Object> state) {
        t.j(Saver, "$this$Saver");
        t.j(state, "state");
        if (state instanceof SnapshotMutableState) {
            return SnapshotStateKt.g(this.$this_with.a(Saver, state.getValue()), ((SnapshotMutableState) state).g());
        }
        throw new IllegalArgumentException("If you use a custom MutableState implementation you have to write a custom Saver and pass it as a saver param to rememberSaveable()".toString());
    }
}
