package okhttp3.internal.connection;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.t;
import okhttp3.Route;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class RouteDatabase {

    @NotNull
    private final Set<Route> failedRoutes = new LinkedHashSet();

    public final synchronized void connected(@NotNull Route route) {
        t.j(route, "route");
        this.failedRoutes.remove(route);
    }

    public final synchronized void failed(@NotNull Route failedRoute) {
        t.j(failedRoute, "failedRoute");
        this.failedRoutes.add(failedRoute);
    }

    public final synchronized boolean shouldPostpone(@NotNull Route route) {
        t.j(route, "route");
        return this.failedRoutes.contains(route);
    }
}
