package okhttp3.internal.http1;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import okhttp3.Headers;
import okio.BufferedSource;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class HeadersReader {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int HEADER_LIMIT = 262144;
    private long headerLimit;

    @NotNull
    private final BufferedSource source;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @NotNull
    public final BufferedSource getSource() {
        return this.source;
    }

    public HeadersReader(@NotNull BufferedSource source) {
        t.j(source, "source");
        this.source = source;
        this.headerLimit = PlaybackStateCompat.ACTION_SET_REPEAT_MODE;
    }

    @NotNull
    public final Headers readHeaders() throws IOException {
        Headers.Builder builder = new Headers.Builder();
        while (true) {
            String line = readLine();
            if (line.length() == 0) {
                return builder.build();
            }
            builder.addLenient$okhttp(line);
        }
    }

    @NotNull
    public final String readLine() throws IOException {
        String utf8LineStrict = this.source.readUtf8LineStrict(this.headerLimit);
        this.headerLimit -= (long) utf8LineStrict.length();
        return utf8LineStrict;
    }
}
