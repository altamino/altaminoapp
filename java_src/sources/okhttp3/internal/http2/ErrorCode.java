package okhttp3.internal.http2;

import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public enum ErrorCode {
    NO_ERROR(0),
    PROTOCOL_ERROR(1),
    INTERNAL_ERROR(2),
    FLOW_CONTROL_ERROR(3),
    SETTINGS_TIMEOUT(4),
    STREAM_CLOSED(5),
    FRAME_SIZE_ERROR(6),
    REFUSED_STREAM(7),
    CANCEL(8),
    COMPRESSION_ERROR(9),
    CONNECT_ERROR(10),
    ENHANCE_YOUR_CALM(11),
    INADEQUATE_SECURITY(12),
    HTTP_1_1_REQUIRED(13);


    @NotNull
    public static final Companion Companion = new Companion(null);
    private final int httpCode;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @Nullable
        public final ErrorCode fromHttp2(int i10) {
            for (ErrorCode errorCode : ErrorCode.values()) {
                if (errorCode.getHttpCode() == i10) {
                    return errorCode;
                }
            }
            return null;
        }
    }

    public final int getHttpCode() {
        return this.httpCode;
    }

    ErrorCode(int i10) {
        this.httpCode = i10;
    }
}
