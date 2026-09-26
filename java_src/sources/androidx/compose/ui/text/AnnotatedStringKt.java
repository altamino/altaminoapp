package androidx.compose.ui.text;

import j8.o;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class AnnotatedStringKt {

    @NotNull
    private static final AnnotatedString EmptyAnnotatedString = new AnnotatedString("", null, null, 6, null);

    public static final boolean c(int i10, int i11, int i12, int i13) {
        if (i10 > i12 || i13 > i11) {
            return false;
        }
        if (i11 == i13) {
            if ((i12 == i13) != (i10 == i11)) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final AnnotatedString d() {
        return EmptyAnnotatedString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> List<AnnotatedString.Range<T>> e(List<? extends AnnotatedString.Range<? extends T>> list, int i10, int i11) {
        if (i10 > i11) {
            throw new IllegalArgumentException(("start (" + i10 + ") should be less than or equal to end (" + i11 + ')').toString());
        }
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i12 = 0; i12 < size; i12++) {
            AnnotatedString.Range<? extends T> range = list.get(i12);
            AnnotatedString.Range<? extends T> range2 = range;
            if (g(i10, i11, range2.f(), range2.d())) {
                arrayList.add(range);
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int i13 = 0; i13 < size2; i13++) {
            AnnotatedString.Range range3 = (AnnotatedString.Range) arrayList.get(i13);
            arrayList2.add(new AnnotatedString.Range(range3.e(), Math.max(i10, range3.f()) - i10, Math.min(i11, range3.d()) - i10, range3.g()));
        }
        return arrayList2;
    }

    private static final List<AnnotatedString.Range<SpanStyle>> f(AnnotatedString annotatedString, int i10, int i11) {
        if (i10 == i11) {
            return v.m();
        }
        if (i10 == 0 && i11 >= annotatedString.g().length()) {
            return annotatedString.e();
        }
        List<AnnotatedString.Range<SpanStyle>> listE = annotatedString.e();
        ArrayList arrayList = new ArrayList(listE.size());
        int size = listE.size();
        for (int i12 = 0; i12 < size; i12++) {
            AnnotatedString.Range<SpanStyle> range = listE.get(i12);
            AnnotatedString.Range<SpanStyle> range2 = range;
            if (g(i10, i11, range2.f(), range2.d())) {
                arrayList.add(range);
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int i13 = 0; i13 < size2; i13++) {
            AnnotatedString.Range range3 = (AnnotatedString.Range) arrayList.get(i13);
            arrayList2.add(new AnnotatedString.Range(range3.e(), o.n(range3.f(), i10, i11) - i10, o.n(range3.d(), i10, i11) - i10));
        }
        return arrayList2;
    }

    @NotNull
    public static final List<AnnotatedString.Range<ParagraphStyle>> h(@NotNull AnnotatedString annotatedString, @NotNull ParagraphStyle defaultParagraphStyle) {
        t.j(annotatedString, "<this>");
        t.j(defaultParagraphStyle, "defaultParagraphStyle");
        int length = annotatedString.g().length();
        List<AnnotatedString.Range<ParagraphStyle>> listD = annotatedString.d();
        ArrayList arrayList = new ArrayList();
        int size = listD.size();
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            AnnotatedString.Range<ParagraphStyle> range = listD.get(i10);
            ParagraphStyle paragraphStyleA = range.a();
            int iB = range.b();
            int iC = range.c();
            if (iB != i11) {
                arrayList.add(new AnnotatedString.Range(defaultParagraphStyle, i11, iB));
            }
            arrayList.add(new AnnotatedString.Range(defaultParagraphStyle.i(paragraphStyleA), iB, iC));
            i10++;
            i11 = iC;
        }
        if (i11 != length) {
            arrayList.add(new AnnotatedString.Range(defaultParagraphStyle, i11, length));
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new AnnotatedString.Range(defaultParagraphStyle, 0, 0));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnnotatedString i(AnnotatedString annotatedString, int i10, int i11) {
        String strSubstring;
        if (i10 != i11) {
            strSubstring = annotatedString.g().substring(i10, i11);
            t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        } else {
            strSubstring = "";
        }
        return new AnnotatedString(strSubstring, f(annotatedString, i10, i11), null, 4, null);
    }

    public static final boolean g(int i10, int i11, int i12, int i13) {
        if (Math.max(i10, i12) >= Math.min(i11, i13) && !c(i10, i11, i12, i13) && !c(i12, i13, i10, i11)) {
            return false;
        }
        return true;
    }
}
