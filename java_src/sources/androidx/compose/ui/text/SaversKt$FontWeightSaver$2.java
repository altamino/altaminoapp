package androidx.compose.ui.text;

import androidx.compose.ui.text.font.FontWeight;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$FontWeightSaver$2 extends v implements l<Object, FontWeight> {
    public static final SaversKt$FontWeightSaver$2 INSTANCE = new SaversKt$FontWeightSaver$2();

    SaversKt$FontWeightSaver$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final FontWeight invoke(@NotNull Object it) {
        t.j(it, "it");
        return new FontWeight(((Integer) it).intValue());
    }
}
