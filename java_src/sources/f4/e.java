package f4;

import androidx.annotation.Nullable;
import java.util.Stack;

/* JADX INFO: loaded from: classes7.dex */
public class e {

    @Nullable
    public final e cause;
    public final String className;
    public final String localizedMessage;
    public final StackTraceElement[] stacktrace;

    public static e a(Throwable th, d dVar) {
        Stack stack = new Stack();
        while (th != null) {
            stack.push(th);
            th = th.getCause();
        }
        e eVar = null;
        while (!stack.isEmpty()) {
            Throwable th2 = (Throwable) stack.pop();
            eVar = new e(th2.getLocalizedMessage(), th2.getClass().getName(), dVar.a(th2.getStackTrace()), eVar);
        }
        return eVar;
    }

    private e(String str, String str2, StackTraceElement[] stackTraceElementArr, @Nullable e eVar) {
        this.localizedMessage = str;
        this.className = str2;
        this.stacktrace = stackTraceElementArr;
        this.cause = eVar;
    }
}
