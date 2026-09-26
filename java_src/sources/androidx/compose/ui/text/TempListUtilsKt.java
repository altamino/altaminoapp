package androidx.compose.ui.text;

import e8.l;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public final class TempListUtilsKt {
    /* JADX WARN: Multi-variable type inference failed */
    private static final <T> void a(Appendable appendable, T t5, l<? super T, ? extends CharSequence> lVar) throws IOException {
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

    @NotNull
    public static final <T> List<T> b(@NotNull List<? extends T> list) {
        t.j(list, "<this>");
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            T t5 = list.get(i10);
            if (t5 != null) {
                arrayList.add(t5);
            }
        }
        return arrayList;
    }

    @NotNull
    public static final <T> String d(@NotNull List<? extends T> list, @NotNull CharSequence separator, @NotNull CharSequence prefix, @NotNull CharSequence postfix, int i10, @NotNull CharSequence truncated, @Nullable l<? super T, ? extends CharSequence> lVar) {
        t.j(list, "<this>");
        t.j(separator, "separator");
        t.j(prefix, "prefix");
        t.j(postfix, "postfix");
        t.j(truncated, "truncated");
        String string = ((StringBuilder) c(list, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
        t.i(string, "fastJoinTo(StringBuilder…form)\n        .toString()");
        return string;
    }

    public static /* synthetic */ String e(List list, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, l lVar, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i11 & 4) == 0 ? charSequence3 : "";
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return d(list, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    private static final <T, A extends Appendable> A c(List<? extends T> list, A a7, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, l<? super T, ? extends CharSequence> lVar) throws IOException {
        a7.append(charSequence2);
        int size = list.size();
        int i11 = 0;
        for (int i12 = 0; i12 < size; i12++) {
            T t5 = list.get(i12);
            i11++;
            if (i11 > 1) {
                a7.append(charSequence);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            a(a7, t5, lVar);
        }
        if (i10 >= 0 && i11 > i10) {
            a7.append(charSequence4);
        }
        a7.append(charSequence3);
        return a7;
    }
}
