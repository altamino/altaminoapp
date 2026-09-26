package androidx.compose.material;

import androidx.compose.runtime.saveable.SaverScope;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
final class DismissState$Companion$Saver$1 extends v implements p<SaverScope, DismissState, DismissValue> {
    public static final DismissState$Companion$Saver$1 INSTANCE = new DismissState$Companion$Saver$1();

    DismissState$Companion$Saver$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final DismissValue invoke(@NotNull SaverScope Saver, @NotNull DismissState it) {
        t.j(Saver, "$this$Saver");
        t.j(it, "it");
        return it.p();
    }
}
