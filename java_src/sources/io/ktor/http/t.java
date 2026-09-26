package io.ktor.http;

import androidx.browser.trusted.sharing.ShareTarget;
import com.android.volley.toolbox.HttpClientStack;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class t {

    @NotNull
    public static final a Companion = new a(null);

    @NotNull
    private static final List<t> DefaultMethods;

    @NotNull
    private static final t Delete;

    @NotNull
    private static final t Get;

    @NotNull
    private static final t Head;

    @NotNull
    private static final t Options;

    @NotNull
    private static final t Patch;

    @NotNull
    private static final t Post;

    @NotNull
    private static final t Put;

    @NotNull
    private final String value;

    public static final class a {
        public /* synthetic */ a(kotlin.jvm.internal.k kVar) {
            this();
        }

        private a() {
        }

        @NotNull
        public final t a() {
            return t.Get;
        }

        @NotNull
        public final t b() {
            return t.Head;
        }

        @NotNull
        public final t c() {
            return t.Post;
        }
    }

    @NotNull
    public final String d() {
        return this.value;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof t) && kotlin.jvm.internal.t.e(this.value, ((t) obj).value);
    }

    public int hashCode() {
        return this.value.hashCode();
    }

    @NotNull
    public String toString() {
        return "HttpMethod(value=" + this.value + ')';
    }

    static {
        t tVar = new t(ShareTarget.METHOD_GET);
        Get = tVar;
        t tVar2 = new t("POST");
        Post = tVar2;
        t tVar3 = new t("PUT");
        Put = tVar3;
        t tVar4 = new t(HttpClientStack.HttpPatch.METHOD_NAME);
        Patch = tVar4;
        t tVar5 = new t("DELETE");
        Delete = tVar5;
        t tVar6 = new t("HEAD");
        Head = tVar6;
        t tVar7 = new t("OPTIONS");
        Options = tVar7;
        DefaultMethods = kotlin.collections.v.p(tVar, tVar2, tVar3, tVar4, tVar5, tVar6, tVar7);
    }

    public t(@NotNull String value) {
        kotlin.jvm.internal.t.j(value, "value");
        this.value = value;
    }
}
