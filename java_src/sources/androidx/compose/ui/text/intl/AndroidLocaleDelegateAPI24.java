package androidx.compose.ui.text.intl;

import androidx.annotation.RequiresApi;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
public final class AndroidLocaleDelegateAPI24 implements PlatformLocaleDelegate {
    @Override // androidx.compose.ui.text.intl.PlatformLocaleDelegate
    @NotNull
    public PlatformLocale b(@NotNull String languageTag) {
        t.j(languageTag, "languageTag");
        java.util.Locale localeForLanguageTag = java.util.Locale.forLanguageTag(languageTag);
        t.i(localeForLanguageTag, "forLanguageTag(languageTag)");
        return new AndroidLocale(localeForLanguageTag);
    }

    @Override // androidx.compose.ui.text.intl.PlatformLocaleDelegate
    @NotNull
    public List<PlatformLocale> a() {
        android.os.LocaleList localeList = android.os.LocaleList.getDefault();
        t.i(localeList, "getDefault()");
        ArrayList arrayList = new ArrayList();
        int size = localeList.size();
        for (int i10 = 0; i10 < size; i10++) {
            java.util.Locale locale = localeList.get(i10);
            t.i(locale, "localeList[i]");
            arrayList.add(new AndroidLocale(locale));
        }
        return arrayList;
    }
}
