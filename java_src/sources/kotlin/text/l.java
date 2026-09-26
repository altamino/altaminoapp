package kotlin.text;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes6.dex */
public class l {
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void a(@NotNull Appendable appendable, T t5, @Nullable e8.l<? super T, ? extends CharSequence> lVar) {
        kotlin.jvm.internal.t.j(appendable, "<this>");
        if (lVar != null) {
            appendable.append(lVar.invoke(t5));
            return;
        }
        if (t5 == 0 || (t5 instanceof CharSequence)) {
            appendable.append((CharSequence) t5);
        } else if (t5 instanceof Character) {
            appendable.append(((Character) t5).charValue());
        } else {
            appendable.append(String.valueOf(t5));
        }
    }
}
