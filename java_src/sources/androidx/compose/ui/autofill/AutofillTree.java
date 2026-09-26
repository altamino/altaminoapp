package androidx.compose.ui.autofill;

import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.ExperimentalComposeUiApi;
import e8.l;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
@StabilityInferred
@ExperimentalComposeUiApi
public final class AutofillTree {
    public static final int $stable = 8;

    @NotNull
    private final Map<Integer, AutofillNode> children = new LinkedHashMap();

    @NotNull
    public final Map<Integer, AutofillNode> a() {
        return this.children;
    }

    @Nullable
    public final l0 b(int i10, @NotNull String value) {
        l<String, l0> lVarE;
        t.j(value, "value");
        AutofillNode autofillNode = this.children.get(Integer.valueOf(i10));
        if (autofillNode == null || (lVarE = autofillNode.e()) == null) {
            return null;
        }
        lVarE.invoke(value);
        return l0.INSTANCE;
    }
}
