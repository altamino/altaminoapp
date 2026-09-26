package kotlinx.serialization;

import java.util.List;
import kotlin.collections.u;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class c extends j {

    @NotNull
    private final List<String> missingFields;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(@NotNull List<String> missingFields, @Nullable String str, @Nullable Throwable th) {
        super(str, th);
        t.j(missingFields, "missingFields");
        this.missingFields = missingFields;
    }

    @NotNull
    public final List<String> a() {
        return this.missingFields;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public c(@NotNull List<String> missingFields, @NotNull String serialName) {
        String str;
        t.j(missingFields, "missingFields");
        t.j(serialName, "serialName");
        if (missingFields.size() == 1) {
            str = "Field '" + missingFields.get(0) + "' is required for type with serial name '" + serialName + "', but it was missing";
        } else {
            str = "Fields " + missingFields + " are required for type with serial name '" + serialName + "', but they were missing";
        }
        this(missingFields, str, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(@NotNull String missingField, @NotNull String serialName) {
        this(u.e(missingField), "Field '" + missingField + "' is required for type with serial name '" + serialName + "', but it was missing", null);
        t.j(missingField, "missingField");
        t.j(serialName, "serialName");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public c(@NotNull String missingField) {
        this(u.e(missingField), "Field '" + missingField + "' is required, but it was missing", null);
        t.j(missingField, "missingField");
    }
}
