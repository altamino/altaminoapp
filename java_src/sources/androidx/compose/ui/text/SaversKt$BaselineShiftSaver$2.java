package androidx.compose.ui.text;

import androidx.compose.ui.text.style.BaselineShift;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$BaselineShiftSaver$2 extends v implements l<Object, BaselineShift> {
    public static final SaversKt$BaselineShiftSaver$2 INSTANCE = new SaversKt$BaselineShiftSaver$2();

    SaversKt$BaselineShiftSaver$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final BaselineShift invoke(@NotNull Object it) {
        t.j(it, "it");
        return BaselineShift.b(BaselineShift.c(((Float) it).floatValue()));
    }
}
