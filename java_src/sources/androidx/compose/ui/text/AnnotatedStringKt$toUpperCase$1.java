package androidx.compose.ui.text;

import androidx.compose.ui.text.intl.LocaleList;
import e8.q;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
final class AnnotatedStringKt$toUpperCase$1 extends v implements q<String, Integer, Integer, String> {
    final /* synthetic */ LocaleList $localeList;

    @NotNull
    public final String a(@NotNull String str, int i10, int i11) {
        t.j(str, "str");
        String strSubstring = str.substring(i10, i11);
        t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return StringKt.h(strSubstring, this.$localeList);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ String invoke(String str, Integer num, Integer num2) {
        return a(str, num.intValue(), num2.intValue());
    }
}
