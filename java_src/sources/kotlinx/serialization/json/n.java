package kotlinx.serialization.json;

import kotlin.jvm.internal.q0;
import kotlinx.serialization.json.internal.w0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class n extends JsonPrimitive {

    @NotNull
    private final String content;
    private final boolean isString;

    @Override // kotlinx.serialization.json.JsonPrimitive
    @NotNull
    public String e() {
        return this.content;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !kotlin.jvm.internal.t.e(q0.b(n.class), q0.b(obj.getClass()))) {
            return false;
        }
        n nVar = (n) obj;
        return f() == nVar.f() && kotlin.jvm.internal.t.e(e(), nVar.e());
    }

    public boolean f() {
        return this.isString;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(@NotNull Object body, boolean z6) {
        super(null);
        kotlin.jvm.internal.t.j(body, "body");
        this.isString = z6;
        this.content = body.toString();
    }

    public int hashCode() {
        return (androidx.compose.foundation.c.a(f()) * 31) + e().hashCode();
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    @NotNull
    public String toString() {
        if (f()) {
            StringBuilder sb = new StringBuilder();
            w0.c(sb, e());
            String string = sb.toString();
            kotlin.jvm.internal.t.i(string, "StringBuilder().apply(builderAction).toString()");
            return string;
        }
        return e();
    }
}
