package okhttp3.internal.http2;

import java.io.IOException;
import java.util.List;
import kotlin.jvm.internal.t;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public interface PushObserver {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @NotNull
    public static final PushObserver CANCEL = new Companion.PushObserverCancel();

    boolean onData(int i10, @NotNull BufferedSource bufferedSource, int i11, boolean z6) throws IOException;

    boolean onHeaders(int i10, @NotNull List<Header> list, boolean z6);

    boolean onRequest(int i10, @NotNull List<Header> list);

    void onReset(int i10, @NotNull ErrorCode errorCode);

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private static final class PushObserverCancel implements PushObserver {
            @Override // okhttp3.internal.http2.PushObserver
            public boolean onHeaders(int i10, @NotNull List<Header> responseHeaders, boolean z6) {
                t.j(responseHeaders, "responseHeaders");
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onRequest(int i10, @NotNull List<Header> requestHeaders) {
                t.j(requestHeaders, "requestHeaders");
                return true;
            }

            @Override // okhttp3.internal.http2.PushObserver
            public void onReset(int i10, @NotNull ErrorCode errorCode) {
                t.j(errorCode, "errorCode");
            }

            @Override // okhttp3.internal.http2.PushObserver
            public boolean onData(int i10, @NotNull BufferedSource source, int i11, boolean z6) throws IOException {
                t.j(source, "source");
                source.skip(i11);
                return true;
            }
        }

        private Companion() {
        }
    }
}
