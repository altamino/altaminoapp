package androidx.compose.ui.text.platform.extensions;

import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
@RequiresApi
public final class LocaleListHelperMethods {

    @NotNull
    public static final LocaleListHelperMethods INSTANCE = new LocaleListHelperMethods();

    @DoNotInline
    @RequiresApi
    @NotNull
    public final Object a(@NotNull LocaleList localeList) {
        t.j(localeList, "localeList");
        ArrayList arrayList = new ArrayList(w.x(localeList, 10));
        Iterator<Locale> it = localeList.iterator();
        while (it.hasNext()) {
            arrayList.add(LocaleExtensions_androidKt.a(it.next()));
        }
        Object[] array = arrayList.toArray(new java.util.Locale[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        java.util.Locale[] localeArr = (java.util.Locale[]) array;
        return c.a(b.a((java.util.Locale[]) Arrays.copyOf(localeArr, localeArr.length)));
    }

    @DoNotInline
    @RequiresApi
    public final void b(@NotNull AndroidTextPaint textPaint, @NotNull LocaleList localeList) {
        t.j(textPaint, "textPaint");
        t.j(localeList, "localeList");
        ArrayList arrayList = new ArrayList(w.x(localeList, 10));
        Iterator<Locale> it = localeList.iterator();
        while (it.hasNext()) {
            arrayList.add(LocaleExtensions_androidKt.a(it.next()));
        }
        Object[] array = arrayList.toArray(new java.util.Locale[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        java.util.Locale[] localeArr = (java.util.Locale[]) array;
        textPaint.setTextLocales(b.a((java.util.Locale[]) Arrays.copyOf(localeArr, localeArr.length)));
    }

    private LocaleListHelperMethods() {
    }
}
