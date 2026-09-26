package androidx.compose.ui.semantics;

import androidx.compose.ui.text.AnnotatedString;
import e8.p;
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class SemanticsProperties$Text$1 extends v implements p<List<? extends AnnotatedString>, List<? extends AnnotatedString>, List<? extends AnnotatedString>> {
    public static final SemanticsProperties$Text$1 INSTANCE = new SemanticsProperties$Text$1();

    SemanticsProperties$Text$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final List<AnnotatedString> invoke(@Nullable List<AnnotatedString> list, @NotNull List<AnnotatedString> childValue) {
        List<AnnotatedString> listW0;
        t.j(childValue, "childValue");
        if (list == null || (listW0 = d0.W0(list)) == null) {
            return childValue;
        }
        listW0.addAll(childValue);
        return listW0;
    }
}
