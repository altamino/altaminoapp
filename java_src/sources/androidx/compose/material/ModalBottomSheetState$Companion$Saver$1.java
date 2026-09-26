package androidx.compose.material;

import androidx.compose.runtime.saveable.SaverScope;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class ModalBottomSheetState$Companion$Saver$1 extends v implements p<SaverScope, ModalBottomSheetState, ModalBottomSheetValue> {
    public static final ModalBottomSheetState$Companion$Saver$1 INSTANCE = new ModalBottomSheetState$Companion$Saver$1();

    ModalBottomSheetState$Companion$Saver$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ModalBottomSheetValue invoke(@NotNull SaverScope Saver, @NotNull ModalBottomSheetState it) {
        t.j(Saver, "$this$Saver");
        t.j(it, "it");
        return it.p();
    }
}
