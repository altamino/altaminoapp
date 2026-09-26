package androidx.room.util;

import androidx.annotation.RestrictTo;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public final class ViewInfo {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public final String name;

    @Nullable
    public final String sql;

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
        if (!(obj instanceof ViewInfo)) {
            return false;
        }
        ViewInfo viewInfo = (ViewInfo) obj;
        if (t.e(this.name, viewInfo.name)) {
            String str = this.sql;
            String str2 = viewInfo.sql;
            if (str != null) {
                if (t.e(str, str2)) {
                    return true;
                }
            } else if (str2 == null) {
                return true;
            }
        }
        return false;
    }

    public ViewInfo(@NotNull String name, @Nullable String str) {
        t.j(name, "name");
        this.name = name;
        this.sql = str;
    }

    public int hashCode() {
        int iHashCode = this.name.hashCode() * 31;
        String str = this.sql;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    @NotNull
    public String toString() {
        return "ViewInfo{name='" + this.name + "', sql='" + this.sql + "'}";
    }
}
