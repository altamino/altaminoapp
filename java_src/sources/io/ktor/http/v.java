package io.ktor.http;

import androidx.compose.runtime.ComposerKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.narvii.poweruser.history.ModerationHistory;
import com.narvii.util.ws.WsMessage;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class v implements Comparable<v> {

    @NotNull
    private static final List<v> allStatusCodes;

    @NotNull
    private static final Map<Integer, v> statusCodesMap;

    @NotNull
    private final String description;
    private final int value;

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final v Continue = new v(100, "Continue");

    @NotNull
    private static final v SwitchingProtocols = new v(101, "Switching Protocols");

    @NotNull
    private static final v Processing = new v(102, "Processing");

    @NotNull
    private static final v OK = new v(200, "OK");

    @NotNull
    private static final v Created = new v(201, "Created");

    @NotNull
    private static final v Accepted = new v(202, "Accepted");

    @NotNull
    private static final v NonAuthoritativeInformation = new v(203, "Non-Authoritative Information");

    @NotNull
    private static final v NoContent = new v(ComposerKt.providerMapsKey, "No Content");

    @NotNull
    private static final v ResetContent = new v(ModerationHistory.OP_ADMIN_SEND_STRIKE_TO_USER, "Reset Content");

    @NotNull
    private static final v PartialContent = new v(ComposerKt.referenceKey, "Partial Content");

    @NotNull
    private static final v MultiStatus = new v(207, "Multi-Status");

    @NotNull
    private static final v MultipleChoices = new v(300, "Multiple Choices");

    @NotNull
    private static final v MovedPermanently = new v(301, "Moved Permanently");

    @NotNull
    private static final v Found = new v(302, "Found");

    @NotNull
    private static final v SeeOther = new v(303, "See Other");

    @NotNull
    private static final v NotModified = new v(304, "Not Modified");

    @NotNull
    private static final v UseProxy = new v(305, "Use Proxy");

    @NotNull
    private static final v SwitchProxy = new v(306, "Switch Proxy");

    @NotNull
    private static final v TemporaryRedirect = new v(307, "Temporary Redirect");

    @NotNull
    private static final v PermanentRedirect = new v(308, "Permanent Redirect");

    @NotNull
    private static final v BadRequest = new v(WsMessage.LIVE_LAYER_USER_JOINED_EVENT, "Bad Request");

    @NotNull
    private static final v Unauthorized = new v(401, "Unauthorized");

    @NotNull
    private static final v PaymentRequired = new v(TypedValues.CycleType.TYPE_VISIBILITY, "Payment Required");

    @NotNull
    private static final v Forbidden = new v(TypedValues.CycleType.TYPE_ALPHA, "Forbidden");

    @NotNull
    private static final v NotFound = new v(404, "Not Found");

    @NotNull
    private static final v MethodNotAllowed = new v(405, "Method Not Allowed");

    @NotNull
    private static final v NotAcceptable = new v(406, "Not Acceptable");

    @NotNull
    private static final v ProxyAuthenticationRequired = new v(407, "Proxy Authentication Required");

    @NotNull
    private static final v RequestTimeout = new v(408, "Request Timeout");

    @NotNull
    private static final v Conflict = new v(409, "Conflict");

    @NotNull
    private static final v Gone = new v(410, "Gone");

    @NotNull
    private static final v LengthRequired = new v(411, "Length Required");

    @NotNull
    private static final v PreconditionFailed = new v(412, "Precondition Failed");

    @NotNull
    private static final v PayloadTooLarge = new v(413, "Payload Too Large");

    @NotNull
    private static final v RequestURITooLong = new v(414, "Request-URI Too Long");

    @NotNull
    private static final v UnsupportedMediaType = new v(415, "Unsupported Media Type");

    @NotNull
    private static final v RequestedRangeNotSatisfiable = new v(TypedValues.CycleType.TYPE_PATH_ROTATE, "Requested Range Not Satisfiable");

    @NotNull
    private static final v ExpectationFailed = new v(417, "Expectation Failed");

    @NotNull
    private static final v UnprocessableEntity = new v(TypedValues.CycleType.TYPE_CUSTOM_WAVE_SHAPE, "Unprocessable Entity");

    @NotNull
    private static final v Locked = new v(TypedValues.CycleType.TYPE_WAVE_PERIOD, "Locked");

    @NotNull
    private static final v FailedDependency = new v(TypedValues.CycleType.TYPE_WAVE_OFFSET, "Failed Dependency");

    @NotNull
    private static final v TooEarly = new v(TypedValues.CycleType.TYPE_WAVE_PHASE, "Too Early");

    @NotNull
    private static final v UpgradeRequired = new v(426, "Upgrade Required");

    @NotNull
    private static final v TooManyRequests = new v(429, "Too Many Requests");

    @NotNull
    private static final v RequestHeaderFieldTooLarge = new v(431, "Request Header Fields Too Large");

    @NotNull
    private static final v InternalServerError = new v(500, "Internal Server Error");

    @NotNull
    private static final v NotImplemented = new v(TypedValues.PositionType.TYPE_TRANSITION_EASING, "Not Implemented");

    @NotNull
    private static final v BadGateway = new v(TypedValues.PositionType.TYPE_DRAWPATH, "Bad Gateway");

    @NotNull
    private static final v ServiceUnavailable = new v(TypedValues.PositionType.TYPE_PERCENT_WIDTH, "Service Unavailable");

    @NotNull
    private static final v GatewayTimeout = new v(504, "Gateway Timeout");

    @NotNull
    private static final v VersionNotSupported = new v(TypedValues.PositionType.TYPE_SIZE_PERCENT, "HTTP Version Not Supported");

    @NotNull
    private static final v VariantAlsoNegotiates = new v(TypedValues.PositionType.TYPE_PERCENT_X, "Variant Also Negotiates");

    @NotNull
    private static final v InsufficientStorage = new v(TypedValues.PositionType.TYPE_PERCENT_Y, "Insufficient Storage");

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }

        @NotNull
        public final v A() {
            return v.NotModified;
        }

        @NotNull
        public final v B() {
            return v.OK;
        }

        @NotNull
        public final v C() {
            return v.PartialContent;
        }

        @NotNull
        public final v D() {
            return v.PayloadTooLarge;
        }

        @NotNull
        public final v E() {
            return v.PaymentRequired;
        }

        @NotNull
        public final v F() {
            return v.PermanentRedirect;
        }

        @NotNull
        public final v G() {
            return v.PreconditionFailed;
        }

        @NotNull
        public final v H() {
            return v.Processing;
        }

        @NotNull
        public final v I() {
            return v.ProxyAuthenticationRequired;
        }

        @NotNull
        public final v J() {
            return v.RequestHeaderFieldTooLarge;
        }

        @NotNull
        public final v K() {
            return v.RequestTimeout;
        }

        @NotNull
        public final v L() {
            return v.RequestURITooLong;
        }

        @NotNull
        public final v M() {
            return v.RequestedRangeNotSatisfiable;
        }

        @NotNull
        public final v N() {
            return v.ResetContent;
        }

        @NotNull
        public final v O() {
            return v.SeeOther;
        }

        @NotNull
        public final v P() {
            return v.ServiceUnavailable;
        }

        @NotNull
        public final v Q() {
            return v.SwitchProxy;
        }

        @NotNull
        public final v R() {
            return v.SwitchingProtocols;
        }

        @NotNull
        public final v S() {
            return v.TemporaryRedirect;
        }

        @NotNull
        public final v T() {
            return v.TooEarly;
        }

        @NotNull
        public final v U() {
            return v.TooManyRequests;
        }

        @NotNull
        public final v V() {
            return v.Unauthorized;
        }

        @NotNull
        public final v W() {
            return v.UnprocessableEntity;
        }

        @NotNull
        public final v X() {
            return v.UnsupportedMediaType;
        }

        @NotNull
        public final v Y() {
            return v.UpgradeRequired;
        }

        @NotNull
        public final v Z() {
            return v.UseProxy;
        }

        @NotNull
        public final v a(int i10) {
            v vVar = (v) v.statusCodesMap.get(Integer.valueOf(i10));
            if (vVar == null) {
                return new v(i10, "Unknown Status Code");
            }
            return vVar;
        }

        @NotNull
        public final v a0() {
            return v.VariantAlsoNegotiates;
        }

        @NotNull
        public final v b() {
            return v.Accepted;
        }

        @NotNull
        public final v b0() {
            return v.VersionNotSupported;
        }

        @NotNull
        public final v c() {
            return v.BadGateway;
        }

        @NotNull
        public final v d() {
            return v.BadRequest;
        }

        @NotNull
        public final v e() {
            return v.Conflict;
        }

        @NotNull
        public final v f() {
            return v.Continue;
        }

        @NotNull
        public final v g() {
            return v.Created;
        }

        @NotNull
        public final v h() {
            return v.ExpectationFailed;
        }

        @NotNull
        public final v i() {
            return v.FailedDependency;
        }

        @NotNull
        public final v j() {
            return v.Forbidden;
        }

        @NotNull
        public final v k() {
            return v.Found;
        }

        @NotNull
        public final v l() {
            return v.GatewayTimeout;
        }

        @NotNull
        public final v m() {
            return v.Gone;
        }

        @NotNull
        public final v n() {
            return v.InsufficientStorage;
        }

        @NotNull
        public final v o() {
            return v.InternalServerError;
        }

        @NotNull
        public final v p() {
            return v.LengthRequired;
        }

        @NotNull
        public final v q() {
            return v.Locked;
        }

        @NotNull
        public final v r() {
            return v.MethodNotAllowed;
        }

        @NotNull
        public final v s() {
            return v.MovedPermanently;
        }

        @NotNull
        public final v t() {
            return v.MultiStatus;
        }

        @NotNull
        public final v u() {
            return v.MultipleChoices;
        }

        @NotNull
        public final v v() {
            return v.NoContent;
        }

        @NotNull
        public final v w() {
            return v.NonAuthoritativeInformation;
        }

        @NotNull
        public final v x() {
            return v.NotAcceptable;
        }

        @NotNull
        public final v y() {
            return v.NotFound;
        }

        @NotNull
        public final v z() {
            return v.NotImplemented;
        }
    }

    public final int f0() {
        return this.value;
    }

    public int hashCode() {
        return this.value;
    }

    static {
        List<v> listA = w.a();
        allStatusCodes = listA;
        List<v> list = listA;
        LinkedHashMap linkedHashMap = new LinkedHashMap(j8.o.e(kotlin.collections.r0.e(kotlin.collections.w.x(list, 10)), 16));
        for (Object obj : list) {
            linkedHashMap.put(Integer.valueOf(((v) obj).value), obj);
        }
        statusCodesMap = linkedHashMap;
    }

    public v(int i10, @NotNull String description) {
        kotlin.jvm.internal.t.j(description, "description");
        this.value = i10;
        this.description = description;
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public int compareTo(@NotNull v other) {
        kotlin.jvm.internal.t.j(other, "other");
        return this.value - other.value;
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof v) && ((v) obj).value == this.value;
    }

    @NotNull
    public String toString() {
        return this.value + ' ' + this.description;
    }
}
