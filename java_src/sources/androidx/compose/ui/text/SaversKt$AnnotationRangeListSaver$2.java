package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.Saver;
import e8.l;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$AnnotationRangeListSaver$2 extends v implements l<Object, List<? extends AnnotatedString.Range<? extends Object>>> {
    public static final SaversKt$AnnotationRangeListSaver$2 INSTANCE = new SaversKt$AnnotationRangeListSaver$2();

    SaversKt$AnnotationRangeListSaver$2() {
        super(1);
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final List<AnnotatedString.Range<? extends Object>> invoke(@NotNull Object it) {
        t.j(it, "it");
        List list = (List) it;
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = list.get(i10);
            Saver saver = SaversKt.AnnotationRangeSaver;
            AnnotatedString.Range range = null;
            if (!t.e(obj, Boolean.FALSE) && obj != null) {
                range = (AnnotatedString.Range) saver.b(obj);
            }
            t.g(range);
            arrayList.add(range);
        }
        return arrayList;
    }
}
