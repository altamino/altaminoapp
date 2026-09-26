package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverScope;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.s;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$AnnotationRangeSaver$1 extends v implements p<SaverScope, AnnotatedString.Range<? extends Object>, Object> {
    public static final SaversKt$AnnotationRangeSaver$1 INSTANCE = new SaversKt$AnnotationRangeSaver$1();

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

    SaversKt$AnnotationRangeSaver$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SaverScope Saver, @NotNull AnnotatedString.Range<? extends Object> it) {
        AnnotationType annotationType;
        Object objT;
        t.j(Saver, "$this$Saver");
        t.j(it, "it");
        Object objE = it.e();
        if (objE instanceof ParagraphStyle) {
            annotationType = AnnotationType.Paragraph;
        } else if (objE instanceof SpanStyle) {
            annotationType = AnnotationType.Span;
        } else {
            annotationType = objE instanceof VerbatimTtsAnnotation ? AnnotationType.VerbatimTts : AnnotationType.String;
        }
        int i10 = WhenMappings.$EnumSwitchMapping$0[annotationType.ordinal()];
        if (i10 == 1) {
            objT = SaversKt.t((ParagraphStyle) it.e(), SaversKt.e(), Saver);
        } else if (i10 == 2) {
            objT = SaversKt.t((SpanStyle) it.e(), SaversKt.r(), Saver);
        } else if (i10 == 3) {
            objT = SaversKt.t((VerbatimTtsAnnotation) it.e(), SaversKt.VerbatimTtsAnnotationSaver, Saver);
        } else {
            if (i10 != 4) {
                throw new s();
            }
            objT = SaversKt.s(it.e());
        }
        return kotlin.collections.v.g(SaversKt.s(annotationType), objT, SaversKt.s(Integer.valueOf(it.f())), SaversKt.s(Integer.valueOf(it.d())), SaversKt.s(it.g()));
    }
}
