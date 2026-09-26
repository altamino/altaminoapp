package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$OffsetSaver$2 extends v implements l<Object, Offset> {
    public static final SaversKt$OffsetSaver$2 INSTANCE = new SaversKt$OffsetSaver$2();

    SaversKt$OffsetSaver$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Offset invoke(@NotNull Object it) {
        t.j(it, "it");
        if (t.e(it, Boolean.FALSE)) {
            return Offset.d(Offset.Companion.b());
        }
        List list = (List) it;
        Object obj = list.get(0);
        Float f = obj != null ? (Float) obj : null;
        t.g(f);
        float fFloatValue = f.floatValue();
        Object obj2 = list.get(1);
        Float f6 = obj2 != null ? (Float) obj2 : null;
        t.g(f6);
        return Offset.d(OffsetKt.a(fFloatValue, f6.floatValue()));
    }
}
