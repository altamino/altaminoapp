package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverScope;
import e8.p;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$AnnotationRangeListSaver$1 extends v implements p<SaverScope, List<? extends AnnotatedString.Range<? extends Object>>, Object> {
    public static final SaversKt$AnnotationRangeListSaver$1 INSTANCE = new SaversKt$AnnotationRangeListSaver$1();

    SaversKt$AnnotationRangeListSaver$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SaverScope Saver, @NotNull List<? extends AnnotatedString.Range<? extends Object>> it) {
        t.j(Saver, "$this$Saver");
        t.j(it, "it");
        ArrayList arrayList = new ArrayList(it.size());
        int size = it.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(SaversKt.t(it.get(i10), SaversKt.AnnotationRangeSaver, Saver));
        }
        return arrayList;
    }
}
