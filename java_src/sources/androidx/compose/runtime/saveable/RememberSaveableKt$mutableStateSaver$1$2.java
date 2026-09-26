package androidx.compose.runtime.saveable;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
final class RememberSaveableKt$mutableStateSaver$1$2 extends v implements l<MutableState<Object>, MutableState<Object>> {
    final /* synthetic */ Saver<Object, Object> $this_with;

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final MutableState<Object> invoke(@NotNull MutableState<Object> it) {
        Object objB;
        t.j(it, "it");
        if (!(it instanceof SnapshotMutableState)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (it.getValue() != null) {
            Saver<Object, Object> saver = this.$this_with;
            Object value = it.getValue();
            t.g(value);
            objB = saver.b(value);
        } else {
            objB = null;
        }
        return SnapshotStateKt.g(objB, ((SnapshotMutableState) it).g());
    }
}
