package kotlinx.serialization.json;

import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    @NotNull
    private static final String defaultDiscriminator = "type";

    @NotNull
    private static final String defaultIndent = "    ";

    @NotNull
    public static final a a(@NotNull a from, @NotNull e8.l<? super c, l0> builderAction) {
        kotlin.jvm.internal.t.j(from, "from");
        kotlin.jvm.internal.t.j(builderAction, "builderAction");
        c cVar = new c(from);
        builderAction.invoke(cVar);
        return new l(cVar.a(), cVar.b());
    }

    public static /* synthetic */ a b(a aVar, e8.l lVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            aVar = a.Default;
        }
        return a(aVar, lVar);
    }
}
