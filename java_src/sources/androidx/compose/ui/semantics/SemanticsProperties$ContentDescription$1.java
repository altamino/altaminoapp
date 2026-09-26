package androidx.compose.ui.semantics;

import e8.p;
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class SemanticsProperties$ContentDescription$1 extends v implements p<List<? extends String>, List<? extends String>, List<? extends String>> {
    public static final SemanticsProperties$ContentDescription$1 INSTANCE = new SemanticsProperties$ContentDescription$1();

    SemanticsProperties$ContentDescription$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final List<String> invoke(@Nullable List<String> list, @NotNull List<String> childValue) {
        List<String> listW0;
        t.j(childValue, "childValue");
        if (list == null || (listW0 = d0.W0(list)) == null) {
            return childValue;
        }
        listW0.addAll(childValue);
        return listW0;
    }
}
