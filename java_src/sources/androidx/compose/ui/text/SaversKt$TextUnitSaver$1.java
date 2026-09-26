package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$TextUnitSaver$1 extends v implements p<SaverScope, TextUnit, Object> {
    public static final SaversKt$TextUnitSaver$1 INSTANCE = new SaversKt$TextUnitSaver$1();

    SaversKt$TextUnitSaver$1() {
        super(2);
    }

    @Nullable
    public final Object a(@NotNull SaverScope Saver, long j6) {
        t.j(Saver, "$this$Saver");
        return kotlin.collections.v.g(SaversKt.s(Float.valueOf(TextUnit.h(j6))), SaversKt.s(TextUnitType.d(TextUnit.g(j6))));
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ Object invoke(SaverScope saverScope, TextUnit textUnit) {
        return a(saverScope, textUnit.k());
    }
}
