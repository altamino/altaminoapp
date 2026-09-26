package androidx.compose.ui.text;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
public final class MultiParagraphIntrinsicsKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final List<AnnotatedString.Range<Placeholder>> b(List<AnnotatedString.Range<Placeholder>> list, int i10, int i11) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i12 = 0; i12 < size; i12++) {
            AnnotatedString.Range<Placeholder> range = list.get(i12);
            AnnotatedString.Range<Placeholder> range2 = range;
            if (AnnotatedStringKt.g(i10, i11, range2.f(), range2.d())) {
                arrayList.add(range);
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int i13 = 0; i13 < size2; i13++) {
            AnnotatedString.Range range3 = (AnnotatedString.Range) arrayList.get(i13);
            if (i10 > range3.f() || range3.d() > i11) {
                throw new IllegalArgumentException("placeholder can not overlap with paragraph.".toString());
            }
            arrayList2.add(new AnnotatedString.Range(range3.e(), range3.f() - i10, range3.d() - i10));
        }
        return arrayList2;
    }
}
