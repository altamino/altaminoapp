package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.Saver;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.s;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$AnnotationRangeSaver$2 extends v implements l<Object, AnnotatedString.Range<? extends Object>> {
    public static final SaversKt$AnnotationRangeSaver$2 INSTANCE = new SaversKt$AnnotationRangeSaver$2();

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AnnotationType.values().length];
            iArr[AnnotationType.Paragraph.ordinal()] = 1;
            iArr[AnnotationType.Span.ordinal()] = 2;
            iArr[AnnotationType.VerbatimTts.ordinal()] = 3;
            iArr[AnnotationType.String.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    SaversKt$AnnotationRangeSaver$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final AnnotatedString.Range<? extends Object> invoke(@NotNull Object it) {
        t.j(it, "it");
        List list = (List) it;
        Object obj = list.get(0);
        ParagraphStyle paragraphStyleB = null;
        AnnotationType annotationType = obj != null ? (AnnotationType) obj : null;
        t.g(annotationType);
        Object obj2 = list.get(2);
        Integer num = obj2 != null ? (Integer) obj2 : null;
        t.g(num);
        int iIntValue = num.intValue();
        Object obj3 = list.get(3);
        Integer num2 = obj3 != null ? (Integer) obj3 : null;
        t.g(num2);
        int iIntValue2 = num2.intValue();
        Object obj4 = list.get(4);
        String str = obj4 != null ? (String) obj4 : null;
        t.g(str);
        int i10 = WhenMappings.$EnumSwitchMapping$0[annotationType.ordinal()];
        if (i10 == 1) {
            Object obj5 = list.get(1);
            Saver<ParagraphStyle, Object> saverE = SaversKt.e();
            if (!t.e(obj5, Boolean.FALSE) && obj5 != null) {
                paragraphStyleB = saverE.b(obj5);
            }
            t.g(paragraphStyleB);
            return new AnnotatedString.Range<>(paragraphStyleB, iIntValue, iIntValue2, str);
        }
        if (i10 == 2) {
            Object obj6 = list.get(1);
            Saver<SpanStyle, Object> saverR = SaversKt.r();
            if (!t.e(obj6, Boolean.FALSE) && obj6 != null) {
                paragraphStyleB = saverR.b(obj6);
            }
            t.g(paragraphStyleB);
            return new AnnotatedString.Range<>(paragraphStyleB, iIntValue, iIntValue2, str);
        }
        if (i10 != 3) {
            if (i10 != 4) {
                throw new s();
            }
            Object obj7 = list.get(1);
            paragraphStyleB = obj7 != null ? (String) obj7 : null;
            t.g(paragraphStyleB);
            return new AnnotatedString.Range<>(paragraphStyleB, iIntValue, iIntValue2, str);
        }
        Object obj8 = list.get(1);
        Saver saver = SaversKt.VerbatimTtsAnnotationSaver;
        if (!t.e(obj8, Boolean.FALSE) && obj8 != null) {
            paragraphStyleB = (VerbatimTtsAnnotation) saver.b(obj8);
        }
        t.g(paragraphStyleB);
        return new AnnotatedString.Range<>(paragraphStyleB, iIntValue, iIntValue2, str);
    }
}
