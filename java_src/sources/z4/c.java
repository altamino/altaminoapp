package z4;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.perf.util.l;
import com.google.firebase.perf.v1.h;
import java.net.URI;

/* JADX INFO: loaded from: classes10.dex */
final class c extends e {
    private static final int EMPTY_PORT = -1;
    private static final String HTTPS = "https";
    private static final String HTTP_SCHEMA = "http";
    private static final y4.a logger = y4.a.e();
    private final Context appContext;
    private final h networkMetric;

    @Nullable
    private URI g(@Nullable String str) {
        if (str == null) {
            return null;
        }
        try {
            return URI.create(str);
        } catch (IllegalArgumentException | IllegalStateException e) {
            logger.k("getResultUrl throws exception %s", e.getMessage());
            return null;
        }
    }

    private boolean m(int i10) {
        return i10 > 0;
    }

    private boolean n(long j6) {
        return j6 >= 0;
    }

    private boolean o(int i10) {
        return i10 == -1 || i10 > 0;
    }

    private boolean p(@Nullable String str) {
        if (str == null) {
            return false;
        }
        return "http".equalsIgnoreCase(str) || "https".equalsIgnoreCase(str);
    }

    private boolean q(long j6) {
        return j6 >= 0;
    }

    private boolean r(@Nullable String str) {
        return str == null;
    }

    private boolean h(@Nullable URI uri, @NonNull Context context) {
        if (uri == null) {
            return false;
        }
        return l.a(uri, context);
    }

    private boolean i(@Nullable String str) {
        if (str == null) {
            return true;
        }
        return str.trim().isEmpty();
    }

    private boolean k(@Nullable String str) {
        return (str == null || i(str) || str.length() > 255) ? false : true;
    }

    @Override // z4.e
    public boolean c() {
        if (j(this.networkMetric.I())) {
            logger.j("URL is missing:" + this.networkMetric.I());
            return false;
        }
        URI uriG = g(this.networkMetric.I());
        if (uriG == null) {
            logger.j("URL cannot be parsed");
            return false;
        }
        if (!h(uriG, this.appContext)) {
            logger.j("URL fails allowlist rule: " + uriG);
            return false;
        }
        if (!k(uriG.getHost())) {
            logger.j("URL host is null or invalid");
            return false;
        }
        if (!p(uriG.getScheme())) {
            logger.j("URL scheme is null or invalid");
            return false;
        }
        if (!r(uriG.getUserInfo())) {
            logger.j("URL user info is null");
            return false;
        }
        if (!o(uriG.getPort())) {
            logger.j("URL port is less than or equal to 0");
            return false;
        }
        if (!l(this.networkMetric.K() ? this.networkMetric.z() : null)) {
            logger.j("HTTP Method is null or invalid: " + this.networkMetric.z());
            return false;
        }
        if (this.networkMetric.L() && !m(this.networkMetric.A())) {
            logger.j("HTTP ResponseCode is a negative value:" + this.networkMetric.A());
            return false;
        }
        if (this.networkMetric.M() && !n(this.networkMetric.C())) {
            logger.j("Request Payload is a negative value:" + this.networkMetric.C());
            return false;
        }
        if (this.networkMetric.N() && !n(this.networkMetric.E())) {
            logger.j("Response Payload is a negative value:" + this.networkMetric.E());
            return false;
        }
        if (!this.networkMetric.J() || this.networkMetric.x() <= 0) {
            logger.j("Start time of the request is null, or zero, or a negative value:" + this.networkMetric.x());
            return false;
        }
        if (this.networkMetric.O() && !q(this.networkMetric.F())) {
            logger.j("Time to complete the request is a negative value:" + this.networkMetric.F());
            return false;
        }
        if (this.networkMetric.Q() && !q(this.networkMetric.H())) {
            logger.j("Time from the start of the request to the start of the response is null or a negative value:" + this.networkMetric.H());
            return false;
        }
        if (this.networkMetric.P() && this.networkMetric.G() > 0) {
            if (this.networkMetric.L()) {
                return true;
            }
            logger.j("Did not receive a HTTP Response Code");
            return false;
        }
        logger.j("Time from the start of the request to the end of the response is null, negative or zero:" + this.networkMetric.G());
        return false;
    }

    boolean l(@Nullable h.d dVar) {
        return (dVar == null || dVar == h.d.HTTP_METHOD_UNKNOWN) ? false : true;
    }

    c(h hVar, Context context) {
        this.appContext = context;
        this.networkMetric = hVar;
    }

    private boolean j(@Nullable String str) {
        return i(str);
    }
}
