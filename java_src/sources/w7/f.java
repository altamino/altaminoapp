package w7;

import java.io.PrintWriter;
import java.io.StringWriter;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes6.dex */
public class f {
    public static void a(@NotNull Throwable th, @NotNull Throwable exception) {
        kotlin.jvm.internal.t.j(th, "<this>");
        kotlin.jvm.internal.t.j(exception, "exception");
        if (th != exception) {
            a8.b.IMPLEMENTATIONS.a(th, exception);
        }
    }

    @NotNull
    public static String b(@NotNull Throwable th) {
        kotlin.jvm.internal.t.j(th, "<this>");
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.flush();
        String string = stringWriter.toString();
        kotlin.jvm.internal.t.i(string, "toString(...)");
        return string;
    }
}
