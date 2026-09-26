package w7;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class t extends Error {
    /* JADX WARN: Multi-variable type inference failed */
    public t() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(@NotNull String message) {
        super(message);
        kotlin.jvm.internal.t.j(message, "message");
    }

    public /* synthetic */ t(String str, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? "An operation is not implemented." : str);
    }
}
