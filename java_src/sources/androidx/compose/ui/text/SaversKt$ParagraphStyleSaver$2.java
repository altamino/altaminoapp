package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.TextUnit;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$ParagraphStyleSaver$2 extends v implements l<Object, ParagraphStyle> {
    public static final SaversKt$ParagraphStyleSaver$2 INSTANCE = new SaversKt$ParagraphStyleSaver$2();

    SaversKt$ParagraphStyleSaver$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ParagraphStyle invoke(@NotNull Object it) {
        t.j(it, "it");
        List list = (List) it;
        Object obj = list.get(0);
        TextAlign textAlign = obj != null ? (TextAlign) obj : null;
        Object obj2 = list.get(1);
        TextDirection textDirection = obj2 != null ? (TextDirection) obj2 : null;
        Object obj3 = list.get(2);
        Saver<TextUnit, Object> saverQ = SaversKt.q(TextUnit.Companion);
        Boolean bool = Boolean.FALSE;
        TextUnit textUnitB = (t.e(obj3, bool) || obj3 == null) ? null : saverQ.b(obj3);
        t.g(textUnitB);
        long jK = textUnitB.k();
        Object obj4 = list.get(3);
        return new ParagraphStyle(textAlign, textDirection, jK, (t.e(obj4, bool) || obj4 == null) ? null : SaversKt.p(TextIndent.Companion).b(obj4), null);
    }
}
