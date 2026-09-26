package androidx.compose.ui.text;

import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$TextUnitSaver$2 extends v implements l<Object, TextUnit> {
    public static final SaversKt$TextUnitSaver$2 INSTANCE = new SaversKt$TextUnitSaver$2();

    SaversKt$TextUnitSaver$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final TextUnit invoke(@NotNull Object it) {
        t.j(it, "it");
        List list = (List) it;
        Object obj = list.get(0);
        Float f = obj != null ? (Float) obj : null;
        t.g(f);
        float fFloatValue = f.floatValue();
        Object obj2 = list.get(1);
        TextUnitType textUnitType = obj2 != null ? (TextUnitType) obj2 : null;
        t.g(textUnitType);
        return TextUnit.b(TextUnitKt.a(fFloatValue, textUnitType.j()));
    }
}
