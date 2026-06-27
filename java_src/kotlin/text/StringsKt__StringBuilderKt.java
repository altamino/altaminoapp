package kotlin.text;

import java.io.IOException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: StringBuilder.kt */
/* loaded from: classes4.dex */
public class StringsKt__StringBuilderKt extends StringsKt__StringBuilderJVMKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void appendElement(Appendable appendElement, T t, Function1<? super T, ? extends CharSequence> function1) throws IOException {
        Intrinsics.checkParameterIsNotNull(appendElement, "$this$appendElement");
        if (function1 != null) {
            appendElement.append(function1.invoke(t));
            return;
        }
        if (t != 0 ? t instanceof CharSequence : true) {
            appendElement.append((CharSequence) t);
        } else if (t instanceof Character) {
            appendElement.append(((Character) t).charValue());
        } else {
            appendElement.append(String.valueOf(t));
        }
    }
}
