package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.geometry.Offset;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$OffsetSaver$1 extends v implements p<SaverScope, Offset, Object> {
    public static final SaversKt$OffsetSaver$1 INSTANCE = new SaversKt$OffsetSaver$1();

    SaversKt$OffsetSaver$1() {
        super(2);
    }

    @Nullable
    public final Object a(@NotNull SaverScope Saver, long j6) {
        t.j(Saver, "$this$Saver");
        return Offset.j(j6, Offset.Companion.b()) ? Boolean.FALSE : kotlin.collections.v.g((Float) SaversKt.s(Float.valueOf(Offset.m(j6))), (Float) SaversKt.s(Float.valueOf(Offset.n(j6))));
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ Object invoke(SaverScope saverScope, Offset offset) {
        return a(saverScope, offset.u());
    }
}
