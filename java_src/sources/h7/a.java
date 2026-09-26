package h7;

import io.ktor.utils.io.g;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class a extends io.ktor.client.call.b {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(@NotNull io.ktor.client.a client, @NotNull g content, @NotNull io.ktor.client.call.b originCall) {
        super(client);
        t.j(client, "client");
        t.j(content, "content");
        t.j(originCall, "originCall");
        i(new c(this, originCall.e()));
        j(new d(this, content, originCall.f()));
    }
}
