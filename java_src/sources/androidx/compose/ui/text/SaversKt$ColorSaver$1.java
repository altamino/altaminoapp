package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.graphics.Color;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.f0;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$ColorSaver$1 extends v implements p<SaverScope, Color, Object> {
    public static final SaversKt$ColorSaver$1 INSTANCE = new SaversKt$ColorSaver$1();

    SaversKt$ColorSaver$1() {
        super(2);
    }

    @Nullable
    public final Object a(@NotNull SaverScope Saver, long j6) {
        t.j(Saver, "$this$Saver");
        return f0.a(j6);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ Object invoke(SaverScope saverScope, Color color) {
        return a(saverScope, color.v());
    }
}
