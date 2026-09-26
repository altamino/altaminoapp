package androidx.compose.ui.text.input;

import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.TextRange;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class TextFieldValue$Companion$Saver$2 extends v implements l<Object, TextFieldValue> {
    public static final TextFieldValue$Companion$Saver$2 INSTANCE = new TextFieldValue$Companion$Saver$2();

    TextFieldValue$Companion$Saver$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final TextFieldValue invoke(@NotNull Object it) {
        t.j(it, "it");
        List list = (List) it;
        Object obj = list.get(0);
        Saver<AnnotatedString, Object> saverD = SaversKt.d();
        Boolean bool = Boolean.FALSE;
        TextRange textRangeB = null;
        AnnotatedString annotatedStringB = (t.e(obj, bool) || obj == null) ? null : saverD.b(obj);
        t.g(annotatedStringB);
        Object obj2 = list.get(1);
        Saver<TextRange, Object> saverI = SaversKt.i(TextRange.Companion);
        if (!t.e(obj2, bool) && obj2 != null) {
            textRangeB = saverI.b(obj2);
        }
        t.g(textRangeB);
        return new TextFieldValue(annotatedStringB, textRangeB.r(), (TextRange) null, 4, (k) null);
    }
}
