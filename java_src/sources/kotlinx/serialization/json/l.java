package kotlinx.serialization.json;

import kotlinx.serialization.json.internal.r0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class l extends a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(@NotNull e configuration, @NotNull kotlinx.serialization.modules.c module) {
        super(configuration, module, null);
        kotlin.jvm.internal.t.j(configuration, "configuration");
        kotlin.jvm.internal.t.j(module, "module");
        g();
    }

    private final void g() {
        if (kotlin.jvm.internal.t.e(a(), kotlinx.serialization.modules.d.a())) {
            return;
        }
        a().a(new r0(e().k(), e().c()));
    }
}
