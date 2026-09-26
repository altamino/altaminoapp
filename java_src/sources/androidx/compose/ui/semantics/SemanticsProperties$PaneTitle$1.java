package androidx.compose.ui.semantics;

import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class SemanticsProperties$PaneTitle$1 extends v implements p<String, String, String> {
    public static final SemanticsProperties$PaneTitle$1 INSTANCE = new SemanticsProperties$PaneTitle$1();

    SemanticsProperties$PaneTitle$1() {
        super(2);
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String invoke(@Nullable String str, @NotNull String str2) {
        t.j(str2, "<anonymous parameter 1>");
        throw new IllegalStateException("merge function called on unmergeable property PaneTitle.");
    }
}
