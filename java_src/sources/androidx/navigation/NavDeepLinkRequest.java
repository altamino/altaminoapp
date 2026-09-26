package androidx.navigation;

import android.content.Intent;
import android.net.Uri;
import androidx.annotation.RestrictTo;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public class NavDeepLinkRequest {

    @Nullable
    private final String action;

    @Nullable
    private final String mimeType;

    @Nullable
    private final Uri uri;

    public static final class Builder {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @Nullable
        private String action;

        @Nullable
        private String mimeType;

        @Nullable
        private Uri uri;

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }
        }

        public /* synthetic */ Builder(k kVar) {
            this();
        }

        private Builder() {
        }
    }

    @RestrictTo
    public NavDeepLinkRequest(@Nullable Uri uri, @Nullable String str, @Nullable String str2) {
        this.uri = uri;
        this.action = str;
        this.mimeType = str2;
    }

    @Nullable
    public String a() {
        return this.action;
    }

    @Nullable
    public String b() {
        return this.mimeType;
    }

    @Nullable
    public Uri c() {
        return this.uri;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @RestrictTo
    public NavDeepLinkRequest(@NotNull Intent intent) {
        this(intent.getData(), intent.getAction(), intent.getType());
        t.j(intent, "intent");
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("NavDeepLinkRequest");
        sb.append("{");
        if (c() != null) {
            sb.append(" uri=");
            sb.append(String.valueOf(c()));
        }
        if (a() != null) {
            sb.append(" action=");
            sb.append(a());
        }
        if (b() != null) {
            sb.append(" mimetype=");
            sb.append(b());
        }
        sb.append(" }");
        String string = sb.toString();
        t.i(string, "sb.toString()");
        return string;
    }
}
