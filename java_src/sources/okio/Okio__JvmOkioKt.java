package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.security.MessageDigest;
import java.util.Arrays;
import java.util.logging.Logger;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import okio.internal.ResourceFileSystem;
import okio.internal.ZipKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final /* synthetic */ class Okio__JvmOkioKt {
    private static final Logger logger = Logger.getLogger("okio.Okio");

    @NotNull
    public static final HashingSink hashingSink(@NotNull Sink sink, @NotNull Mac mac) {
        kotlin.jvm.internal.t.j(sink, "<this>");
        kotlin.jvm.internal.t.j(mac, "mac");
        return new HashingSink(sink, mac);
    }

    @NotNull
    public static final HashingSource hashingSource(@NotNull Source source, @NotNull Mac mac) {
        kotlin.jvm.internal.t.j(source, "<this>");
        kotlin.jvm.internal.t.j(mac, "mac");
        return new HashingSource(source, mac);
    }

    @NotNull
    public static final Sink sink(@NotNull File file) throws FileNotFoundException {
        kotlin.jvm.internal.t.j(file, "<this>");
        return sink$default(file, false, 1, null);
    }

    @NotNull
    public static final Source source(@NotNull InputStream inputStream) {
        kotlin.jvm.internal.t.j(inputStream, "<this>");
        return new InputStreamSource(inputStream, new Timeout());
    }

    @NotNull
    public static final Sink appendingSink(@NotNull File file) throws FileNotFoundException {
        kotlin.jvm.internal.t.j(file, "<this>");
        return Okio.sink(new FileOutputStream(file, true));
    }

    @NotNull
    public static final FileSystem asResourceFileSystem(@NotNull ClassLoader classLoader) {
        kotlin.jvm.internal.t.j(classLoader, "<this>");
        return new ResourceFileSystem(classLoader, true);
    }

    @NotNull
    public static final CipherSink cipherSink(@NotNull Sink sink, @NotNull Cipher cipher) {
        kotlin.jvm.internal.t.j(sink, "<this>");
        kotlin.jvm.internal.t.j(cipher, "cipher");
        return new CipherSink(Okio.buffer(sink), cipher);
    }

    @NotNull
    public static final CipherSource cipherSource(@NotNull Source source, @NotNull Cipher cipher) {
        kotlin.jvm.internal.t.j(source, "<this>");
        kotlin.jvm.internal.t.j(cipher, "cipher");
        return new CipherSource(Okio.buffer(source), cipher);
    }

    @NotNull
    public static final HashingSink hashingSink(@NotNull Sink sink, @NotNull MessageDigest digest) {
        kotlin.jvm.internal.t.j(sink, "<this>");
        kotlin.jvm.internal.t.j(digest, "digest");
        return new HashingSink(sink, digest);
    }

    @NotNull
    public static final HashingSource hashingSource(@NotNull Source source, @NotNull MessageDigest digest) {
        kotlin.jvm.internal.t.j(source, "<this>");
        kotlin.jvm.internal.t.j(digest, "digest");
        return new HashingSource(source, digest);
    }

    public static final boolean isAndroidGetsocknameError(@NotNull AssertionError assertionError) {
        String message;
        kotlin.jvm.internal.t.j(assertionError, "<this>");
        return (assertionError.getCause() == null || (message = assertionError.getMessage()) == null || !kotlin.text.u.P(message, "getsockname failed", false, 2, null)) ? false : true;
    }

    @NotNull
    public static final FileSystem openZip(@NotNull FileSystem fileSystem, @NotNull Path zipPath) throws IOException {
        kotlin.jvm.internal.t.j(fileSystem, "<this>");
        kotlin.jvm.internal.t.j(zipPath, "zipPath");
        return ZipKt.openZip$default(zipPath, fileSystem, null, 4, null);
    }

    @NotNull
    public static final Sink sink(@NotNull OutputStream outputStream) {
        kotlin.jvm.internal.t.j(outputStream, "<this>");
        return new OutputStreamSink(outputStream, new Timeout());
    }

    public static /* synthetic */ Sink sink$default(File file, boolean z6, int i10, Object obj) throws FileNotFoundException {
        if ((i10 & 1) != 0) {
            z6 = false;
        }
        return Okio.sink(file, z6);
    }

    @NotNull
    public static final Source source(@NotNull Socket socket) throws IOException {
        kotlin.jvm.internal.t.j(socket, "<this>");
        SocketAsyncTimeout socketAsyncTimeout = new SocketAsyncTimeout(socket);
        InputStream inputStream = socket.getInputStream();
        kotlin.jvm.internal.t.i(inputStream, "getInputStream()");
        return socketAsyncTimeout.source(new InputStreamSource(inputStream, socketAsyncTimeout));
    }

    @NotNull
    public static final Sink sink(@NotNull Socket socket) throws IOException {
        kotlin.jvm.internal.t.j(socket, "<this>");
        SocketAsyncTimeout socketAsyncTimeout = new SocketAsyncTimeout(socket);
        OutputStream outputStream = socket.getOutputStream();
        kotlin.jvm.internal.t.i(outputStream, "getOutputStream()");
        return socketAsyncTimeout.sink(new OutputStreamSink(outputStream, socketAsyncTimeout));
    }

    @NotNull
    public static final Source source(@NotNull File file) throws FileNotFoundException {
        kotlin.jvm.internal.t.j(file, "<this>");
        return new InputStreamSource(new FileInputStream(file), Timeout.NONE);
    }

    @NotNull
    public static final Sink sink(@NotNull File file, boolean z6) throws FileNotFoundException {
        kotlin.jvm.internal.t.j(file, "<this>");
        return Okio.sink(new FileOutputStream(file, z6));
    }

    @IgnoreJRERequirement
    @NotNull
    public static final Source source(@NotNull java.nio.file.Path path, @NotNull OpenOption... options) throws IOException {
        kotlin.jvm.internal.t.j(path, "<this>");
        kotlin.jvm.internal.t.j(options, "options");
        InputStream inputStreamNewInputStream = Files.newInputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length));
        kotlin.jvm.internal.t.i(inputStreamNewInputStream, "newInputStream(this, *options)");
        return Okio.source(inputStreamNewInputStream);
    }

    @IgnoreJRERequirement
    @NotNull
    public static final Sink sink(@NotNull java.nio.file.Path path, @NotNull OpenOption... options) throws IOException {
        kotlin.jvm.internal.t.j(path, "<this>");
        kotlin.jvm.internal.t.j(options, "options");
        OutputStream outputStreamNewOutputStream = Files.newOutputStream(path, (OpenOption[]) Arrays.copyOf(options, options.length));
        kotlin.jvm.internal.t.i(outputStreamNewOutputStream, "newOutputStream(this, *options)");
        return Okio.sink(outputStreamNewOutputStream);
    }
}
