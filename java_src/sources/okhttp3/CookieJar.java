package okhttp3;

import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public interface CookieJar {

    @NotNull
    public static final Companion Companion = Companion.$$INSTANCE;

    @NotNull
    public static final CookieJar NO_COOKIES = new Companion.NoCookies();

    @NotNull
    List<Cookie> loadForRequest(@NotNull HttpUrl httpUrl);

    void saveFromResponse(@NotNull HttpUrl httpUrl, @NotNull List<Cookie> list);

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private static final class NoCookies implements CookieJar {
            @Override // okhttp3.CookieJar
            public void saveFromResponse(@NotNull HttpUrl url, @NotNull List<Cookie> cookies) {
                t.j(url, "url");
                t.j(cookies, "cookies");
            }

            @Override // okhttp3.CookieJar
            @NotNull
            public List<Cookie> loadForRequest(@NotNull HttpUrl url) {
                t.j(url, "url");
                return v.m();
            }
        }

        private Companion() {
        }
    }
}
