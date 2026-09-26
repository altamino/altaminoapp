package okhttp3;

import kotlin.jvm.internal.t;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public abstract class WebSocketListener {
    public void onClosed(@NotNull WebSocket webSocket, int i10, @NotNull String reason) {
        t.j(webSocket, "webSocket");
        t.j(reason, "reason");
    }

    public void onClosing(@NotNull WebSocket webSocket, int i10, @NotNull String reason) {
        t.j(webSocket, "webSocket");
        t.j(reason, "reason");
    }

    public void onFailure(@NotNull WebSocket webSocket, @NotNull Throwable t5, @Nullable Response response) {
        t.j(webSocket, "webSocket");
        t.j(t5, "t");
    }

    public void onMessage(@NotNull WebSocket webSocket, @NotNull String text) {
        t.j(webSocket, "webSocket");
        t.j(text, "text");
    }

    public void onOpen(@NotNull WebSocket webSocket, @NotNull Response response) {
        t.j(webSocket, "webSocket");
        t.j(response, "response");
    }

    public void onMessage(@NotNull WebSocket webSocket, @NotNull ByteString bytes) {
        t.j(webSocket, "webSocket");
        t.j(bytes, "bytes");
    }
}
