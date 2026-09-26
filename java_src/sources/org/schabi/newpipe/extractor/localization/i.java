package org.schabi.newpipe.extractor.localization;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Supplier;

/* JADX INFO: loaded from: classes10.dex */
public class i implements Serializable {
    public static final i DEFAULT = new i("en", "GB");
    private final String countryCode;
    private final String languageCode;

    public i(String str, String str2) {
        this.languageCode = str;
        this.countryCode = str2;
    }

    public String d() {
        String str = this.countryCode;
        return str == null ? "" : str;
    }

    public String e() {
        return this.languageCode;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.languageCode.equals(iVar.languageCode) && Objects.equals(this.countryCode, iVar.countryCode);
    }

    public i(String str) {
        this(str, null);
    }

    public static i b(Locale locale) {
        return new i(locale.getLanguage(), locale.getCountry());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ IllegalArgumentException h(String str) {
        return new IllegalArgumentException("Not a localization code: " + str);
    }

    public static List<i> i(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (final String str : strArr) {
            arrayList.add((i) c(str).orElseThrow(new Supplier() { // from class: org.schabi.newpipe.extractor.localization.g
                @Override // java.util.function.Supplier
                public final Object get() {
                    return i.h(str);
                }
            }));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public String g() {
        String str;
        String str2 = this.languageCode;
        String str3 = this.countryCode;
        if (str3 == null) {
            str = "";
        } else {
            str = "-" + str3;
        }
        return str2 + str;
    }

    public int hashCode() {
        return (this.languageCode.hashCode() * 31) + Objects.hashCode(this.countryCode);
    }

    public static Optional<i> c(String str) {
        return qa.f.a(str).map(new Function() { // from class: org.schabi.newpipe.extractor.localization.h
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return i.b((Locale) obj);
            }
        });
    }

    public static Locale f(String str) throws aa.h {
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap map = new HashMap(iSOLanguages.length);
        for (String str2 : iSOLanguages) {
            Locale locale = new Locale(str2);
            map.put(locale.getISO3Language(), locale);
        }
        if (map.containsKey(str)) {
            return (Locale) map.get(str);
        }
        throw new aa.h("Could not get Locale from this three letter language code" + str);
    }

    public String toString() {
        return "Localization[" + g() + "]";
    }
}
