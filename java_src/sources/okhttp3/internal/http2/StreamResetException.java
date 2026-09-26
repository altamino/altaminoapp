package okhttp3.internal.http2;

import java.io.IOException;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class StreamResetException extends IOException {

    @NotNull
    public final ErrorCode errorCode;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StreamResetException(@NotNull ErrorCode errorCode) {
        super(t.s("stream was reset: ", errorCode));
        t.j(errorCode, "errorCode");
        this.errorCode = errorCode;
    }
}
