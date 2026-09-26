package okhttp3;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import kotlin.jvm.internal.t;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class Credentials {

    @NotNull
    public static final Credentials INSTANCE = new Credentials();

    @NotNull
    public static final String basic(@NotNull String username, @NotNull String password) {
        t.j(username, "username");
        t.j(password, "password");
        return basic$default(username, password, null, 4, null);
    }

    @NotNull
    public static final String basic(@NotNull String username, @NotNull String password, @NotNull Charset charset) {
        t.j(username, "username");
        t.j(password, "password");
        t.j(charset, "charset");
        return t.s("Basic ", ByteString.Companion.encodeString(username + kotlinx.serialization.json.internal.b.COLON + password, charset).base64());
    }

    public static /* synthetic */ String basic$default(String str, String str2, Charset ISO_8859_1, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            ISO_8859_1 = StandardCharsets.ISO_8859_1;
            t.i(ISO_8859_1, "ISO_8859_1");
        }
        return basic(str, str2, ISO_8859_1);
    }

    private Credentials() {
    }
}
