package androidx.privacysandbox.ads.adservices.appsetid;

import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class AppSetId {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int SCOPE_APP = 1;
    public static final int SCOPE_DEVELOPER = 2;

    @NotNull
    private final String id;
    private final int scope;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppSetId)) {
            return false;
        }
        AppSetId appSetId = (AppSetId) obj;
        return t.e(this.id, appSetId.id) && this.scope == appSetId.scope;
    }

    public AppSetId(@NotNull String id, int i10) {
        t.j(id, "id");
        this.id = id;
        this.scope = i10;
        if (i10 != 1 && i10 != 2) {
            throw new IllegalArgumentException("Scope undefined.".toString());
        }
    }

    public int hashCode() {
        return (this.id.hashCode() * 31) + this.scope;
    }

    @NotNull
    public String toString() {
        return "AppSetId: id=" + this.id + ", scope=" + (this.scope == 1 ? "SCOPE_APP" : "SCOPE_DEVELOPER");
    }
}
