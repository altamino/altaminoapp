package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import e8.p;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class SaversKt$LocaleListSaver$1 extends v implements p<SaverScope, LocaleList, Object> {
    public static final SaversKt$LocaleListSaver$1 INSTANCE = new SaversKt$LocaleListSaver$1();

    SaversKt$LocaleListSaver$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SaverScope Saver, @NotNull LocaleList it) {
        t.j(Saver, "$this$Saver");
        t.j(it, "it");
        List<Locale> listE = it.e();
        ArrayList arrayList = new ArrayList(listE.size());
        int size = listE.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(SaversKt.t(listE.get(i10), SaversKt.k(Locale.Companion), Saver));
        }
        return arrayList;
    }
}
