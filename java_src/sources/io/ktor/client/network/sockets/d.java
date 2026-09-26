package io.ktor.client.network.sockets;

import e8.l;
import i7.e;
import io.ktor.util.z;
import java.net.SocketTimeoutException;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class d {

    static final class a extends v implements l<Throwable, Throwable> {
        final /* synthetic */ e $request;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(e eVar) {
            super(1);
            this.$request = eVar;
        }

        @Override // e8.l
        @Nullable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Throwable invoke(@Nullable Throwable th) {
            return (th != null ? z.a(th) : null) instanceof SocketTimeoutException ? io.ktor.client.plugins.z.b(this.$request, th) : th;
        }
    }

    @NotNull
    public static final io.ktor.utils.io.c a(@NotNull e request) {
        t.j(request, "request");
        return io.ktor.utils.io.e.d(false, new a(request), 1, null);
    }
}
