package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$TextIndentSaver$2 extends v implements l<Object, TextIndent> {
    public static final SaversKt$TextIndentSaver$2 INSTANCE = new SaversKt$TextIndentSaver$2();

    SaversKt$TextIndentSaver$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final TextIndent invoke(@NotNull Object it) {
        t.j(it, "it");
        List list = (List) it;
        Object obj = list.get(0);
        TextUnit.Companion companion = TextUnit.Companion;
        Saver<TextUnit, Object> saverQ = SaversKt.q(companion);
        Boolean bool = Boolean.FALSE;
        TextUnit textUnitB = null;
        TextUnit textUnitB2 = (t.e(obj, bool) || obj == null) ? null : saverQ.b(obj);
        t.g(textUnitB2);
        long jK = textUnitB2.k();
        Object obj2 = list.get(1);
        Saver<TextUnit, Object> saverQ2 = SaversKt.q(companion);
        if (!t.e(obj2, bool) && obj2 != null) {
            textUnitB = saverQ2.b(obj2);
        }
        t.g(textUnitB);
        return new TextIndent(jK, textUnitB.k(), null);
    }
}
