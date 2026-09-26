package okio;

import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.file.OpenOption;
import java.util.Arrays;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: renamed from: okio.-DeprecatedOkio, reason: invalid class name */
/* JADX INFO: loaded from: classes11.dex */
public final class DeprecatedOkio {

    @NotNull
    public static final DeprecatedOkio INSTANCE = new DeprecatedOkio();

    @NotNull
    public final BufferedSink buffer(@NotNull Sink sink) {
        kotlin.jvm.internal.t.j(sink, "sink");
        return Okio.buffer(sink);
    }

    @NotNull
    public final Sink sink(@NotNull File file) {
        kotlin.jvm.internal.t.j(file, "file");
        return Okio__JvmOkioKt.sink$default(file, false, 1, null);
    }

    @NotNull
    public final Source source(@NotNull File file) {
        kotlin.jvm.internal.t.j(file, "file");
        return Okio.source(file);
    }

    @NotNull
    public final Sink appendingSink(@NotNull File file) {
        kotlin.jvm.internal.t.j(file, "file");
        return Okio.appendingSink(file);
    }

    @NotNull
    public final BufferedSource buffer(@NotNull Source source) {
        kotlin.jvm.internal.t.j(source, "source");
        return Okio.buffer(source);
    }

    @NotNull
    public final Sink sink(@NotNull OutputStream outputStream) {
        kotlin.jvm.internal.t.j(outputStream, "outputStream");
        return Okio.sink(outputStream);
    }

    @NotNull
    public final Source source(@NotNull InputStream inputStream) {
        kotlin.jvm.internal.t.j(inputStream, "inputStream");
        return Okio.source(inputStream);
    }

    private DeprecatedOkio() {
    }

    @NotNull
    public final Sink blackhole() {
        return Okio.blackhole();
    }

    @NotNull
    public final Sink sink(@NotNull java.nio.file.Path path, @NotNull OpenOption... options) {
        kotlin.jvm.internal.t.j(path, "path");
        kotlin.jvm.internal.t.j(options, "options");
        return Okio.sink(path, (OpenOption[]) Arrays.copyOf(options, options.length));
    }

    @NotNull
    public final Source source(@NotNull java.nio.file.Path path, @NotNull OpenOption... options) {
        kotlin.jvm.internal.t.j(path, "path");
        kotlin.jvm.internal.t.j(options, "options");
        return Okio.source(path, (OpenOption[]) Arrays.copyOf(options, options.length));
    }

    @NotNull
    public final Sink sink(@NotNull Socket socket) {
        kotlin.jvm.internal.t.j(socket, "socket");
        return Okio.sink(socket);
    }

    @NotNull
    public final Source source(@NotNull Socket socket) {
        kotlin.jvm.internal.t.j(socket, "socket");
        return Okio.source(socket);
    }
}
