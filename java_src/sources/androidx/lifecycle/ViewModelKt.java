package androidx.lifecycle;

import kotlin.jvm.internal.t;
import kotlinx.coroutines.e1;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y2;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class ViewModelKt {

    @NotNull
    private static final String JOB_KEY = "androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY";

    @NotNull
    public static final o0 a(@NotNull ViewModel viewModel) {
        t.j(viewModel, "<this>");
        o0 o0Var = (o0) viewModel.getTag(JOB_KEY);
        if (o0Var != null) {
            return o0Var;
        }
        Object tagIfAbsent = viewModel.setTagIfAbsent(JOB_KEY, new CloseableCoroutineScope(y2.b(null, 1, null).plus(e1.c().getImmediate())));
        t.i(tagIfAbsent, "setTagIfAbsent(\n        …Main.immediate)\n        )");
        return (o0) tagIfAbsent;
    }
}
