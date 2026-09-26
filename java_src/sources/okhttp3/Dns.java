package okhttp3;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import kotlin.collections.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public interface Dns {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @NotNull
    public static final Dns SYSTEM = new Companion.DnsSystem();

    @NotNull
    List<InetAddress> lookup(@NotNull String str) throws UnknownHostException;

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private static final class DnsSystem implements Dns {
            @Override // okhttp3.Dns
            @NotNull
            public List<InetAddress> lookup(@NotNull String hostname) throws UnknownHostException {
                t.j(hostname, "hostname");
                try {
                    InetAddress[] allByName = InetAddress.getAllByName(hostname);
                    t.i(allByName, "getAllByName(hostname)");
                    return p.t0(allByName);
                } catch (NullPointerException e) {
                    UnknownHostException unknownHostException = new UnknownHostException(t.s("Broken system behaviour for dns lookup of ", hostname));
                    unknownHostException.initCause(e);
                    throw unknownHostException;
                }
            }
        }

        private Companion() {
        }
    }
}
